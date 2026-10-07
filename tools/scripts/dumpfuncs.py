#!/usr/bin/env python3
"""Print the asm of a run of functions: dumpfuncs.py FIRST END (END excluded)."""
import sys,re,glob
start,end=sys.argv[1],sys.argv[2]
for p in glob.glob("asm/*.s"):
    s=open(p).read()
    a=re.search(rf"^{re.escape(start)}: @",s,re.M)
    if not a: continue
    b=re.search(rf"^\t(?:non_word_aligned_)?thumb_func_start {re.escape(end)}$",s[a.start():],re.M)
    seg=s[a.start(): a.start()+b.start() if b else len(s)]
    print(p); print("\n".join(l for l in seg.splitlines() if l.strip() and "func_start" not in l)); break
