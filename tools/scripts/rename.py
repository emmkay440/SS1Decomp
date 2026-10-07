#!/usr/bin/env python3
"""Rename a symbol everywhere: asm/, src/, include/, config/.

usage: rename.py <old> <new>
Also records function names in config/names.txt (keyed by address) so the
Ghidra sync script picks them up.
"""
import glob, os, re, sys

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(ROOT)
old, new = sys.argv[1:3]
if not re.fullmatch(r"[A-Za-z_]\w*", new):
    sys.exit("bad name")
word = re.compile(rf"\b{re.escape(old)}\b")
files = (glob.glob("asm/**/*.s", recursive=True) + glob.glob("src/**/*.[ch]", recursive=True)
         + glob.glob("include/**/*.h", recursive=True) + glob.glob("config/*.txt") + ["ld_script.ld"])
for p in files:
    s = open(p).read()
    if re.search(rf"\b{re.escape(new)}\b", s) and p.startswith("asm"):
        sys.exit(f"{new} already exists in {p}")
n = 0
for p in files:
    s = open(p).read()
    t = word.sub(new, s)
    if t != s:
        open(p, "w").write(t); n += 1
# sub_XXXXXXXX -> record in names.txt
m = re.fullmatch(r"sub_([0-9A-F]{8})", old)
if m:
    with open("config/names.txt", "a") as f:
        f.write(f"{m.group(1)} {new}\n")
print(f"renamed {old} -> {new} in {n} files")
