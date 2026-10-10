# What's next (decomp)

Status as of 2026-10-10 (`make progress`): ROM matches; 608 / 1000 game
functions in C (12.9% of game code bytes: the small ones are mostly done).
m4a's C part is fully C. What's left is mostly medium and large functions
(menus, items, map, save select) and the near misses below.

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
- [x] MultiSio link-cable library (`src/lib/multi_sio.c`, adapted from SAT-R/sa1). Left: the ARM `MultiSioRecvBufChange`/`MultiSioIntr` bytes in asm/code.s. Was: functions that touch the SIO registers
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
- [x] `src/sound.c`: game sound API (32 functions, 0x0803F1BC-0x0803F468).
- [x] `src/enemy_util.c`: `IsEnemyTypeActive`.
- [x] `src/exp.c` (`GetExpToNextLevel`, `AddExp`), `src/stats.c` (stat/skill
      block copies, `GetPlayerClass`, 10 functions).
- [ ] Near misses still open (drafts in `tmp/drafts/`): `TakeItemFromSlot`
      (asm/take_item.s), `sub_08041208` (asm/skill_check.s, inlines
      sub_080411D0 but keeps the 1/0 result), `Lerp1024` (asm/lerp.s),
      `Enable/DisableDisplayLayers` (asm/display_layers.s),
      `sub_08005FC4`..`sub_080060A0` (asm/map_coords.s), `LoadSaveSlotInfo`
      (asm/save_slot_info.s), `sub_0802F374` (asm/save_load_or_new.s).
      `sub_08010B48` / `sub_08012230` (asm/equip_has.s, has-bonus 0x12 / 0x11
      over equipped items; the sum versions in src/equip_bonus*.c match, the
      has versions come out 12-50 bytes long: drafts tmp/drafts/equip_has_*.c,
      permuter got to score 1445).
      `sub_08029270` (asm/queue_push_bytes.s, queue push with three byte
      args: needs one register too many; draft tmp/drafts/sub_08029270.c) and
      `sub_0803F060` (asm/enemy_threads2_alloc.s, allocs three pools; draft
      tmp/drafts/sub_0803F060.c).
      `sub_0800EDBC` (asm/text_draw_string.s, draws a u16 string as sprites;
      5 lines off: the original loop isn't optimized as a loop, only a
      `goto check; do { ... check: ; } while` shape gets close; draft
      tmp/drafts/sub_0800EDBC.c). `sub_0804087C` (asm/menu_slot_item.s, item
      in a menu slot; 4-8 lines off in the operand order of the index
      additions; draft tmp/drafts/sub_0804087C.c). `Random` (asm/random.s;
      loop and return match, the feedback-bit setup swaps r0/r1; draft
      tmp/drafts/Random.c).
      Many earlier near misses turned out to be the compiler (fixed by
      agbcc -fprologue-bugfix); these remaining ones are source shape.
- [x] Old near-miss list (now matching): `ApplyEnemyDamage` (asm/enemy_damage.s),
      `ApplyPendingDamage` (asm/player_damage.s), `CalcExpGain`
      (asm/exp_gain.s, 12 bytes off), `InitSaveFlash` (asm/save_init.s),
      `WriteSaveSector` (asm/save.s with Read/VerifySaveSector, which match).
      Save slots: `SaveGame` (asm/save_game.s), `LoadSaveSlotInfo`
      (asm/save_slot_info.s), `sub_0802F374`/`CalcSaveChecksum`/
      `IsSaveSlotValid`/`LoadSaveSlot` (asm/save_slots.s). They share an
      inline checksum loop (macro in tmp/drafts/save_with_macro.h); every
      variant tried leaves the sum in the wrong register. Solve it once in
      `CalcSaveChecksum` (4 lines off) and the rest should follow. `include/player.h` / `include/enemy.h` hold the
      struct layouts.
- [ ] Heap (`InitHeap`/`Alloc`/`Free`, 0x08001210): 16-byte block header
      {prev:31 + used:1 in one word, next, freePrev, freeNext}; the code
      reads the first word as a plain pointer too, so the struct probably
      needs a union. `gHeap` = free-list sentinel + start + size.
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

- [ ] `gDataArchive` ("SSDT", 0x080FC200): format in `docs/data.md`. Split it
      out as its own labeled incbin, then write a script that dumps the
      weapon/armor/item records (names need the text encoding).

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

- `apply_syms.py` replaces any literal equal to an IO register address, so
  masks get register names: in `CanPutItemInSlot`, `REG_SOUND3CNT_L` is
  really the item mask 0x04000070 (category bits | unappraised bit). Bytes
  are unaffected. Fix: only rewrite literals that are loaded and then used as
  a base address, or undo the known false hits.

- The ARM part of the m4a mixer (`SoundMainRAM`, 0x0804FB3C-0x0804FE6C) was
  disassembled partly as Thumb. It's byte-exact but unreadable. Replace it with an
  m4a_1 source matching this older version.
- Bogus function starts still in asm/ (each is the middle of the function
  before it, so the "small function" lists are wrong about them):
  `sub_080273F6` (inside `sub_080273DC`, asm/code_08027280.s) and
  `sub_08027E7C` / `sub_08028D92` (inside `sub_08027E40`, same file; one
  function of about 3.9 KB).
- Functions nothing calls show up as `.byte` runs after a function's
  literal pool (e.g. the tail of asm/code.s after `sub_080004A4`, which is
  ARM code). Decode them by hand when decompiling the function before them;
  six were turned into C on 2026-10-10 (`FindFreeInventorySlot`,
  `sub_0804E1F4`, `sub_080294D8`, `sub_08029544`, `sub_08013E08`).
- Some function starts came from heuristics (`push {..., lr}` scans). If
  `checkfunc.py` or the traces show a "function" that is really the middle of
  another, fix `config/functions.cfg`. Regenerating only works on a scratch
  copy (`disasm.py --force`).

## Housekeeping

- [x] `CLAUDE.md` with project notes.
- [ ] First git commit (nothing is committed yet).
