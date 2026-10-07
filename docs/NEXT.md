# What's next (decomp)

Status as of 2026-10-06 (`make progress`): ROM matches; 4 / 976 game functions
in C (`src/copy_queue.c`); m4a's C part is fully C (`src/lib/m4a.c`, 5,456 of
11,760 library bytes); 59 game and 144 library functions named; 36 RAM
variables named; data region 0% split.

## Waiting on research data (you)

1. Install mGBA with its GUI: `sudo pacman -S mgba-qt`.
2. Run the trace sessions in `docs/RESEARCH.md` (option 1). Start with
   `boot_and_menus` and `combat`.
3. Find the first RAM values (option 2): HP, gold, EXP, player position,
   map id. Note them in `docs/variables.md` and run `watch.py` on each.
4. Share `traces/` and `docs/variables.md`. They contain no game data.

## Naming

- [ ] Turn the trace and watch results into names (`tools/scripts/rename.py`,
      `config/ram_symbols.txt` + `apply_syms.py`). Run `make progress RECORD=1`
      after each batch.
- [ ] MultiSio link-cable library: functions that touch the SIO registers
      around 0x080015xx-0x08001Dxx. It's a Nintendo SDK library ("MultiSio010214"
      string at 0x08052B50), so its names are known; match them by
      structure.
- [ ] Engine leftovers next to the named core: `sub_080004A4` (Div wrapper that
      keeps the remainder), `sub_0800449C` (first call in `FrameUpdate`),
      `sub_0803F1F8` / `sub_0803F214` (called by `DisplayOn` / `DisplayOff`),
      `GameMain` (0x08001970) and what it calls.
- [ ] Three unnamed agb_flash functions: 0x0805245C, 0x08052480, 0x08052498.

## Decompiling to C

- [x] m4a C part: `src/lib/m4a.c` (all 56 functions, old_agbcc). Based on
      pokeemerald's `m4a.c`. Older version: mono Direct Sound on DMA1 only, no
      Pokemon cry players, `SoundMainRAM_Buffer` is 0x380 bytes,
      `m4aSoundMode(0x0094E800)`, `CgbModVol` has no `mode & 1` check.
      Old asm kept at `tmp/m4a.s.replaced`.
- [ ] m4a_1 (`asm/lib/m4a_1.s`): the asm part (`SoundMain`, `MPlayMain`,
      `ply_*` commands). Needs an older `m4a_1.s` source. Note `umul3232H32`
      (0x0804FAA8) sits at the end of `asm/code_08001210.s`; it belongs to m4a_1.
- [ ] Engine core modules, following the `copy_queue.c` pattern
      (`split_asm.py` → C → `make check FUNC=...`): heap (`InitHeap`/`Alloc`/
      `Free`), input/RNG, display control, interrupt control.
      The thread scheduler (`RunThreads` .. `GetCurrentThread`) switches
      stacks by hand. It's likely hand-written asm, so it may stay asm (the PC
      port already replaces it).
- [x] `include/gba/` (defines.h, io_reg.h, macro.h, gba.h, m4a_internal.h, from
      pokeemerald) with the `PORTABLE` switch from
      `../shiningsoul-pc/docs/PORTING.md`. `global.h` includes `gba/gba.h`.
      Still to do: use `EWRAM_START` in `InitHeap` when it's decompiled.

## Data (0x0805289C to the end, currently one incbin)

- [ ] Split known pieces out of `data/data.s` as labeled incbins: the table
      right after the code (likely sine/curve values) at 0x0805289C, the
      interrupt table template at 0x08052B1C, and the agb_flash type
      structs near the "FLASH512_V131" string at 0x080FA8E0.
- [ ] Map the asset kinds. Tile graphics are mostly uncompressed 4bpp
      (`ss_viewer` in the port shows them). The 277 LZ77 blocks are mostly
      tilemaps (header: width, height, ...). The ROM also contains German
      text ("Es war einmal"), so it may hold several languages.
- [ ] Keep the no-assets rule. Data stays incbin'd from `baserom.gba`, and
      only tables with pointers become C (they have to, for the PC port).

## Known rough edges

- The ARM part of the m4a mixer (`SoundMainRAM`, 0x0804FB3C-0x0804FE6C) was
  disassembled partly as Thumb. It's byte-exact but unreadable. Replace it with an
  m4a_1 source matching this older version.
- Some function starts came from heuristics (`push {..., lr}` scans). If
  `checkfunc.py` or the traces show a "function" that is really the middle of
  another, fix `config/functions.cfg`. Regenerating only works on a scratch
  copy (`disasm.py --force`).

## Housekeeping

- [x] `CLAUDE.md` with project notes.
- [ ] First git commit (nothing is committed yet).
