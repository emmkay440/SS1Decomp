#!/usr/bin/env python3
"""Explain how the built ROM differs from the original.

usage: romdiff.py [-n COUNT]

Shows the first point where code moved (a function changed size, pushing
everything after it), and the functions with differing bytes.
"""
import os, sys
sys.path.insert(0, os.path.dirname(__file__))
from syms import ROOT, CODE_END, built_functions, original_address, original_addresses

os.chdir(ROOT)
limit = int(sys.argv[sys.argv.index("-n") + 1]) if "-n" in sys.argv else 20
base = open("baserom.gba", "rb").read()
built = open("shiningsoul.gba", "rb").read()

if base == built:
    print("shiningsoul.gba matches baserom.gba exactly.")
    sys.exit(0)

if len(base) != len(built):
    print(f"Size differs: built {len(built):,} bytes, original {len(base):,} bytes.")

table = original_addresses()
funcs = built_functions()

shifted = None
for addr, size, name, thumb in funcs:
    orig = original_address(name, table)
    if orig is not None and orig != addr:
        shifted = (name, addr, orig)
        break
if shifted:
    name, addr, orig = shifted
    prev = [f for f in funcs if f[0] < addr]
    culprit = prev[-1][2] if prev else "?"
    print(f"Code shifted: {name} is at 0x{addr:08X} but was at 0x{orig:08X} "
          f"({addr - orig:+d} bytes).")
    print(f"  The function before it, {culprit}, probably compiles to a different size.")
    print(f"  Run: tools/scripts/checkfunc.py {culprit}")
    print()

diffs = []
for addr, size, name, thumb in funcs:
    lo = addr - 0x08000000
    n = sum(1 for i in range(lo, min(lo + size, len(built), len(base))) if built[i] != base[i])
    if n:
        diffs.append((name, addr, size, n))
code_diff = sum(d[3] for d in diffs)
data_diff = sum(1 for i in range(CODE_END - 0x08000000, min(len(base), len(built))) if base[i] != built[i])

print(f"{len(diffs)} function(s) differ ({code_diff:,} bytes); {data_diff:,} data bytes differ.")
if shifted:
    print("  (most of these are knock-on effects of the shift: calls and pointers to moved code)")
for name, addr, size, n in diffs[:limit]:
    print(f"  0x{addr:08X} {name:40} {n:5} / {size} bytes differ")
if len(diffs) > limit:
    print(f"  ... {len(diffs) - limit} more (-n to show more)")
if diffs and not shifted:
    print(f"\nFirst one to look at: tools/scripts/checkfunc.py {diffs[0][0]}")
sys.exit(1)
