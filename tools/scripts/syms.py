"""Shared helpers: original addresses of functions and built symbol tables."""
import os, re, subprocess

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
CODE_END = 0x0805289C

def original_addresses():
    """name -> address in the original ROM (from config/names.txt and sub_ names)."""
    out = {}
    for line in open(os.path.join(ROOT, "config/names.txt")):
        f = line.split("#")[0].split()
        if len(f) >= 2:
            out[f[1]] = int(f[0], 16)
    return out

def original_address(name, table=None):
    m = re.fullmatch(r"sub_([0-9A-F]{8})", name)
    if m:
        return int(m.group(1), 16)
    return (table or original_addresses()).get(name)

def built_functions(elf="shiningsoul.elf"):
    """[(addr, size, name, is_thumb)] for code symbols in the built ELF, sorted."""
    out = subprocess.run(["arm-none-eabi-readelf", "-sW", os.path.join(ROOT, elf)],
                         capture_output=True, text=True, check=True).stdout
    syms = {}
    for line in out.splitlines():
        p = line.split()
        if len(p) >= 8 and p[3] == "FUNC" and p[6] != "UND":
            v = int(p[1], 16)
            syms[v & ~1] = (p[7], bool(v & 1))
    addrs = sorted(a for a in syms if 0x08000000 <= a < CODE_END)
    res = []
    for i, a in enumerate(addrs):
        end = addrs[i + 1] if i + 1 < len(addrs) else CODE_END
        res.append((a, end - a, syms[a][0], syms[a][1]))
    return res
