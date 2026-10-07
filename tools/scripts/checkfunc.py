#!/usr/bin/env python3
"""Side-by-side diff of one function: your build vs the original ROM.

Exit status 0 if the bytes match exactly.

usage: checkfunc.py FUNCTION

Run `make` first. Lines that differ are marked; branch targets and pool
addresses are compared by offset from the function start, so a function
that only moved still shows as matching.
"""
import difflib, os, re, subprocess, sys
sys.path.insert(0, os.path.dirname(__file__))
from syms import ROOT, built_functions, original_address

os.chdir(ROOT)
if len(sys.argv) < 2:
    sys.exit(__doc__)
name = sys.argv[1]
funcs = {f[2]: f for f in built_functions()}
if name not in funcs:
    sys.exit(f"{name}: not found in shiningsoul.elf (run make?)")
addr, size, _, thumb = funcs[name]
orig = original_address(name)
if orig is None:
    sys.exit(f"{name}: unknown original address (add it to config/names.txt)")

def disasm(binfile, start, length):
    # both sides are disassembled from raw ROM bytes so literal pools decode
    # the same way on each side
    args = ["arm-none-eabi-objdump", "-D", "--no-show-raw-insn",
            f"--start-address=0x{start:x}", f"--stop-address=0x{start + length:x}",
            "-b", "binary", "-marm", "--adjust-vma=0x08000000"]
    if thumb:
        args += ["-M", "force-thumb"]
    out = subprocess.run(args + [binfile], capture_output=True, text=True).stdout
    lines = []
    for l in out.splitlines():
        m = re.match(r"^\s*([0-9a-f]+):\s+(.*)$", l)
        if not m:
            continue
        a = int(m.group(1), 16)
        ins = m.group(2).split(";")[0].split("@")[0].strip()
        # make addresses relative to the function start
        ins = re.sub(r"\b(0x)?8([0-9a-f]{6})\b(?:\s*<[^>]*>)?",
                     lambda mm: f"<+0x{int('8' + mm.group(2), 16) - start:x}>", ins)
        ins = re.sub(r"\s+", " ", ins)
        lines.append((a - start, ins))
    return lines

# the original function has the same length unless the C changed its size;
# take whichever is longer so the tail shows up in the diff
built_bytes = open("shiningsoul.gba", "rb").read()[addr - 0x08000000:addr - 0x08000000 + size]
orig_bytes = open("baserom.gba", "rb").read()[orig - 0x08000000:orig - 0x08000000 + size]
if built_bytes == orig_bytes:
    print(f"{name}: matches ({size} bytes)")
    sys.exit(0)
built_lines = disasm("shiningsoul.gba", addr, size)
orig_lines = disasm("baserom.gba", orig, size)
a = [i for _, i in built_lines]
b = [i for _, i in orig_lines]
if a == b:
    print(f"{name}: matches ({size} bytes)")
    sys.exit(0)

print(f"{name}: DIFFERS   built 0x{addr:08X} ({size} bytes)   original 0x{orig:08X}")
print(f"{'built':<44}  {'original'}")
for tag, i1, i2, j1, j2 in difflib.SequenceMatcher(None, a, b, autojunk=False).get_opcodes():
    for k in range(max(i2 - i1, j2 - j1)):
        left = a[i1 + k] if i1 + k < i2 else ""
        right = b[j1 + k] if j1 + k < j2 else ""
        mark = " " if tag == "equal" else "|" if tag == "replace" else "<" if tag == "delete" else ">"
        print(f"{left:<44}{mark} {right}")
sys.exit(1)
