#!/usr/bin/env python3
"""Find out which functions write (or read) a RAM variable.

usage: watch.py ADDRESS [ADDRESS ...] [--size 1|2|4] [--read | --access] [--label HP] [--host H] [--port 2345]

Start mGBA with the GDB server (see trace.py), find the address of a value
with mGBA's memory search (Tools > Search memory), then run this and play.
Each function that touches the address is printed the first time it does,
with the value; Ctrl+C prints a summary and leaves the game running.
Each write shows the width of the store instruction (u8/u16/u32). That's
the variable's real size, whatever width the memory search used.
mGBA only reports writes that change the value (its default watchpoint
behavior), so code that rewrites the same number every frame stays quiet.
Several addresses can be watched at once (e.g. candidates from a memory
search): every line says which one was touched, so you can see which is the
real value and which are copies. A full log goes to traces/watch_LABEL.txt.
"""
import argparse, bisect, os, re, sys, time

sys.path.insert(0, os.path.dirname(__file__))
sys.path.insert(0, os.path.join(os.path.dirname(__file__), "..", "scripts"))
from gdbstub import GdbStub
from syms import ROOT, built_functions

FRAME_COUNTER = 0x03002D54


def ram_address(text):
    if ":" in text:
        raise argparse.ArgumentTypeError(
            f"'{text}' looks like the debug server address. ADDRESS is the RAM address of the "
            "value to watch (e.g. 0x02001A34, found with mGBA's Tools > Search memory); "
            "the server is found automatically (--host/--port to change it)")
    try:
        value = int(text, 0)
    except ValueError:
        raise argparse.ArgumentTypeError(f"'{text}' is not a number (use hex like 0x02001A34)")
    if value >> 24 not in (0x02, 0x03):
        raise argparse.ArgumentTypeError(
            f"0x{value:08X} is not in RAM: game variables are in EWRAM (0x02xxxxxx) or IWRAM (0x03xxxxxx)")
    return value


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("addresses", nargs="+", type=ram_address, metavar="ADDRESS",
                    help="RAM address(es) of the value, e.g. 0x02001A34")
    ap.add_argument("--size", type=int, default=4, choices=(1, 2, 4))
    ap.add_argument("--read", action="store_true")
    ap.add_argument("--access", action="store_true")
    ap.add_argument("--label", default="var")
    ap.add_argument("--host", default="127.0.0.1")
    ap.add_argument("--port", type=int, default=2345)
    args = ap.parse_args()
    kind = "access" if args.access else "read" if args.read else "write"

    os.chdir(ROOT)
    funcs = built_functions()
    starts = [f[0] for f in funcs]

    def func_at(pc):
        # the reported PC is just past the access; look up the instruction before it
        i = bisect.bisect_right(starts, pc - 2) - 1
        return funcs[i][2] if i >= 0 else f"0x{pc:08X}"

    os.makedirs("traces", exist_ok=True)
    logpath = os.path.join("traces", f"watch_{args.label}.txt")
    log = open(logpath, "w")
    g = GdbStub(host=args.host, port=args.port)
    g.cmd("?")
    for addr in args.addresses:
        r = g.watchpoint(addr, args.size, kind)
        if r != "OK":
            sys.exit(f"could not set watchpoint at 0x{addr:08X}: {r}")
    where = ", ".join(f"0x{a:08X}" for a in args.addresses)
    print(f"watching {kind}s of {args.label} at {where} ({args.size} bytes). Ctrl+C to stop.")

    counts, first_seen = {}, set()

    rom = open("baserom.gba", "rb").read()

    def store_kind(pc):
        """Width of the Thumb store that just executed (the PC is right after it)."""
        off = pc - 2 - 0x08000000
        if not 0 <= off < len(rom) - 1:
            return "?"
        h = rom[off] | rom[off + 1] << 8
        if 0x7000 <= h < 0x7800 or 0x5400 <= h < 0x5600:
            return "u8"
        if 0x8000 <= h < 0x8800 or 0x5200 <= h < 0x5400:
            return "u16"
        if 0x6000 <= h < 0x6800 or 0x5000 <= h < 0x5200 or 0x9000 <= h < 0x9800 or 0xC000 <= h < 0xC800:
            return "u32"
        return "?"   # ARM code, DMA/BIOS copy, or an unusual instruction

    def hit_address(stop):
        # mGBA reports "T05watch:ADDR;" (also rwatch/awatch)
        m = re.search(r"watch:([0-9a-fA-F]+)", stop)
        if m:
            a = int(m.group(1), 16)
            for cand in args.addresses:
                if cand <= a < cand + args.size or a <= cand < a + args.size:
                    return cand
        return args.addresses[0] if len(args.addresses) == 1 else None

    try:
        while True:
            stop = g.cont()
            addr = hit_address(stop)
            if addr is None:
                continue
            pc = g.regs()[15]
            value = int.from_bytes(g.read(addr, args.size), "little")
            frame = int.from_bytes(g.read(FRAME_COUNTER, 4), "little")
            name = func_at(pc)
            key = (addr, name)
            counts[key] = counts.get(key, 0) + 1
            width = store_kind(pc) if kind == "write" else ""
            log.write(f"frame {frame} 0x{addr:08X} pc 0x{pc:08X} {name} {width} value {value} (0x{value:X})\n")
            log.flush()
            if key not in first_seen:
                first_seen.add(key)
                print(f"  frame {frame:7}: 0x{addr:08X} {name:34} pc 0x{pc:08X} {width:4} value {value} (0x{value:X})")
    except KeyboardInterrupt:
        pass
    finally:
        try:
            g.interrupt()
        except Exception:
            pass
        try:
            for addr in args.addresses:
                g.watchpoint(addr, args.size, kind, on=False)
            g.cont_nowait()
            time.sleep(0.1)
        except Exception as e:
            print("warning while detaching:", e)
        g.close()
        log.close()
        print(f"\n{kind}s of {args.label} by address and function:")
        for (addr, name), n in sorted(counts.items(), key=lambda x: (x[0][0], -x[1])):
            print(f"  0x{addr:08X}  {n:8}  {name}")
        print(f"full log: {logpath}  (chronological; shows which copy changes first)")


if __name__ == "__main__":
    main()
