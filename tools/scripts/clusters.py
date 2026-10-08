#!/usr/bin/env python3
"""List families of remaining asm functions that are identical, or identical
except for immediates, once labels and call targets are ignored (like
coddog's cluster). Decompile one, template the rest.

usage: tools/scripts/clusters.py   (run from anywhere)
"""
import os
os.chdir(os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))
import re, glob, collections
funcs = []
for p in sorted(glob.glob("asm/*.s")):
    if "/lib/" in p: continue
    s = open(p).read()
    st = [(m.start(), m.group(1)) for m in re.finditer(r"^\t(?:non_word_aligned_)?thumb_func_start (\w+)$", s, re.M)]
    for i, (pos, n) in enumerate(st):
        b = s[pos:st[i + 1][0] if i + 1 < len(st) else len(s)]
        ins = []
        for l in b.splitlines():
            if not l.startswith("\t") or l.startswith("\t.") or "func_start" in l: continue
            l = l.split("@")[0].strip()
            l = re.sub(r"\b_[0-9A-F]{8}\b", "L", l)            # local labels
            l = re.sub(r"\bbl \w+", "bl F", l)                   # call targets
            ins.append(l)
        if len(ins) >= 8:
            funcs.append((n, p, ins))
exact = collections.defaultdict(list)
loose = collections.defaultdict(list)
for n, p, ins in funcs:
    exact["\n".join(ins)].append(n)
    # loose: also drop immediates and pool offsets
    loose["\n".join(re.sub(r"#(0x)?[0-9a-fA-F]+", "#I", i) for i in ins)].append(n)
def show(title, groups):
    gs = sorted((v for v in groups.values() if len(v) > 1), key=len, reverse=True)
    print(f"{title}: {len(gs)} groups, {sum(len(g) for g in gs)} functions")
    for g in gs:
        print(f"  {len(g):3}  {' '.join(g[:6])}{' ...' if len(g) > 6 else ''}")
show("identical (except labels/call targets)", exact)
show("same shape (immediates differ too)", loose)
