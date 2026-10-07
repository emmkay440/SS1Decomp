#!/usr/bin/env python3
"""Record which functions run while you play, split into phases you name.

usage: trace.py [--port 2345] [--session NAME]

1. Start mGBA with the GDB server enabled (mgba-qt: Tools > Start GDB server;
   command line: mgba -g baserom.gba), then run this script.
2. Play. Whenever you start doing something different, type a short phase
   name and press Enter (e.g. "title", "town_idle", "open_menu", "attack").
3. Type "quit" (or Ctrl+D) when done. The game keeps running.

Every phase records each function the first time it runs during that phase
(a one-shot breakpoint per function, so the game slows down only briefly
after you switch phases). Results go to traces/SESSION/. Then run
analyze.py SESSION.

Code that the game copies to IWRAM and runs from there (IntrMain, parts of
the sound mixer) is not seen: the breakpoints are on ROM addresses.
"""
import argparse, datetime, json, os, queue, sys, threading, time

sys.path.insert(0, os.path.dirname(__file__))
sys.path.insert(0, os.path.join(os.path.dirname(__file__), "..", "scripts"))
from gdbstub import GdbStub
from syms import ROOT, built_functions

FRAME_COUNTER = 0x03002D54   # gFrameCounter


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--host", default="127.0.0.1")
    ap.add_argument("--port", type=int, default=2345)
    ap.add_argument("--session", default=datetime.datetime.now().strftime("%Y%m%d_%H%M%S"))
    args = ap.parse_args()

    os.chdir(ROOT)
    funcs = built_functions()
    by_addr = {a: (name, thumb) for a, size, name, thumb in funcs}
    outdir = os.path.join("traces", args.session)
    os.makedirs(outdir, exist_ok=True)

    print(f"connecting to mGBA at {args.host}:{args.port}...")
    g = GdbStub(host=args.host, port=args.port)
    phases = []
    lines = queue.Queue()

    def reader():
        for line in sys.stdin:
            lines.put(line.strip())
        lines.put(None)
    threading.Thread(target=reader, daemon=True).start()

    def frame():
        try:
            return int.from_bytes(g.read(FRAME_COUNTER, 4), "little")
        except IOError:
            return -1

    def arm():
        for a, (name, thumb) in by_addr.items():
            g.breakpoint(a, thumb)

    def disarm(pending):
        for a in pending:
            g.breakpoint(a, by_addr[a][1], on=False)

    def save():
        with open(os.path.join(outdir, "session.json"), "w") as f:
            json.dump({"session": args.session, "phases": phases}, f, indent=1)
        for i, ph in enumerate(phases):
            with open(os.path.join(outdir, f"{i:02d}_{ph['name']}.txt"), "w") as f:
                f.write(f"# phase {ph['name']}: {len(ph['hits'])} functions, frames {ph['start_frame']}-{ph.get('end_frame', '?')}\n")
                for h in ph["hits"]:
                    f.write(f"0x{h['addr']:08X} {h['name']}\n")

    def start_phase(name):
        ph = {"name": name, "start_frame": frame(), "hits": []}
        phases.append(ph)
        arm()
        print(f"[phase {len(phases) - 1}: {name}] recording... (type a new phase name + Enter, or 'quit')")
        return ph, set(by_addr)

    # the server stops the game when we connect
    reply = g.cmd("?")
    ph, pending = start_phase("boot")
    g.cont_nowait()
    running = True
    try:
        while True:
            # a new phase name from the terminal?
            try:
                cmd = lines.get_nowait()
            except queue.Empty:
                cmd = ""
            if cmd is None or cmd in ("quit", "q", "exit"):
                break
            if cmd:
                stop = g.interrupt() if running else None
                running = False
                ph["end_frame"] = frame()
                disarm(pending)
                print(f"  {len(ph['hits'])} functions in '{ph['name']}'")
                ph, pending = start_phase(cmd.replace(" ", "_").replace("/", "_"))
                g.cont_nowait()
                running = True
                continue

            stop = g.wait_stop(timeout=0.1)
            if stop is None:
                continue
            running = False
            pc = g.regs()[15]
            for a in (pc, pc & ~1):
                if a in pending:
                    pending.discard(a)
                    g.breakpoint(a, by_addr[a][1], on=False)
                    ph["hits"].append({"addr": a, "name": by_addr[a][0], "order": len(ph["hits"])})
                    if len(ph["hits"]) % 50 == 0:
                        print(f"  {len(ph['hits'])} functions so far")
                    break
            g.cont_nowait()
            running = True
    except KeyboardInterrupt:
        pass
    finally:
        try:
            if running:
                g.interrupt()
            ph["end_frame"] = frame()
            disarm(pending)
            g.cont_nowait()   # leave the game running
            time.sleep(0.1)
        except Exception as e:
            print("warning while detaching:", e)
        g.close()
        save()
        print(f"saved {len(phases)} phase(s) to {outdir}/  ->  python3 tools/research/analyze.py {args.session}")


if __name__ == "__main__":
    main()
