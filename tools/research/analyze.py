#!/usr/bin/env python3
"""Compare the phases of a trace session.

usage: analyze.py SESSION [--baseline PHASE ...]

For each phase it lists:
  - functions that ran ONLY in that phase (strongest evidence of what they do)
  - functions that ran for the first time in the session during that phase
With --baseline, "only" means "not in any baseline phase" (e.g. --baseline
town_idle to subtract everything that runs while standing still).
"""
import argparse, json, os, sys

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "..", "scripts"))
from syms import ROOT


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("session")
    ap.add_argument("--baseline", nargs="*", default=[])
    ap.add_argument("--limit", type=int, default=60)
    args = ap.parse_args()
    path = os.path.join(ROOT, "traces", args.session, "session.json")
    phases = json.load(open(path))["phases"]

    sets = [{h["name"] for h in p["hits"]} for p in phases]
    seen = set()
    for i, p in enumerate(phases):
        names = sets[i]
        if args.baseline:
            others = set().union(*(s for s, q in zip(sets, phases) if q["name"] in args.baseline and q is not p))
        else:
            others = set().union(*(s for j, s in enumerate(sets) if j != i))
        only = [h["name"] for h in p["hits"] if h["name"] not in others]
        first = [h["name"] for h in p["hits"] if h["name"] not in seen]
        seen |= names
        print(f"== {i:02d} {p['name']}: {len(names)} functions ran, {len(only)} only here, "
              f"{len(first)} new this session")
        for label, lst in (("only here", only), ("new", first)):
            if not lst:
                continue
            shown = lst[:args.limit]
            unnamed = sum(1 for n in lst if n.startswith("sub_"))
            print(f"   {label} ({unnamed} unnamed):")
            for n in shown:
                print(f"      {n}")
            if len(lst) > args.limit:
                print(f"      ... {len(lst) - args.limit} more")
        print()


if __name__ == "__main__":
    main()
