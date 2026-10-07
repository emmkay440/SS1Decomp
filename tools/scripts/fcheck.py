#!/usr/bin/env python3
"""Build, then report per function whether it matches (ignores bl offsets,
which differ whenever an earlier function in the module has the wrong size).

usage: tools/scripts/fcheck.py FUNC [FUNC ...]
Run `make compare` at the end anyway: this check can't see everything.
"""
import subprocess,sys
b=subprocess.run("make 2>&1",shell=True,capture_output=True,text=True)
if b.returncode:
    print("BUILD FAILED", [l for l in b.stdout.splitlines() if "rror" in l][:2]); sys.exit(1)
for f in sys.argv[1:]:
    r=subprocess.run(f"python3 tools/scripts/checkfunc.py {f}",shell=True,capture_output=True,text=True).stdout
    lines=[l for l in r.splitlines()[2:] if (" | " in l or l.rstrip().endswith(" <") or " > " in l) and not (l.startswith("bl <") and "| bl <" in l)]
    print(f"{f:22} {'OK' if not lines else str(len(lines))+' diffs'}  {r.splitlines()[0][len(f)+2:][:40] if r else ''}")
