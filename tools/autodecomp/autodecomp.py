#!/usr/bin/env python3
"""Unattended decompilation loop driven by a local Ollama model.

For each candidate asm function (smallest first):
  1. carve it into its own module (tools/scripts/split_asm.py)
  2. ask the model for C, compile it, compare with the original
  3. on compile errors / mismatches, show the model the error or the
     instruction diff and let it try again (up to --attempts)
  4. if the function and the whole ROM match: retire the asm, commit
     otherwise: roll everything back (git) and remember the failure

Safety: refuses to run on master or with a dirty tree, never pushes, only
commits when `make compare` succeeds. Create tools/autodecomp/STOP to make it
stop after the current function.

usage: tools/autodecomp/autodecomp.py [--model gemma4:12b] [--attempts 6]
                                      [--max-insns 80] [--once] [--func NAME]
"""
import argparse, glob, json, os, re, subprocess, sys, time, urllib.request

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


def context_for(body):
    calls = sorted(set(re.findall(r"\tbl (\w+)", body)))
    syms = sorted(set(re.findall(r"\.4byte ([A-Za-z_]\w*)", body)) - set(calls))
    raw = sorted(set(re.findall(r"\.4byte (0x0[2-8][0-9A-F]{6})", body)))
    lines = []
    for n in calls + syms:
        d, p = grep_decl(n)
        if d:
            lines.append(f"{d}    // from {p}")
        else:
            lines.append(f"// {n}: no C declaration yet; declare it yourself (guess the type)")
    for a in raw:
        v = int(a, 16)
        kind = "RAM" if v < 0x08000000 else "ROM data"
        lines.append(f"// {a} ({kind}) has no name: refer to it as gUnknown_{v:08X} "
                     f"(declare it extern with a fitting type)")
    return "\n".join(lines)


def examples():
    """Two short matched C files as style/idiom examples."""
    picks = ["src/game_flags.c", "src/fade.c"]
    out = []
    for p in picks:
        if os.path.exists(p):
            s = open(p).read()
            out.append(f"// ---- {p} (matches the ROM) ----\n" + s[:2500])
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


def extract_c(text):
    m = re.findall(r"```(?:c|C)?\n(.*?)```", text, re.S)
    if m:
        return max(m, key=len)
    return text


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
    (re.compile(r"\basm\s*\("), "Don't use inline assembly."),
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


# ---------------------------------------------------------------- main loop

def attempt(func, path, body, nxt, model, attempts):
    module = "ad_" + func.lower()
    rc, out = sh(f"python3 tools/scripts/split_asm.py {path} {func} {nxt or '-'} {module}")
    if rc != 0:
        log(func, f"split failed: {out}")
        return False
    ld = open("ld_script.ld").read()
    open("ld_script.ld", "w").write(ld.replace(f"asm/{module}.o(.text);", f"src/{module}.o(.text);"))

    system = ("You decompile Game Boy Advance THUMB assembly into C that compiles "
              "byte-for-byte to the same machine code with agbcc (GCC 2.95, -O2 "
              "-fprologue-bugfix). Output ONE ```c block containing the needed "
              "extern/prototype declarations and the function. No #include lines "
              "(\"global.h\" is included for you: u8/u16/u32/s8/s16/s32, bool32, "
              "TRUE/FALSE, NULL, REG_* registers, CpuSet/CpuFastSet, Dma* macros).\n\n"
              + rules())
    user = (f"Decompile `{func}`.\n\n```asm\n{body}\n```\n\n"
            f"Known declarations of what it uses:\n```c\n{context_for(body)}\n```\n\n"
            f"Example of matched code in this project:\n```c\n{examples()}\n```")
    messages = [{"role": "system", "content": system}, {"role": "user", "content": user}]

    for i in range(attempts):
        temp = 0.2 + 0.15 * i
        try:
            reply = chat(model, messages, temp)
        except Exception as e:
            log(func, f"model error: {e}")
            time.sleep(30)
            continue
        code = extract_c(reply)
        problems = lint(code)
        if problems:
            log(func, f"--- attempt {i + 1}: lint\n{code}\n" + "\n".join(problems))
            messages.append({"role": "assistant", "content": reply})
            messages.append({"role": "user", "content":
                             "Rejected before compiling:\n- " + "\n- ".join(problems) +
                             "\nReply with the full corrected ```c block."})
            continue
        unknown_symbols(code)
        open(f"src/{module}.c", "w").write('#include "global.h"\n\n' + code + "\n")
        status, details = check(func)
        log(func, f"--- attempt {i + 1}: {status}\n{code}\n{details}")
        if status == "match":
            rc, out = sh("make compare")
            if rc == 0:
                os.makedirs("tmp/autodecomp", exist_ok=True)
                sh(f"mv asm/{module}.s tmp/autodecomp/ && rm -f asm/{module}.o")
                rc, out = sh("make compare")
                if rc == 0:
                    sh("git add -A")
                    rc, out = sh(f"git commit -q -m 'autodecomp: {func}' "
                                 f"-m 'Decompiled by {model} via tools/autodecomp.'")
                    return rc == 0
            details = "The function matches but the ROM doesn't:\n" + out[-1500:]
        messages.append({"role": "assistant", "content": reply})
        if status == "compile":
            messages.append({"role": "user", "content":
                             f"That doesn't compile:\n```\n{details}\n```\nFix it. "
                             "Reply with the full corrected ```c block."})
        else:
            messages.append({"role": "user", "content":
                             "That compiles but doesn't match. Left column is your build, "
                             "right is the original (| = different, < > = missing). "
                             "Change the C (statement order, types, signedness, "
                             "temporaries, if/else layout) so the left matches the right.\n"
                             f"```\n{details}\n```\nReply with the full corrected ```c block."})
        # keep the conversation from outgrowing the context
        if len(messages) > 8:
            messages = messages[:2] + messages[-4:]
    return False


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--model", default="gemma4:12b")
    ap.add_argument("--attempts", type=int, default=6)
    ap.add_argument("--max-insns", type=int, default=80)
    ap.add_argument("--once", action="store_true", help="do one function and stop")
    ap.add_argument("--func", help="try this function only")
    args = ap.parse_args()

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
        ok = attempt(func, path, body, nxt, args.model, args.attempts)
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
