#!/usr/bin/env python3
"""Unattended decompilation loop driven by a local Ollama model.

For each candidate asm function (smallest first):
  1. carve it into its own module (tools/scripts/split_asm.py)
  2. ask the model for C, compile it, compare with the original
  3. each round asks for --samples answers at spread temperatures; the
     closest one (fewest differing lines) gets the error or diff back for
     the next round (--attempts rounds); optionally decomp-permuter then
     runs on the closest answer (--permute SECONDS)
  4. if the function and the whole ROM match: retire the asm, commit
     otherwise: roll everything back (git) and remember the failure

Safety: refuses to run on master or with a dirty tree, never pushes, only
commits when `make compare` succeeds. Create tools/autodecomp/STOP to make it
stop after the current function.

usage: tools/autodecomp/autodecomp.py [--model gemma4:12b] [--attempts 3] [--samples 4]
                                      [--permute SECONDS] [--no-examples]
                                      [--max-insns 80] [--once] [--func NAME] [--prompt NAME]
"""
import argparse, glob, json, math, os, re, subprocess, sys, time, urllib.request

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(ROOT)
HERE = "tools/autodecomp"
STATE = f"{HERE}/state.json"
STOPFILE = f"{HERE}/STOP"
LOGDIR = f"{HERE}/logs"
RULES = f"{HERE}/rules.md"

# Never touch these: hand-written asm, libraries, entry code.
SKIP_FILES = {"asm/crt0.s", "asm/code.s", "asm/hblank.s"}
SKIP_NAMES = {"RunThreads", "CreateThread", "ThreadExit", "KillThread", "WaitFrame",
              "SignalEvent", "IsAnyThreadWaitingOn", "GetThreadCount", "IsThreadInList",
              "GetCurrentThread", "AgbMain"}


def sh(cmd, timeout=600):
    r = subprocess.run(cmd, shell=True, capture_output=True, text=True, timeout=timeout)
    return r.returncode, r.stdout + r.stderr


def log(fn, text):
    os.makedirs(LOGDIR, exist_ok=True)
    with open(f"{LOGDIR}/{fn}.log", "a") as f:
        f.write(text + "\n")
    print(text if len(text) < 400 else text[:400] + " ...", flush=True)


# ---------------------------------------------------------------- state

def load_state():
    try:
        return json.load(open(STATE))
    except Exception:
        return {"failed": {}, "done": []}


def save_state(st):
    json.dump(st, open(STATE, "w"), indent=1)


# ---------------------------------------------------------------- asm scan

FUNC_RE = re.compile(r"^\t(?:non_word_aligned_)?thumb_func_start (\w+)$", re.M)


def scan_functions():
    """[(name, file, body, next_name)] for asm functions in game code."""
    out = []
    for p in sorted(glob.glob("asm/*.s")):
        if p in SKIP_FILES:
            continue
        s = open(p).read()
        starts = [(m.start(), m.group(1)) for m in FUNC_RE.finditer(s)]
        for i, (pos, name) in enumerate(starts):
            end = starts[i + 1][0] if i + 1 < len(starts) else len(s)
            nxt = starts[i + 1][1] if i + 1 < len(starts) else None
            out.append((name, p, s[pos:end], nxt))
    return out


def insn_count(body):
    return sum(1 for l in body.splitlines()
               if l.startswith("\t") and not l.startswith("\t.") and "func_start" not in l)


def eligible(name, path, body, nxt, max_insns):
    if name in SKIP_NAMES:
        return False
    if "\t.byte" in body or "\t.arm" in body or "non_word_aligned" in body:
        return False          # hidden functions / ARM / bad split: leave for a human
    if not os.path.basename(path).startswith("code_"):
        return False          # named modules are deliberate splits (near misses): skip
    n = insn_count(body)
    return 0 < n <= max_insns


def pick(st, max_insns, only=None):
    funcs = scan_functions()
    cands = []
    for name, path, body, nxt in funcs:
        if only and name != only:
            continue
        if not only and (name in st["failed"] or not eligible(name, path, body, nxt, max_insns)):
            continue
        cands.append((insn_count(body), name, path, body, nxt))
    cands.sort()
    return cands[0] if cands else None


# ---------------------------------------------------------------- context

def grep_decl(name):
    """A C prototype or extern for `name` from src/ and include/, if any."""
    pat = re.compile(rf"^[A-Za-z_][\w\s\*]*\b{re.escape(name)}\s*\([^;{{]*\)\s*[;{{]?\s*$", re.M)
    ext = re.compile(rf"^extern [^;]*\b{re.escape(name)}\b[^;]*;", re.M)
    for p in glob.glob("include/**/*.h", recursive=True) + glob.glob("src/**/*.c", recursive=True):
        s = open(p).read()
        m = ext.search(s)
        if m:
            return m.group(0).strip(), p
        m = pat.search(s)
        if m:
            line = m.group(0).strip().rstrip("{").strip()
            if not line.endswith(";"):
                line += ";"
            return line, p
    return None, None


def project_headers():
    """{header: [struct names it defines]} for include/*.h (not gba/, constants/)."""
    out = {}
    for p in sorted(glob.glob("include/*.h")):
        if p.endswith("global.h"):
            continue
        out[os.path.basename(p)] = re.findall(r"^(?:struct|union) (\w+)\s*\n?\{", open(p).read(), re.M)
    return out


def find_struct(name):
    """(definition text, path) of `struct name { ... };` in include/ or src/."""
    head = re.compile(rf"^(?:struct|union) {re.escape(name)}\s*\n?\{{", re.M)
    for p in glob.glob("include/*.h") + glob.glob("src/*.c"):
        s = open(p).read()
        m = head.search(s)
        if not m:
            continue
        depth, i = 0, m.end() - 1
        while i < len(s):
            depth += {"{": 1, "}": -1}.get(s[i], 0)
            if depth == 0:
                break
            i += 1
        end = s.find("\n", s.find(";", i))
        return s[m.start():end if end > 0 else len(s)].rstrip(), p
    return None, None


def context_for(body):
    """(declarations, headers to include, struct definitions) for the prompt."""
    calls = sorted(set(re.findall(r"\tbl (\w+)", body)))
    syms = sorted(set(re.findall(r"\.4byte ([A-Za-z_]\w*)", body)) - set(calls))
    raw = sorted(set(re.findall(r"\.4byte (0x0[2-8][0-9A-F]{6})", body)))
    lines, headers = [], []
    for n in calls + syms:
        d, p = grep_decl(n)
        if d and p.startswith("include/") and p.count("/") == 1:
            h = os.path.basename(p)
            if h not in headers and h != "global.h":
                headers.append(h)
            lines.append(f"{d}    // in {h} (already included)")
        elif d:
            lines.append(d)
        else:
            lines.append(f"// {n}: no C declaration yet; declare it yourself (guess the type)")
    for a in raw:
        v = int(a, 16)
        kind = "RAM" if v < 0x08000000 else "ROM data"
        lines.append(f"// {a} ({kind}) has no name: refer to it as gUnknown_{v:08X} "
                     f"(declare it extern with a fitting type)")

    # struct types the declarations use, and the struct types inside those
    structs, todo, seen = [], re.findall(r"\b(?:struct|union) (\w+)", "\n".join(lines)), set()
    while todo:
        n = todo.pop(0)
        if n in seen:
            continue
        seen.add(n)
        text, p = find_struct(n)
        if not text:
            continue
        if p.startswith("include/"):
            h = os.path.basename(p)
            if h not in headers and h != "global.h":
                headers.append(h)
            structs.append(f"// in {h} (already included)\n{text}")
        else:
            structs.append(f"// defined in {p}: copy it into your code if you use it\n{text}")
        if len(seen) < 6:
            todo += re.findall(r"\b(?:struct|union) (\w+)", text.split("{", 1)[1])
    return "\n".join(lines), headers, "\n\n".join(structs)


# ---------------------------------------------------------------- examples

_EXAMPLES = None


def c_functions():
    """{name: source text} for function definitions in game modules (src/*.c)."""
    head = re.compile(r"^[A-Za-z_][\w \t\*]*?\b(\w+)\(([^;{)]*)\)\s*\n\{", re.M)
    out = {}
    for p in glob.glob("src/*.c"):
        s = open(p).read()
        for m in head.finditer(s):
            depth, i = 0, m.end() - 1
            while i < len(s):
                depth += {"{": 1, "}": -1}.get(s[i], 0)
                if depth == 0:
                    break
                i += 1
            out.setdefault(m.group(1), s[m.start():i + 1])
    return out


def example_index():
    """[(features, asm, c)] for every matched function whose original asm was
    kept in tmp/ (retired modules). Keyed by address, so renames don't matter."""
    global _EXAMPLES
    if _EXAMPLES is not None:
        return _EXAMPLES
    rc, nm = sh("arm-none-eabi-nm shiningsoul.elf")
    names, ram = {}, {}
    for l in nm.splitlines():
        f = l.split()
        if len(f) == 3 and f[1] in "tT" and not f[2].startswith("_"):
            names.setdefault(int(f[0], 16) & ~1, f[2])
        elif len(f) == 3 and f[1] == "A" and f[0].startswith("03"):
            ram.setdefault(int(f[0], 16), f[2])

    def current(asm):
        """Old asm, but with today's function and RAM names."""
        asm = re.sub(r"\bsub_([0-9A-F]{8})\b",
                     lambda m: names.get(int(m.group(1), 16), m.group(0)), asm)
        return re.sub(r"(=|\.4byte )0x(0[23][0-9A-F]{6})\b",
                      lambda m: m.group(1) + ram.get(int(m.group(2), 16), "0x" + m.group(2)), asm)
    cfuncs = c_functions()
    seen, out = set(), []
    for p in sorted(glob.glob("tmp/*.s") + glob.glob("tmp/*.s.replaced") + glob.glob("tmp/autodecomp/*.s")):
        s = open(p).read()
        starts = [m.start() for m in FUNC_RE.finditer(s)]
        for i, pos in enumerate(starts):
            body = s[pos:starts[i + 1] if i + 1 < len(starts) else len(s)].rstrip()
            m = re.search(r"^\w+: @ 0x([0-9A-F]{8})", body, re.M)
            if not m:
                continue
            addr = int(m.group(1), 16)
            name = names.get(addr)
            if addr in seen or name not in cfuncs or len(body) > 2500:
                continue
            seen.add(addr)
            out.append((features(body), current(body), cfuncs[name]))
    _EXAMPLES = out
    return out


def features(body):
    insns = [l.split()[0] for l in body.splitlines()
             if l.startswith("\t") and not l.startswith("\t.") and "func_start" not in l]
    labels = re.findall(r"^(_\w+):", body, re.M)
    back = any(re.search(rf"\tb\w* {re.escape(lb)}\b", body[body.find(lb + ":"):]) for lb in labels)
    return {
        "n": max(len(insns), 1),
        "switch": "jump table" in body,
        "loop": back,
        "calls": sum(1 for x in insns if x == "bl"),
        "fields": len(re.findall(r"\[r\d+, #0x[0-9a-f]+\]", body)),
        "signed": any(x in ("ldrsh", "ldrsb", "asrs") for x in insns),
        "bytes": any(x in ("ldrb", "strb", "ldrh", "strh") for x in insns),
        "push": "push" in insns,
    }


def examples(body, k=3, budget=6000):
    """The k matched functions most like `body`, as asm -> C pairs."""
    t = features(body)

    def score(f):
        s = -2.0 * abs(math.log(f["n"] / t["n"]))
        for key in ("switch", "loop", "signed", "bytes", "push"):
            s += 1.0 if f[key] == t[key] else -0.5
        s += 1.0 if (f["calls"] > 0) == (t["calls"] > 0) else -0.5
        s += 1.0 if (f["fields"] > 0) == (t["fields"] > 0) else -0.5
        return s

    out, used = [], 0
    for f, asm, c in sorted(example_index(), key=lambda e: -score(e[0])):
        piece = f"```asm\n{asm}\n```\nmatches:\n```c\n{c}\n```"
        if used + len(piece) > budget:
            continue
        out.append(piece)
        used += len(piece)
        if len(out) == k:
            break
    return "\n\n".join(out)


def rules():
    return open(RULES).read() if os.path.exists(RULES) else ""


# ---------------------------------------------------------------- model

def chat(model, messages, temperature, timeout=900):
    req = {"model": model, "messages": messages, "stream": False,
           "options": {"temperature": temperature, "num_ctx": 16384}}
    data = json.dumps(req).encode()
    r = urllib.request.Request("http://127.0.0.1:11434/api/chat", data=data,
                               headers={"Content-Type": "application/json"})
    with urllib.request.urlopen(r, timeout=timeout) as resp:
        return json.loads(resp.read())["message"]["content"]


# Prompt lines the model tends to copy into its answer.
ECHO = re.compile(r'^\s*(#include "global\.h"|// ---- .*\(matches the ROM\) ----'
                  r'|// .*(no C declaration yet|has no name: refer to it as)'
                  r'|// in \w+\.h \(already included\)$'
                  r'|// defined in src/\S+: copy it into your code).*\n', re.M)


def extract_c(text):
    m = re.findall(r"```(?:c|C)?\n(.*?)```", text, re.S)
    code = max(m, key=len) if m else text
    code = ECHO.sub("", code)
    code = re.sub(r"[ \t]+// (from src/\S+\.c|in \w+\.h \(already included\))$", "", code, flags=re.M)
    return code.strip("\n")


# ---------------------------------------------------------------- build

def unknown_symbols(code):
    """gUnknown_XXXXXXXX names the model used: add them to the symbol files."""
    added = []
    have = open("config/ram_symbols.txt").read() + open("config/rom_symbols.txt").read()
    for a in sorted(set(re.findall(r"gUnknown_([0-9A-F]{8})\b", code))):
        if f"gUnknown_{a}" in have:
            continue
        v = int(a, 16)
        f = "config/rom_symbols.txt" if v >= 0x08000000 else "config/ram_symbols.txt"
        with open(f, "a") as fh:
            fh.write(f"{a} gUnknown_{a}      # added by autodecomp\n")
        added.append(a)
    if added:
        sh("python3 tools/scripts/apply_syms.py")
    return added


LINT = [
    (re.compile(r"\(\s*(?:const\s+)?(?:volatile\s+)?\w+\s*\*+\s*\)\s*0x0?[2-9][0-9A-Fa-f]{6}"),
     "Don't cast raw addresses to pointers. Use the named global instead: "
     "`extern <type> gUnknown_0300XXXX;` (or the name given in the declarations)."),
    (re.compile(r"\b(?:__)?asm(?:__)?\s*(?:(?:__)?volatile(?:__)?\s*)?\("), "Don't use inline assembly (asm, __asm__): write C."),
    (re.compile(r"\b(?:u32|s32|u16|s16|u8|s8)\s+r\d+\b"),
     "Don't name variables after registers (r0, r1...): use descriptive names."),
]


def lint(code):
    return [msg for rx, msg in LINT if rx.search(code)]


def check(func):
    """(status, details): status in 'compile', 'differs', 'match'."""
    rc, out = sh("make 2>&1")
    if rc != 0:
        # agbcc messages don't always say "error" (e.g. "conflicting types"),
        # so keep every line that points at a source line, plus linker errors.
        errs = [l for l in out.splitlines()
                if re.search(r"\.[ch]:\d+:", l) or "undefined reference" in l]
        return "compile", "\n".join(errs[:25]) or out[-2000:]
    rc, out = sh(f"python3 tools/scripts/fcheck.py {func}")
    if " OK " in out:
        return "match", out
    rc, diff = sh(f"python3 tools/scripts/checkfunc.py {func}")
    lines = diff.splitlines()
    return "differs", "\n".join(lines[:70])


def rollback():
    sh("git reset -q --hard HEAD")
    sh("git clean -fdq -- asm src include config")


def build_prompt(func, body, with_examples=True):
    """([system, user] messages, headers the C file gets included)."""
    decls, headers, structs = context_for(body)
    others = ", ".join(f"{h} ({', '.join('struct ' + s for s in ss)})" if ss else h
                       for h, ss in project_headers().items() if h not in headers)
    included = ", ".join(['"global.h"'] + [f'"{h}"' for h in headers])
    system = ("You decompile Game Boy Advance THUMB assembly into C that compiles "
              "byte-for-byte to the same machine code with agbcc (GCC 2.95, -O2 "
              "-fprologue-bugfix). Output ONE ```c block containing the needed "
              "extern/prototype declarations and the function.\n"
              f"These headers are included for you: {included}. global.h gives "
              "u8/u16/u32/s8/s16/s32, bool32, TRUE/FALSE, NULL, REG_* registers, "
              "CpuSet/CpuFastSet, Dma* macros. Don't redeclare what they declare and "
              "don't invent struct fields: use the struct definitions you are given. "
              f"If you need types from another project header, #include it: {others}.\n\n"
              + rules())
    user = f"Decompile `{func}`.\n\n```asm\n{body}\n```\n\n"
    user += f"Declarations of what it uses:\n```c\n{decls}\n```\n\n"
    if structs:
        user += f"Struct definitions (use these field names):\n```c\n{structs}\n```\n\n"
    ex = examples(body) if with_examples else ""
    if ex:
        user += ("Matched functions from this project that look similar (the "
                 f"original asm, then the C that compiles to it):\n\n{ex}")
    return [{"role": "system", "content": system}, {"role": "user", "content": user}], headers


def with_includes(code, headers):
    """The C file: global.h, the context headers, then the model's code. Its
    own #include lines are kept only for project headers that exist."""
    extra = []
    for m in re.finditer(r'^\s*#include\s+["<]([^">]+)[">].*$', code, re.M):
        h = m.group(1)
        if h != "global.h" and h not in headers and h not in extra and os.path.exists(f"include/{h}"):
            extra.append(h)
    code = re.sub(r'^\s*#include\s+["<][^">]+[">].*\n?', "", code, flags=re.M).strip("\n")
    inc = "".join(f'#include "{h}"\n' for h in ["global.h"] + headers + extra)
    return inc + "\n" + code + "\n"


# ---------------------------------------------------------------- permuter

PERMUTER = "tools/decomp-permuter"


def diff_score(details):
    """Number of differing lines in a checkfunc.py diff (lower is closer)."""
    return sum(1 for l in details.splitlines()
               if " | " in l or l.rstrip().endswith(" <") or " > " in l) or 1


def function_text(src, name):
    """The definition of `name` in C source `src`, or None."""
    m = re.search(rf"^[A-Za-z_][\w \t\*]*?\b{re.escape(name)}\(([^;{{)]*)\)\s*\n?\{{", src, re.M)
    if not m:
        return None
    depth, i = 0, m.end() - 1
    while i < len(src):
        depth += {"{": 1, "}": -1}.get(src[i], 0)
        if depth == 0:
            return src[m.start():i + 1]
        i += 1
    return None


def permute(func, module, seconds):
    """Run decomp-permuter on src/<module>.c (already written) against the
    original asm. Returns the permuted function's C text if it found a
    perfect score, else None."""
    if not os.path.exists(f"{PERMUTER}/permuter.py"):
        log(func, "permuter: tools/decomp-permuter missing (run tools/setup.sh)")
        return None
    d = os.path.abspath(f"tmp/autodecomp/permute/{func}")
    sh(f"rm -rf '{d}' && mkdir -p '{d}'")
    rc, out = sh(f"arm-none-eabi-as -mcpu=arm7tdmi -I include -o '{d}/target.o' asm/{module}.s")
    if rc != 0:
        log(func, f"permuter: can't assemble the target: {out[-500:]}")
        return None
    rc, out = sh(f"arm-none-eabi-cpp -nostdinc -I include -I tools/agbcc/include -iquote include "
                 f"-P src/{module}.c > '{d}/base.c'")
    if rc != 0:
        return None
    root = os.getcwd()
    with open(f"{d}/compile.sh", "w") as f:
        f.write("#!/bin/sh\n# usage: compile.sh in.c -o out.o\nset -e\n"
                f"'{root}/tools/agbcc/bin/agbcc' -mthumb-interwork -Wimplicit -Wparentheses "
                "-O2 -fhex-asm -fprologue-bugfix -o \"$3.s\" \"$1\"\n"
                "printf '\\t.text\\n\\t.align 2, 0\\n' >> \"$3.s\"\n"
                "arm-none-eabi-as -mcpu=arm7tdmi -o \"$3\" \"$3.s\"\n")
    os.chmod(f"{d}/compile.sh", 0o755)
    with open(f"{d}/settings.toml", "w") as f:
        f.write(f'func_name = "{func}"\ncompiler_type = "gcc"\n')
    jobs = max(1, (os.cpu_count() or 2) - 1)
    try:
        subprocess.run([f"{PERMUTER}/.venv/bin/python", f"{PERMUTER}/permuter.py", d,
                        "--stop-on-zero", "--better-only", "--quiet", "-j", str(jobs)],
                       capture_output=True, timeout=seconds)
    except subprocess.TimeoutExpired:
        pass
    outs = sorted(glob.glob(f"{d}/output-*"), key=lambda o: int(o.split("-")[-2]))
    if not outs:
        log(func, f"permuter: nothing better in {seconds}s")
        return None
    score = int(outs[0].split("-")[-2])
    log(func, f"permuter: best score {score} ({outs[0]})")
    if score != 0:
        return None
    return function_text(open(f"{outs[0]}/source.c").read(), func)


# ---------------------------------------------------------------- main loop

def commit(func, module, model, how=""):
    """True if the ROM matches and the function got committed."""
    rc, out = sh("make compare")
    if rc != 0:
        return False, out
    os.makedirs("tmp/autodecomp", exist_ok=True)
    sh(f"mv asm/{module}.s tmp/autodecomp/ && rm -f asm/{module}.o")
    rc, out = sh("make compare")
    if rc != 0:
        return False, out
    sh("git add -A")
    rc, out = sh(f"git commit -q -m 'autodecomp: {func}' "
                 f"-m 'Decompiled by {model}{how} via tools/autodecomp.'")
    return rc == 0, out


def feedback(status, details):
    if status == "lint":
        return ("Rejected before compiling:\n- " + details +
                "\nReply with the full corrected ```c block.")
    if status == "compile":
        return (f"That doesn't compile:\n```\n{details}\n```\nFix it. "
                "Reply with the full corrected ```c block.")
    return ("That compiles but doesn't match. Left column is your build, "
            "right is the original (| = different, < > = missing). "
            "Change the C (statement order, types, signedness, "
            "temporaries, if/else layout) so the left matches the right.\n"
            f"```\n{details}\n```\nReply with the full corrected ```c block.")


def attempt(func, path, body, nxt, args):
    """Rounds of `samples` answers each; every round refines the closest
    answer so far. Then, optionally, decomp-permuter on the closest one."""
    module = "ad_" + func.lower()
    rc, out = sh(f"python3 tools/scripts/split_asm.py {path} {func} {nxt or '-'} {module}")
    if rc != 0:
        log(func, f"split failed: {out}")
        return False
    ld = open("ld_script.ld").read()
    open("ld_script.ld", "w").write(ld.replace(f"asm/{module}.o(.text);", f"src/{module}.o(.text);"))

    base, headers = build_prompt(func, body, not args.no_examples)
    convo = list(base)
    best = None      # (score, code, reply, status, details); lower score is closer
    n = 0
    for r in range(args.attempts):
        for k in range(args.samples):
            n += 1
            temp = 0.2 + 0.6 * k / max(args.samples - 1, 1)
            try:
                reply = chat(args.model, convo, temp)
            except Exception as e:
                log(func, f"model error: {e}")
                time.sleep(30)
                continue
            code = extract_c(reply)
            problems = lint(code)
            if problems:
                status, details, score = "lint", "\n- ".join(problems), 10000
            else:
                unknown_symbols(code)
                open(f"src/{module}.c", "w").write(with_includes(code, headers))
                status, details = check(func)
                score = {"match": 0, "differs": None, "compile": 1000}[status]
                if status == "differs":
                    score = diff_score(details)
            log(func, f"--- attempt {n} (round {r + 1}, t={temp:.2f}): {status}\n{code}\n{details}")
            if status == "match":
                ok, out = commit(func, module, args.model)
                if ok:
                    return True
                status, details, score = "differs", "The function matches but the ROM doesn't:\n" + out[-1500:], 1
            if best is None or score < best[0]:
                best = (score, code, reply, status, details)
        if best is None:
            continue
        # next round: start over from the closest answer, not the last one
        convo = base + [{"role": "assistant", "content": best[2]},
                        {"role": "user", "content": feedback(best[3], best[4])}]

    if best is None:
        return False
    score, code, reply, status, details = best
    os.makedirs("tmp/autodecomp/drafts", exist_ok=True)
    with open(f"tmp/autodecomp/drafts/{func}.c", "w") as f:
        f.write(f"// closest attempt: {status}, {score} differing lines ({args.model})\n"
                + with_includes(code, headers))
    if status == "differs" and args.permute > 0:
        unknown_symbols(code)
        open(f"src/{module}.c", "w").write(with_includes(code, headers))
        found = permute(func, module, args.permute)
        if found:
            fixed = function_text(code, func)
            code = code.replace(fixed, found) if fixed else code
            open(f"src/{module}.c", "w").write(with_includes(code, headers))
            status, details = check(func)
            log(func, f"--- permuter result: {status}\n{code}\n{details}")
            if status == "match":
                ok, out = commit(func, module, args.model, " + decomp-permuter")
                return ok
    return False


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--model", default="gemma4:12b")
    ap.add_argument("--attempts", type=int, default=3, help="refinement rounds")
    ap.add_argument("--samples", type=int, default=4, help="answers per round (best one is refined)")
    ap.add_argument("--permute", type=int, default=0, metavar="SECONDS",
                    help="run decomp-permuter this long on the closest non-matching answer")
    ap.add_argument("--no-examples", action="store_true",
                    help="leave the similar-function examples out of the prompt")
    ap.add_argument("--max-insns", type=int, default=80)
    ap.add_argument("--once", action="store_true", help="do one function and stop")
    ap.add_argument("--func", help="try this function only")
    ap.add_argument("--prompt", metavar="FUNC", help="print the prompt for FUNC and exit")
    args = ap.parse_args()

    if args.prompt:
        for name, path, body, nxt in scan_functions():
            if name == args.prompt:
                messages, headers = build_prompt(name, body, not args.no_examples)
                for m in messages:
                    print(f"===== {m['role']}\n{m['content']}")
                print(f"===== file gets: global.h {' '.join(headers)}")
                return
        sys.exit(f"{args.prompt}: not an asm function")

    rc, branch = sh("git rev-parse --abbrev-ref HEAD")
    if branch.strip() in ("master", "main"):
        sys.exit("refusing to run on master: switch to a work branch")
    rc, dirty = sh("git status --porcelain")
    if dirty.strip():
        sys.exit("working tree not clean: commit or stash first")
    rc, out = sh("make compare")
    if rc != 0:
        sys.exit("ROM doesn't match before starting: fix that first")

    st = load_state()
    while True:
        if os.path.exists(STOPFILE):
            print("STOP file found, stopping")
            break
        c = pick(st, args.max_insns, args.func)
        if not c and not args.func and args.max_insns < 400:
            args.max_insns += 40
            print(f"no candidates left, raising --max-insns to {args.max_insns}")
            continue
        if not c:
            print("no candidates left (clear state.json to retry failures)")
            break
        n, func, path, body, nxt = c
        log(func, f"===== {time.ctime()} {func} ({n} insns) in {path}")
        ok = attempt(func, path, body, nxt, args)
        if ok:
            st["done"].append(func)
            log(func, f"MATCHED and committed: {func}")
        else:
            rollback()
            st["failed"][func] = st["failed"].get(func, 0) + 1
            log(func, f"gave up on {func}")
        save_state(st)
        if args.once or args.func:
            break


if __name__ == "__main__":
    main()
