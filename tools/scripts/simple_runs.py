#!/usr/bin/env python3
"""List runs of adjacent small functions (no loops/jump tables/.byte) in asm/:
good candidates for a new C module."""
import re,glob
funcs=[]  # (addr,name,file,ninsn,has_loop,has_table,has_byte)
for p in sorted(glob.glob("asm/*.s")):
    if "/lib/" in p: continue
    cur=None; body=[]
    def flush():
        if cur:
            labels={}
            insns=[l for l in body if l.startswith("\t") and not l.startswith("\t.")]
            addr=cur[1]
            loop=False
            for l in body:
                m=re.search(r"\tb\w*\s+(_0[0-9A-F]{7})",l)
                if m and int(m.group(1)[1:],16) <= addr+0: pass
            # backward branch detection: branch target address < current label address
            pos=addr; last=addr
            for l in body:
                lm=re.match(r"(_[0-9A-F]{8}):",l)
                if lm: last=int(lm.group(1)[1:],16)
                m=re.search(r"\tb(?:eq|ne|cs|cc|mi|pl|vs|vc|hi|ls|ge|lt|gt|le|hs|lo)?\s+(_[0-9A-F]{8})\b",l)
                if m and int(m.group(1)[1:],16) <= last: loop=True
            table=any("jump table" in l for l in body)
            byte=any("\t.byte" in l for l in body)
            funcs.append((addr,cur[0],p,len(insns),loop,table,byte))
    for l in open(p):
        l=l.rstrip("\n")
        m=re.match(r"(\w+): @ 0x([0-9A-F]{8})",l)
        if m:
            flush(); cur=(m.group(1),int(m.group(2),16)); body=[]; continue
        if cur: body.append(l)
    flush()
funcs.sort()
runs=[];cur=[]
for f in funcs:
    ok = f[3]<=40 and not f[4] and not f[5] and not f[6]
    if ok and cur and cur[-1][2]==f[2]: cur.append(f)
    elif ok: 
        if cur: runs.append(cur)
        cur=[f]
    else:
        if cur: runs.append(cur); cur=[]
if cur: runs.append(cur)
runs.sort(key=lambda r:-len(r))
for r in runs[:25]:
    print(f"{len(r):3} funcs {sum(x[3] for x in r):4} insns  {r[0][0]:#x}..{r[-1][0]:#x} {r[0][2]}  {' '.join(x[1] for x in r[:6])}{' ...' if len(r)>6 else ''}")
print("total simple funcs:",sum(1 for f in funcs if f[3]<=40 and not f[4] and not f[5] and not f[6]))
