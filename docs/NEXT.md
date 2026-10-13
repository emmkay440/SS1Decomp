# What's next (decomp)

Status as of 2026-10-13 (`make progress`): ROM matches; 759 / 983 game
functions in C (22% of game code bytes: the small ones are mostly done).
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
- [ ] Near misses still open (drafts in `tmp/drafts/`), status 2026-10-13:
      - `sub_080298C0` (asm/spell_effect_thread.s, spell effect thread):
        2 lines off. `x << 16` has to go through a wider temporary
        (`unsigned long long wide = x << 16; fixedX = wide;`, found by
        decomp-permuter); what's left is that the original computes it in
        r2, C in r0. A second 10-minute permuter run from that draft found
        nothing. Draft sub_080298C0.c.
      - `sub_0801B210` is not a function of its own: it is the head of one
        5 KB function that runs to 0x0801C6B0 (it jumps into
        `sub_0801B370` with `bl`-encoded long branches). The asm needs
        merging into one function before anyone tries it.
      - `sub_0800BF50` (asm/code_0800BF50.s, player state 5 thread): not
        tried yet, only read. The PlayerInfo fields are read with `ldrb`
        there (a packed `u8` bitfield view), and the loop is entered in
        the middle.
      - `Free` (asm/heap_free.s): 2 lines off. It does `r4 = ptr; r1 = r4`,
        the original `r1 = ptr; r4 = r1`. Needs a goto for the loop and an
        integer copy of the pointer in its own do/while(0) (draft Free.c).
      - `sub_0804096C` (asm/menu_quick_slots.s): matches except that the
        original loads &gUnknown_03000494 into r8 before the first loop
        (draft sub_0804096C.c).
      - `sub_0804087C` (asm/menu_slot_item.s): 6 lines off; which register
        holds the type 4 index (draft sub_0804087C.c).
      - `sub_08045114` (asm/menu_price_buy.s): 11 lines off; the original
        keeps two copies of the price/money code (draft sub_08045114.c).
      - `sub_08004344` (asm/draw_sorted.s, sorted draw-list insert): logic
        matches, block layout doesn't (the original puts the "insert at the
        head" block before the loop); draft sub_08004344.c.
      - `GetDataRecord` (asm/data_record.s): the structure matches (two
        switches, every case with its own copy of the lookup); the key and
        the section pointer end up in swapped registers (r2/r3), and the
        per-language cases need the opposite registers for index and
        table. Draft GetDataRecord.c. `sub_08002E18` next to it matches
        (src/data_count.c).
      - `DropItem` (asm/drop_item.s): 10 lines off. The original keeps a
        separate call for the `| 0x80` case while the first case shares
        the call of the last branch; every C version merges all three
        tails. Draft DropItem.c. The function reads `spot` uninitialized
        when sub_08001F64() is 0.
      - `sub_0804A074` (asm/code_0804A074.s, save select mode 3 sequence):
        logic matches; in the 30..239 loop x and the counter sit in each
        other's registers (r4/r5). Draft sub_0804A074.c; it has to stay in
        its own file (see the no-prototype note in CLAUDE.md).
      - `sub_0800481C` (asm/map_layer2_bg.s) and its twin `sub_080046E4`
        (asm/code_080045C8.s): match except that the original computes
        `index * 2` for the BG control register before the call into r4 and
        copies it to a high register later; draft sub_0800481C.c.
      - `sub_08024320` (asm/number_above.s, 4-digit number above an
        object): 37 lines off; the loops are strength-reduced forms of
        plain indexing, the table base isn't folded (`adds r0, #24`);
        draft sub_08024320.c.
      - `sub_0802C174` (asm/target_in_front.s): 17 lines off; the original
        hoists 0x7FFF out of the loop and builds -8 inside it, C does the
        opposite; draft sub_0802C174.c.
      - `sub_0800B594` (asm/enemy_push.s, pushes the player out of
        enemies): logic matches, 134 lines of register differences; draft
        sub_0800B594.c. Its sibling `sub_0800B4B4` matches.
      - `sub_080297D4` (asm/enemy_hit.s): 3 lines off; `index * 0x94 +
        list` should land in r1 with the list loaded first; draft
        sub_080297D4.c.
      - `sub_08048240` (asm/name_entry_char.s): every case keeps its own
        copy of the table lookup in the original, C merges them (the same
        unexplained "identical tails not merged" as `DropItem` and
        `GetDataRecord`); it also returns r0 untouched when no case
        applies. Draft sub_08048240.c.
      - `sub_08026D98` (asm/code_08026D98.s, draw a decimal number): far
        off; the original spills a variable around the divide calls (draft
        sub_08026D98.c).
      - `sub_08006008`, `GetMapTileAttributes` (asm/map_6008.s, map_attr.s;
        drafts in map_all.c): the layer pointer has to land in r0/r1 while
        x and y move to other registers. About 20 lines off.
      - `LoadSaveSlotInfo` (asm/save_slot_info.s), `sub_0802F374`
        (asm/save_load_or_new.s): the original loads the constant 0x1000
        twice (for Alloc and ReadSaveSector); every C version shares it in a
        register, which shifts the whole register assignment. The matched
        `LoadSaveSlot` (src/save_check.c) does share it, so these two were
        written differently. A do/while(0) around either call doesn't help.
      - `sub_08010B48` / `sub_08012230` (asm/equip_has.s, about 700 bytes
        each): not retried; drafts equip_has_*.c, permuter score 1445.
      Solved on 2026-10-13: `sub_08018058` (`frames-- > 0`, and 16.16 copies of
      x and y made before the loop).
      Solved on 2026-10-12: `sub_0804E80C` and its family (`sub_0804E2E8`,
      `sub_0804E464`, `sub_0804E5A4`, `sub_0804E6C0`, `sub_0804E8BC`,
      `sub_0804E9F8`, `sub_0804EB34`): the colors are `u16` bitfields.
      Solved on 2026-10-10/11: `Random`, `sub_0803F060`, `Lerp1024`,
      `TakeItemFromSlot`, `sub_08041208`, `sub_08029270`,
      `EnableDisplayLayers`, `DisableDisplayLayers`, `sub_080060A0`,
      `sub_08005FC4`, `sub_0800EDBC`, `sub_08013B94`, `sub_08045D80`.
      What solved them: reusing one variable for two values, and shapes
      found by decomp-permuter (see CLAUDE.md).
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
- [x] Heap (src/heap.c, src/heap_top.c; only `Free` is still asm, see the
      near misses; merge heap_top.c into heap.c once it matches). Was: 16-byte block header
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
- Bogus function starts: fixed on 2026-10-10 (24 unaligned or far-jump
  targets turned into local labels). The ones that were listed:
  `sub_080273F6` (inside `sub_080273DC`, asm/code_080273DC.s),
  `sub_08027E7C` / `sub_08028D92` (inside `sub_08027E40`,
  asm/code_08027828.s; one function of about 3.9 KB) and `sub_0800AF24`
  (the tail of the function before it, asm/code_080077D0.s).
- Functions nothing calls show up as `.byte` runs after a function's
  literal pool (e.g. the tail of asm/code.s after `sub_080004A4`, which is
  ARM code). Decode them by hand when decompiling the function before them;
  five were turned into C on 2026-10-10 (`FindFreeInventorySlot`,
  `sub_0804E1F4`, `sub_080294D8`, `sub_08029544`, `sub_08013E08`).
- Some function starts came from heuristics (`push {..., lr}` scans). If
  `checkfunc.py` or the traces show a "function" that is really the middle of
  another, fix `config/functions.cfg`. Regenerating only works on a scratch
  copy (`disasm.py --force`).

## Housekeeping

- [x] `CLAUDE.md` with project notes.
- [x] First git commit.
- [x] 2026-10-10: merged one-function `unk_*` modules into their neighbours,
      shared structs moved to headers (`window.h`, `enemy.h`, `menu.h`),
      `GetDataRecord` declared in `data_record.h`. Don't replace the local
      `bzero`/`memcpy` prototypes with agbcc's `<string.h>`: that changes
      code (the ROM stops matching).
