#!/usr/bin/env python3
"""Decompilation progress report.

usage: progress.py [--json] [--record]

Reads shiningsoul.map / shiningsoul.elf (run `make` first) and reports:
  - whether the built ROM still matches the original (SHA1)
  - how much game code is C vs assembly (bytes and functions)
  - how many functions / RAM variables have real names
  - how much of the data region has been identified
--record appends a line to progress.csv so you can see the trend over time.
"""
import csv, datetime, hashlib, json, os, re, subprocess, sys

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(ROOT)
CODE_END = 0x0805289C

def sha1(path):
    with open(path, "rb") as f:
        return hashlib.sha1(f.read()).hexdigest()

def parse_map():
    """Returns [(section, addr, size, object)] for input sections in the map."""
    out = []
    section = None
    for line in open("shiningsoul.map"):
        m = re.match(r"^(\.\w+)\s+0x([0-9a-f]+)\s+0x([0-9a-f]+)\s*$", line)
        if m:
            section = m.group(1)
            continue
        m = re.match(r"^ (\.\w+)\s+0x([0-9a-f]+)\s+0x([0-9a-f]+) (\S+\.o)$", line)
        if m and int(m.group(3), 16) and int(m.group(2), 16) >= 0x08000000:
            out.append((m.group(1), int(m.group(2), 16), int(m.group(3), 16), m.group(4)))
    return out

def functions():
    """[(addr, size, name, object-kind)] for every function symbol."""
    # asm functions carry no size, so sizes are the distance to the next one
    res = subprocess.run(["arm-none-eabi-nm", "-n", "--defined-only", "shiningsoul.elf"],
                         capture_output=True, text=True, check=True).stdout
    addrs = []
    for line in res.splitlines():
        p = line.split()
        if len(p) == 3 and p[1] in "Tt" and not p[2].startswith(("_0", "$", ".")):
            addrs.append((int(p[0], 16), p[2]))
    return [(a, (addrs[i + 1][0] if i + 1 < len(addrs) else CODE_END) - a, n)
            for i, (a, n) in enumerate(addrs)]

def classify(obj):
    if obj.startswith("src/"):
        return "c"
    if obj.startswith("asm/lib/"):
        return "lib"
    if obj.startswith("asm/"):
        return "asm"
    return "data"

def pct(a, b):
    return 100.0 * a / b if b else 0.0

def main():
    for f in ("shiningsoul.map", "shiningsoul.elf", "shiningsoul.gba"):
        if not os.path.exists(f):
            sys.exit(f"{f} not found: run `make` first")
    matching = sha1("shiningsoul.gba") == open("shiningsoul.sha1").read().split()[0]
    sections = parse_map()

    code = {"c": 0, "asm": 0, "lib": 0}
    lib_c = 0
    for sec, addr, size, obj in sections:
        if sec == ".text" and addr < CODE_END:
            kind = classify(obj)
            if obj.startswith("src/lib/"):
                kind, lib_c = "lib", lib_c + size
            code[kind] += size
    game_total = code["c"] + code["asm"]

    ranges = [(addr, addr + size, obj) for sec, addr, size, obj in sections if sec == ".text"]
    def obj_at(a):
        for lo, hi, obj in ranges:
            if lo <= a < hi:
                return obj
        return ""
    fn = {"c": 0, "asm": 0, "lib": 0}
    named = {"game": 0, "lib": 0}
    total_fn = {"game": 0, "lib": 0}
    for addr, size, name in functions():
        if addr >= CODE_END:
            continue
        obj = obj_at(addr)
        kind = classify(obj)
        if obj.startswith("src/lib/"):
            kind = "lib"
        fn[kind if kind in fn else "asm"] += 1
        group = "lib" if kind == "lib" else "game"
        total_fn[group] += 1
        if not name.startswith("sub_"):
            named[group] += 1

    data_total = data_split = 0
    for sec, addr, size, obj in sections:
        if sec == ".rodata":
            data_total += size
            if obj != "data/data.o":
                data_split += size

    ram_named = sum(1 for l in open("config/ram_symbols.txt") if l.split("#")[0].strip())

    report = {
        "date": datetime.date.today().isoformat(),
        "matching": matching,
        "game_code_bytes": game_total,
        "game_code_c_bytes": code["c"],
        "game_code_c_pct": round(pct(code["c"], game_total), 3),
        "lib_code_bytes": code["lib"],
        "lib_code_c_bytes": lib_c,
        "game_functions": total_fn["game"],
        "game_functions_c": fn["c"],
        "game_functions_named": named["game"],
        "lib_functions": total_fn["lib"],
        "lib_functions_named": named["lib"],
        "ram_symbols": ram_named,
        "data_bytes": data_total,
        "data_split_bytes": data_split,
        "data_split_pct": round(pct(data_split, data_total), 3),
    }

    if "--json" in sys.argv:
        print(json.dumps(report, indent=2))
    else:
        bar = lambda p: "#" * int(p / 2.5) + "." * (40 - int(p / 2.5))
        print(f"ROM matches original:   {'YES' if matching else 'NO  <-- run tools/scripts/romdiff.py'}")
        print()
        print(f"Game code in C     [{bar(report['game_code_c_pct'])}] {report['game_code_c_pct']:6.2f}%"
              f"   {code['c']:,} / {game_total:,} bytes")
        print(f"Game funcs in C    [{bar(pct(fn['c'], total_fn['game']))}] {pct(fn['c'], total_fn['game']):6.2f}%"
              f"   {fn['c']} / {total_fn['game']}")
        print(f"Game funcs named   [{bar(pct(named['game'], total_fn['game']))}] {pct(named['game'], total_fn['game']):6.2f}%"
              f"   {named['game']} / {total_fn['game']}")
        print(f"Library funcs named[{bar(pct(named['lib'], total_fn['lib']))}] {pct(named['lib'], total_fn['lib']):6.2f}%"
              f"   {named['lib']} / {total_fn['lib']}   (m4a, agb_flash, BIOS, libgcc, libc)")
        print(f"Data identified    [{bar(report['data_split_pct'])}] {report['data_split_pct']:6.2f}%"
              f"   {data_split:,} / {data_total:,} bytes")
        print(f"RAM variables named: {ram_named}")

    if "--record" in sys.argv:
        new = not os.path.exists("progress.csv")
        with open("progress.csv", "a", newline="") as f:
            w = csv.DictWriter(f, fieldnames=list(report))
            if new:
                w.writeheader()
            w.writerow(report)
    return 0 if matching else 1

if __name__ == "__main__":
    sys.exit(main())
