#!/usr/bin/env python3
"""Regenerate asm/*.s from baserom.gba using gbadisasm.

Bootstrap tool: it overwrites the generated asm files, so only use it before
hand-edits/decompiled C exist for a file (or on a clean checkout to compare).
Inputs: config/functions.cfg, config/names.txt, config/ram_symbols.txt
"""
import glob, re, subprocess, sys, os

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(ROOT)
if "--force" not in sys.argv and (glob.glob("asm/code_*.s") or glob.glob("src/*.c")):
    sys.exit("asm/ has been split / decompiled already; this would overwrite it. Use --force on a scratch copy.")
CODE_END = 0x0805289C

# Output files: (start address, path, description)
SPLITS = [
    (0x08000000, "asm/crt0.s",           "Entry point, cartridge header, IntrMain"),
    (0x0800023C, "asm/code.s",           "Game code (split further as it gets decompiled)"),
    (0x0804FAAC, "asm/lib/m4a_1.s",      "m4a (MusicPlayer2000) sound engine, assembly part"),
    (0x08050640, "asm/lib/m4a.s",        "m4a (MusicPlayer2000) sound engine, C part"),
    (0x08051B90, "asm/lib/libagbsyscall.s", "BIOS call wrappers"),
    (0x08051BD4, "asm/lib/agb_flash.s",  "Flash save library (FLASH512_V131)"),
    (0x08052544, "asm/lib/libgcc.s",     "libgcc: _call_via_rX, division"),
    (0x08052820, "asm/lib/libc.s",       "newlib: bzero, memcpy"),
]

def load_table(path):
    t = {}
    for line in open(path):
        f = line.split("#")[0].split()
        if len(f) >= 2:
            t[int(f[0], 16)] = f[1]
    return t

names = load_table("config/names.txt")

# Named config for gbadisasm
cfg_lines = []
for line in open("config/functions.cfg"):
    f = line.split()
    if not f or f[0].startswith("#"):
        continue
    a = int(f[1], 16)
    cfg_lines.append(f"{f[0]} 0x{a:08X} {names.get(a, '')}".rstrip())
os.makedirs("build", exist_ok=True)
open("build/functions_named.cfg", "w").write("\n".join(cfg_lines) + "\n")
rom = open("baserom.gba", "rb").read()
open("build/code.bin", "wb").write(rom[:CODE_END - 0x08000000])

out = subprocess.run(["tools/gbadisasm/gbadisasm", "build/code.bin", "-c", "build/functions_named.cfg"],
                     capture_output=True, text=True)
if out.returncode != 0:
    sys.exit("gbadisasm failed:\n" + out.stderr)
lines = out.stdout.split("\n")

# --- post-processing ---
text = []
i = 0
while i < len(lines):
    l = lines[i]
    if l.startswith("sub_08000000:"):
        text += ["_start: @ 0x08000000", "\tb _080000C0", "",
                 "@ Cartridge header (logo, title, game code, checksum) comes from baserom.gba.",
                 "RomHeader:", '\t.incbin "baserom.gba", 0x4, 0xBC', ""]
        i += 1
        while not lines[i].startswith("_080000C0:"):
            i += 1
        continue
    text.append(l.replace("sub_08000000", "_start"))
    i += 1

# --- split into files at function starts ---
func_re = re.compile(r"^\t(?:non_word_aligned_)?(?:thumb|arm)_func_start \S+")
addr_re = re.compile(r"^\S+: @ 0x([0-9A-F]{8})")
chunks = {p: [] for _, p, _ in SPLITS}
cur = SPLITS[0][1]
for k, l in enumerate(text):
    if func_re.match(l) and k + 1 < len(text):
        m = addr_re.match(text[k + 1])
        if m:
            a = int(m.group(1), 16)
            for s, p, _ in SPLITS:
                if a >= s:
                    cur = p
    chunks[cur].append(l)

# trailing 2-byte zero pad after the last function (the assembler would pad with a nop)
chunks["asm/lib/libc.s"].append("\t.2byte 0 @ padding")

# local labels referenced from another file must be global
defined = {}
for p, ls in chunks.items():
    for l in ls:
        m = re.match(r"^(_[0-9A-F]{8}):", l)
        if m:
            defined[m.group(1)] = p
for p, ls in chunks.items():
    for l in ls:
        for ref in re.findall(r"\b(_[0-9A-F]{8})\b", l.split("@")[0]):
            q = defined.get(ref)
            if q and q != p:
                k = next(j for j, x in enumerate(chunks[q]) if x.startswith(ref + ":"))
                if chunks[q][k - 1] != f"\t.global {ref}":
                    chunks[q].insert(k, f"\t.global {ref}")

for s, p, desc in SPLITS:
    os.makedirs(os.path.dirname(p), exist_ok=True)
    body = "\n".join(chunks[p]).strip("\n")
    hdr = f'@ {desc}\n\n\t.include "asm/macros.inc"\n\n\t.syntax unified\n\t.text\n\n'
    open(p, "w").write(hdr + body + "\n")
    print(f"wrote {p} ({len(chunks[p])} lines)")

subprocess.run([sys.executable, "tools/scripts/apply_syms.py"], check=True)
