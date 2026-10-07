#!/usr/bin/env python3
"""Carve a run of functions out of an asm file into its own module.

usage: split_asm.py <asm file> <first func> <end func|-> <module name>

  asm/code.s = [before][first .. end)[end ..]
becomes
  asm/code.s            [before]
  asm/<module>.s        [first .. end)      <- decompile this into src/<module>.c
  asm/code_<addr>.s     [end ..]            (skipped if end is '-')
and ld_script.ld gets the new objects inserted in link order.
Once src/<module>.c matches, switch its ld_script line from asm/ to src/
and delete asm/<module>.s.
"""
import re, sys, os

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(ROOT)
path, first, end, module = sys.argv[1:5]
lines = open(path).read().split("\n")

def func_start(name):
    for i, l in enumerate(lines):
        if re.match(rf"^\t(?:non_word_aligned_)?(?:thumb|arm)_func_start {re.escape(name)}$", l):
            # include a preceding blank line / comment block belonging to it
            return i
    sys.exit(f"function {name} not found in {path}")

a = func_start(first)
b = func_start(end) if end != "-" else len(lines)
hdr_end = next(i for i, l in enumerate(lines) if l.strip() == ".text") + 1
header = ['\t.include "asm/macros.inc"', "", "\t.syntax unified", "\t.text", ""]

before, mid, after = lines[:a], lines[a:b], lines[b:]
mod_path = f"asm/{module}.s"
if os.path.exists(mod_path):
    sys.exit(f"{mod_path} already exists")
open(path, "w").write("\n".join(before).rstrip("\n") + "\n")
open(mod_path, "w").write("\n".join(header + mid).rstrip("\n") + "\n")
new_objs = [mod_path]
if end != "-":
    addr = re.search(r"@ 0x([0-9A-F]{8})", lines[b + 1]).group(1)
    rest_path = re.sub(r"(_[0-9A-F]{8})?\.s$", f"_{addr}.s", path)
    open(rest_path, "w").write("\n".join(header + after).rstrip("\n") + "\n")
    new_objs.append(rest_path)

# make every label defined in one piece and used in another global
pieces = [path] + new_objs
defs = {}
for p in pieces:
    for l in open(p):
        m = re.match(r"^(_[0-9A-F]{8}):", l)
        if m: defs[m.group(1)] = p
for p in pieces:
    for l in open(p):
        for ref in re.findall(r"\b(_[0-9A-F]{8})\b", l.split("@")[0]):
            q = defs.get(ref)
            if q and q != p:
                t = open(q).read()
                if f"\t.global {ref}\n" not in t:
                    open(q, "w").write(t.replace(f"\n{ref}:", f"\n\t.global {ref}\n{ref}:", 1))

ld = open("ld_script.ld").read()
obj = path[:-2] + ".o"
ins = "".join(f"\n        {o[:-2]}.o(.text);" for o in new_objs)
ld = ld.replace(f"{obj}(.text);", f"{obj}(.text);{ins}", 1)
open("ld_script.ld", "w").write(ld)
print("created", ", ".join(new_objs))
