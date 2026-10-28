# What's next (decomp)

Status as of 2026-10-14 (`make progress`): ROM matches; 796 / 977 game
functions in C (25% of game code bytes: the small ones are mostly done).
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
- [ ] Near misses still open (drafts in `tmp/drafts/`), status 2026-10-19
      (counts from `tmp/ndiff.sh`, registers normalized):
      The ones with only registers / stack slots / order left are in
      `config/permute_queue.txt` (2026-10-20) for long permuter runs; leave
      them to the permuter and work on the others.
      Added 2026-10-20 from drafts that had no entry: `sub_08001B78`
      (code_08001B78, 0 normalized / 28 raw), `sub_0801D2C4`
      (area_switched_traps, 13 raw: the spill slots of `&idle[i]` and
      `trap + 28` swapped), `sub_0803EDD8` (code_0803EDD8, 5 normalized:
      `best &= 0xFF` lands in a new register in the last block, and the
      `GetCurrentThread()->priority = 0` epilogue shape of sub_08034F3C).
      Also `sub_0802B638` (asm/code_08029C44.s, the kind-6 heal skill
      thread, a sibling of `sub_0802BA34`): 38 normalized, see the draft's
      comment. Its module also holds the kind 0-4 threads (`sub_08029C44`
      / `sub_0802A0FC` and `sub_0802A60C` / `sub_0802B134` are pairs, 0.8
      similar), not started.
      - `sub_08017664` (asm/code_08017664.s): 3 normalized. The mask test
        goes into `hit` before `next = i + 1`, and `if (roll ok) hit =
        TRUE; else hit = FALSE;`. Left: the original computes `i + 1`
        into sb a second time, before the `reach` test (i's register is
        reused for `start` later); another `next = i + 1` there uses a
        third callee-saved register.
      - `UseItem` (asm/code_08013310.s): 24 normalized. Stat caps as `if
        (x <= cap) break; goto fail;`, effect 7 ends `if (count != 0) goto
        done; goto fail;`. Left: of two identical tails the original keeps
        the first (stat case 0 over case 2, effect 7 over effect 8) where
        the draft keeps the last, and the heal blocks hold hp/max in r3/r2
        (not live across a call). Separate SP-block pointers made it worse.
        2026-10-21: 20 normalized with str case 2 wrapped in `do { } while
        (0); break;` (now neither copy is merged; the original merges case
        2 into case 0). Why the original keeps the first copy: agbcc's
        cross-jumping (jump.c) walks the jumps forward and deletes the
        *current* jump's tail in favour of another jump to the same label,
        so the earlier copy only survives if the later tail reached that
        label through an intermediate jump that was threaded later.
      - `sub_08010B48` / twin `sub_08012230`: 10 real-build lines, all
        `beq` targets: the original threads the NULL item test past the
        bonus loop. Early-return getters, nested ifs, and getters that
        return `item` on the NULL path are all worse (100+ lines).
      - `sub_08020ADC` (asm/npc_gift_0adc.s): only stack slots of hoisted
        local addresses left (2026-10-20). The spot position at +0x80 is
        read through `px = &spot->pos.x` / `px[1]` in the distance test
        and a `pos` pointer for the draw calls. Left: `&obj2.unk1C[13]`
        gets the last spill slot where the original gives it the first.
        The permuter's 120 -> 30 candidates are all invalid: each puts an
        assignment in dead code before a `case` label, so a pointer is
        read uninitialized. Reordering the init stores doesn't help.
      - `sub_0801F4DC` (asm/npc_walker.s): far off (172 normalized).
      - `sub_08004AE4` (asm/code_08004AE4.s, map entry scrolling) and
        `sub_08002790` (asm/code_08002790.s, link lobby): far off, see
        the open sign-extension shape in CLAUDE.md.
      - `sub_0801DBC8` (asm/area_pillars.s): the other session's draft
        and a second one (`tmp/drafts/sub_0801DBC8_wip.c`, 245 lines).
      - `sub_08015478` (asm/player_status_tick.s, status timers): 18 raw
        lines (was 34). `player->unk24[i]--; timer = player->unk24[i];`
        as two statements fixes the r7/r4 and r2/r3 swaps. Left: the
        timer is reloaded with `ldrsh` where the original sign-extends the
        stored value (`lsls/asrs`), and one `ldr r0, [r5, #32]` is
        scheduled two instructions earlier in the original.
      - `sub_08023048` (asm/item_icon.s, item icon): about 85 lines of
        register differences (flags, x, y and the counter).
      - `sub_0803FE70` (asm/menu_gold_count2.s, two gold totals with the
        count animation, sibling of `sub_0803FFFC`): logic matches; the
        original holds `&gUnknown_0300047B` in two registers (sl, sb) and
        spills both parameters. Draft sub_0803FE70.c. The permuter (2026-10-21)
        got it to 0 normalized (register choice only) with two copy
        variables (`from = result`, `new_var = other`): sub_0803FE70_perm.c,
        now the queued draft.
      - `sub_08023A94` (asm/hud_weapon_wheel.s, the weapon wheel HUD
        thread; `sub_08023E74` after it is its quick-slot sibling): 60
        lines off, right size. Found: `s16 offs[3][2]` (not a struct),
        `memcpy` declared (else it's inlined as ldm/stm), a `u16 *` to
        gPlayerStats.currentWeapon set right before the L check (after a
        `keys = gKeysNew & 0x200` temporary) and after the clamp in the
        slide-out loop, the two sub_08003518 draws as an inline taking the
        object pointer. Left: the original forms `gPlayerStats` + 0x6C /
        + 0x70 as base + add where the build loads `gPlayerStats+0x6c` /
        `+0x70` literals (every spelling of the address compiles the same;
        goto loops and direct accesses are worse). Permuter: only
        `stats = &gPlayerStats; weapon = &stats->currentWeapon`, which is
        worse by line count. Draft sub_08023A94.c. 2026-10-21: reading
        `&stats->currentWeapon` through a `static inline` taking
        `&gPlayerStats` gives the base + 0x6C form (4 normalized, registers
        shifted); `&gPlayerStats.weapons[i]` still folds its 0x70 into the
        literal (the original adds `i * 4 + 0x70` to the base) with every
        spelling tried. Previous draft: sub_08023A94_old.c.
      - `sub_08047780` (asm/save_select_slots.s, the save select screen's
        text): 97 lines off, right size. Found: `sub_0800EDBC` declared
        with int parameters in the caller (the coordinates aren't
        truncated), `(s16)x` in the valid-slot branch, the second sprite at
        `(s16)x + 0x48`, `y` reset with if/else. Left: `slot`/`i` swapped
        between sb and sl, `dy` and the gUnknown_030005F0 address in other
        registers, and `y += 0x40` comes out as `adds; lsls; lsrs` where
        the original does `lsls; adds 0x400000; lsrs`. Draft
        sub_08047780.c.
      - `sub_080119DC` (asm/equip_bonus_scaled.s, bonus type 0x15 over the
        equipment, each item's sum scaled by value / 100): 28 lines off,
        right size. Built from equip_inline.h with single-return record
        getters (`if (item != NULL && item->category == c)`) and a scaled
        sum inline taking `s16 scale` (`sum = sum * scale / 100; return
        sum;`), `u8 equipped` for armor/head/unk84 as in sub_0801036C.
        Left: the truncated scaled sum lands in r3 (the sum's register);
        the original uses a fresh r1. A separate `scaled` local or other
        return types make it worse. Permuter: nothing. Draft
        sub_080119DC.c.
      - `sub_08039B3C` (asm/enemy_shot.s, an enemy shot that gives status
        1/2): 177 lines off, 40 bytes short. The original has more live
        values (enemy in sb, gPlayers in r7, 0xD4 in r8, px/py spilled to
        the stack after `sub_08007670`) and two zeroed registers (r6, r5)
        before the status code, so probably another variable or two.
        Locals must be declared obj, dirs, frame, timer, screenX, screenY
        for the stack layout. Permuter: nothing. Draft sub_08039B3C.c.
        `sub_08039EC8` next to it is a two-stage variant, not a copy:
        first draft 2026-10-24 (120 normalized, queued): `while (count !=
        0)` with the exit tests as an `if (...) break;` at the end, the
        move code written out in both branches of the `anim != 6` test, px/py
        locals kept here (stored to the stack after sub_08007670), the
        zero sixth argument of sub_08005FC4 reusing sub_080075AC()'s result.
        Left: the original spills `enemy` and keeps x/y in sl/sb.
        2026-10-24: without px/py locals (`x >> 12` at each use, the
        enemy_projectile style) 72 normalized; queued.
      - `sub_08029C44` (asm/code_08029C44.s, the kind 0 action thread: a
        homing shot towards the first live enemy of the info's target
        type): first draft 2026-10-24, 42 normalized, queued. Built from
        sub_0802BA34 (same SP check inline; the failure path returns
        without clearing the thread bit). Found: the three copies of the
        level in `count, anim, level` order (stack slots), only frame and
        timer zeroed at entry, `a -= 256`. Left: the enemy search loop (the
        original copies its bit test in front of the loop with i = 0
        folded and jumps into the type test; every loop form tried jumps
        to the test instead) and the sign extensions in the steering.
        The module's other threads (`sub_0802A0FC`, `sub_0802A60C`,
        `sub_0802AB94`, `sub_0802B134`) are the kinds 1-4.
      - `sub_08034F3C` (asm/enemy_bolt.s, an enemy bolt): 1 instruction
        pair off (2026-10-21). Without `px`/`py` locals (`x >> 12` at each
        use, like the matched sub_08037B58 and sub_0803861C) only the end
        is left: `GetCurrentThread()->priority = 0` comes out as `movs r1,
        #0; str r1, [r0, #8]` where the original has `adds r1, r0, #0;
        movs r0, #0; str r0, [r1, #8]` (void epilogue). A `u32` return
        type gives that but changes the epilogue; a thread local, an
        inline and duplicated endings don't. Draft sub_08034F3C.c, queued.
      - `sub_08017A44` (asm/enemy_melee.s, enemy melee hit on the local
        player): 127 lines off, 4 bytes long. Found: the last-hit test is a
        stored boolean (`ok = ... != enemy->unk2C`, the original's
        `eors/negs/orrs` + `blt`), `enemy->state` kept in a variable and
        reused in `state & player->unk10`, the reach table is `u16
        [][2]` (gUnknown_080FB4C0). Left: the original loads
        `enemyDirection` and gUnknown_080FB9FC with `ldrsh`, then register
        choice. Draft sub_08017A44.c.
      - `sub_08005A2C` (asm/code_08005A2C.s, the 5x5 tile attribute
        check): 4 normalized, 86 raw (2026-10-20). The second loop takes
        `tile = &tiles[(tx + i) + width * (ty + j)]` as a temporary (no
        `col`); the first keeps `col = tx + i`. Left: `dir` and `tiles`
        swapped (r5/r6), and the first loop computes `tx + i` a few
        instructions earlier. Draft sub_08005A2C.c.
      - OAM family: all matched 2026-10-18 (src/oam_*.c), the affine
        ones `sub_08003724`, `sub_080039C8` and `sub_08003CF8` included.
      - `sub_08028DB0` (asm/link_sync.s, link sync thread): far off,
        registers and the layout of the wait loop. Draft sub_08028DB0.c.
      - `sub_080199B4` (asm/spawn_points.s, spawn point thread): far off;
        the original keeps the constant 1 in r9. Draft sub_080199B4.c.
      - `sub_0801AF3C` (asm/area_change_thread.s, area change thread):
        about 45 lines off, the loop counters (r4/r5 swapped) and
        `index * 212 + table` built in the other order (the original
        multiplies first and adds the table to a copy in r8). Draft
        sub_0801AF3C.c; 0 normalized since the permuter (2026-10-21) showed
        `gPlayers[id].layer` read directly, no `player` pointer. Left: the
        loop counters in r4/r5 swapped.
      - `sub_08004FB4` (asm/map_tile_anim.s, animated map tiles): about 55
        lines off; the four-block loop keeps its counter in r8 and the
        table base `gUnknown_080FB0F8` reloaded per use, C hoists the base
        and puts the counter in r9. Draft sub_08004FB4.c.
      - `sub_08049A24` (asm/code_08049A24.s, adds a save select mode 2
        orbiter at random): about 30 lines off. The original keeps
        `&gUnknown_030007F0` / `&gUnknown_030007F8` in r5/r4 from the x
        store of each branch to the radius store after the join; C reloads
        them. Draft sub_08049A24.c (a `s16 roll` temporary was needed for
        the rest); permuter 840 -> 625 with a nonsense change.
      - `sub_080298C0` (asm/spell_effect_thread.s, spell effect thread):
        2 lines off. `x << 16` has to go through a wider temporary
        (`unsigned long long wide = x << 16; fixedX = wide;`, found by
        decomp-permuter); what's left is that the original computes it in
        r2, C in r0. A second 10-minute permuter run from that draft found
        nothing. By hand (2026-10-20): `fixedX = wide = ...`, a block
        temporary, `(s32)wide`, `(u32)x`, and moving `wide`'s declaration
        anywhere all stay at 2 lines; `do {} while (0)` around it is
        worse. Draft sub_080298C0.c.
      - `sub_0801B210` is not a function of its own: it is the head of one
        5 KB function that runs to 0x0801C6B0 (it jumps into
        `sub_0801B370` with `bl`-encoded long branches). The asm needs
        merging into one function before anyone tries it.
      - `EnemyThread` (asm/code_0800CBD8.s) is the same case: its first
        170 lines are only the head, the function runs to about
        0x0800E2D2 (it branches to 0x0800E0F6).
      - `sub_0800E634` (asm/enemy_update_msg.s, applies a received enemy
        update): 6 lines off, all registers of `y`. What it took so far:
        plain `for` loops for the two searches; the two 12-bit position
        fields read as "word << 12" and a `u16`, both before the final
        shifts (`rawX`/`rawY` in the draft; a signed bitfield gives the
        shifts in the wrong order); and `enemy->y = (x = y << 12)`
        (permuter), which keeps `x` out of the register of `rawX`. `y`
        needs the same (it must not share r1 with `rawY`; the original has
        the constant 0 there). Draft sub_0800E634.c.
      - `sub_0804087C` (asm/menu_slot_item.s): 6 lines off; which register
        holds the type 4 index (draft sub_0804087C.c).
      - `sub_08045114` (asm/menu_price_buy.s): 11 lines off; the original
        keeps two copies of the price/money code (draft sub_08045114.c).
      - `sub_08004344` (asm/draw_sorted.s, sorted draw-list insert): logic
        matches, block layout doesn't (the original puts the "insert at the
        head" block before the loop); draft sub_08004344.c.
      - `GetDataRecord` (asm/data_record.s): 25 normalized (2026-10-21),
        queued. The asm's second switch was `.byte` data; it is now
        `.inst.n`/`.4byte` so dcheck and the permuter can compare it. The
        new draft: one `static inline Rec(section, index)` for every
        lookup (each case keeps its own `ldr 0xFFFF; ands` and jumps to the
        shared tail), case order from the code addresses, case 9's
        languages 1-5 set a constant and share `(key + k) & 0xFFFF`. Left:
        the original adds the `+4` of the offset table in its own
        instruction (`adds r1, r2, #4; adds r1, r0; ldr [r1]`) where the
        build folds it into `ldr [r0, #4]` (no spelling tried keeps it),
        and language 0 keeps its own copy of the lookup. `sub_08002E18`
        next to it matches (src/data_count.c).
      - `sub_0804A074` (asm/code_0804A074.s, save select mode 3 sequence):
        logic matches; in the 30..239 loop x and the counter sit in each
        other's registers (r4/r5). Draft sub_0804A074.c; it has to stay in
        its own file (see the no-prototype note in CLAUDE.md).
      - `sub_0802BD2C` (asm/spell_sleep.s, the enemy twin of
        `sub_0802BA34`: status 2 for 1800 frames to the enemies in range):
        25 normalized, 159 raw (2026-10-20), queued. Found: `u32 count`
        (a u16 is 40 lines worse), `s32 level` (the roll compare is
        signed), the roll's `- 25` kept in its own `d = (unk64 >> 1) - 25`,
        the failure path with its own exit copy. Left: the mask and y
        positions in other registers / stack slots. Draft sub_0802BD2C.c.
      - `sub_08018940` (asm/code_08018940.s, sets up the area's floor:
        rolls entry variants into unkCC, link sync, starts the entry
        threads): 64 normalized (2026-10-21), queued. Found: the area
        table indexed directly (`gUnknown_080FB0F8[area].keys[i]`, not
        through a pointer), the kind 13 item ids are bytes in 4-byte
        slots. Left: the kind 2 search loop, where the original has the
        body (kind test and flag store) twice, once before the loop (no
        loop form tried gives that), and strength reduction in the kind
        13 loop. Draft sub_08018940.c.
      - `sub_08012AD0` (asm/drop_roll.s, the item an enemy drops): 2
        instructions off (2026-10-20), queued; a 20-minute permuter run
        found nothing. `&spawner->category[kind]` is formed as `(spawner
        + 0x10) + off` in the original, `(off + 0x10) + spawner` in the
        build; every spelling tried gives the latter. Found: the item is
        a `union { u32 raw; struct Item item; }` (word bitfield stores),
        `roll = abs(Random()); roll &= 0xFF;`, no `& 0x7F` on stored ids,
        a `? :` do/while condition, `goto done` for the second early
        exit. Draft sub_08012AD0.c.
      - `sub_080124E8` (asm/code_08012230.s, rolls an equipment item's
        random bonuses: element, prefix, "+n"): 28 normalized, 84 raw
        (2026-10-20), queued. Found: the chance byte read into `c` before
        the range tests, `next = c + acc` in the weapon case, one
        function-scope `weapon` record for the loop and the final switch
        (it lives in ip), `kinds = x & 7; kinds++;`. Left: in the three
        "no bonus" flag loops the original indexes `base + i` and hoists
        different mask constants (the draft strength-reduces the pointer).
        Its module also holds `sub_08012230` (twin of the queued
        `sub_08010B48`) and `sub_08012AD0` (drop roll, calls this one), so
        it needs splitting before it can be linked. Draft sub_080124E8.c.
      - `sub_08023E74` (asm/code_08023E74.s, quick slot HUD thread, the
        sibling of `sub_08023A94`): first draft 2026-10-21, 92 normalized.
        Found: `sub_08026E70` inlined for the item counts (`offs[2 - i]` in
        the slide-in loop, `offs[i]` in the slide-out loop), `if (!animate)`
        and `if (animate)` as two separate ifs. Left: the original keeps
        `&gPlayerStats.unk64`, `.unk66` and the inventory addresses as base
        + add in stack slots, the build folds them into literals (inline
        helpers didn't help here). Draft sub_08023E74.c.
      - `sub_0800C8F8` (asm/nearest_player.s, nearest player to an enemy
        within range): 30 normalized, queued. `s32 list[5][2]` and the
        `> range` test first were better; the original strength-reduces
        `&list[i][1]` into its own register and spills `range`. Draft
        sub_0800C8F8.c.
      - `sub_0802C174` (asm/target_in_front.s): 17 lines off; the original
        hoists 0x7FFF out of the loop and builds -8 inside it, C does the
        opposite; draft sub_0802C174.c.
      - `sub_08048240` (asm/name_entry_char.s): every case's code now
        matches instruction for instruction (2026-10-21: the language
        tables are `u16 [][14]` indexed `[row][column]`, page 2's
        languages 0/1 included; `ch = ...; break;` so `ch` stays in r0),
        but the build merges the identical tails after each case's table
        load (cross-jumping) and the original keeps all seven copies.
        Tried: a static inline per lookup, the language switch in an
        inline, `old_agbcc` (merges too). agbcc's cross-jumping always
        runs (jump2), so something in the original's RTL differed per
        case. Draft sub_08048240.c.
      - Solved 2026-10-27: `sub_08006008` and `GetMapTileAttributes`
        (src/map_attr.c): the per-layer `tiles` load written in both
        branches, and one `void *p` for the layer and then the tile;
        `switch` directly on the type bitfield (signed compares).
      - `LoadSaveSlotInfo` (asm/save_slot_info.s), `sub_0802F374`
        (asm/save_load_or_new.s): the original loads the constant 0x1000
        twice (for Alloc and ReadSaveSector); every C version shares it in a
        register, which shifts the whole register assignment. The matched
        `LoadSaveSlot` (src/save_check.c) does share it, so these two were
        written differently. A do/while(0) around either call doesn't help.
        2026-10-20: no flag or spelling stops the sharing (it's the first
        CSE pass, also with old_agbcc and -O1); most likely the shared
        pseudo lost register allocation in the original and reload rebuilt
        the constant at each use. The name copy loop of `sub_0802F374` is
        not loop-optimized in the original (a goto loop reproduces that).
        Draft tmp/drafts/sub_0802F374.c (53 normalized), queued for the
        permuter.
      - `sub_08010B48` / `sub_08012230` (asm/equip_has.s, about 700 bytes
        each): not retried; drafts equip_has_*.c, permuter score 1445.
      - `sub_08025BFC` (asm/special_attack.s, thread started by
        sub_08027188; kind 1-9 picks a scene and a power, then hurts every
        live enemy): first draft 2026-10-27, 0 normalized, queued. Left:
        `obj` (&gUnknown_03006430) and the constant 212 swap r4/r5, and
        the enemy loop's `i + 1` / `enemy + 1` swap sb/sl.
      - `sub_0802CA30` (asm/code_0802CA30.s, effect thread from
        sub_0802CE40: three shots in the facing direction that hurt the
        enemies they pass): first draft 2026-10-27, 4 normalized, queued.
        Found: `while (1)` with `if (finished > 2) break; WaitFrame();` at
        the end (a goto loop or do/while(1) is far worse), the speed 40 in
        a variable (`muls`, not shifts), `dmg` local for unk2A/pendingDamage,
        `(s16)(x >> 12)` arguments, `priority` as u32. Left: the facing
        index is stored after the table load, and one hoisted `&frame`
        address is set up before the zero constant.
      - `sub_0802D53C` (asm/code_0802D53C.s, enemy shot thread from
        sub_0802D98C, aimed at a player): first draft 2026-10-27, 15
        normalized, queued. Like sub_080260E8 it reads a pointer that is
        never set (`[sp, #0x4c]`, used as `->unk6A` for sub_0801841C);
        the draft has an uninitialized `other`. Found: a `hits` pointer
        for the player's last-hit table, `u32 count` with `count-- > 0`,
        the palette result in a u16 before `count = 1`, `(s16)angle >
        0x80`. Left: `arg`/`player` registers swapped and the narrowing of
        the target id, the speed 60 constant placement, one `ldrb` order.
      - `sub_0801E014` (asm/code_0801E014.s, the area's per-player chests):
        first draft 2026-10-28, 0 normalized, queued. Left: one swap, the
        `i * 2` offset and `&chests.x[i]` (r6/r7) at the top of the chest
        loop; declaration order, a `px` pointer, `int i` and an if-block
        instead of `continue` didn't change it. Its siblings
        `sub_0801E5C0` (src/area_chest.c), `sub_0801EA78`
        (src/warp_spots.c) and `sub_0801ECC4` (src/area_rocks.c) match.
      - `sub_080260E8` (asm/code_080260E8.s, character preview scene
        started by sub_08027010): first draft 2026-10-28, ~150
        normalized (tmp/drafts/sub_080260E8.c; a byte-view variant in
        sub_080260E8_bytes.c). The uninitialized `sb` is the record
        pointer of an inlined background load (`tiles = GetDataRecord(
        record[0])`, palette `*(u16 *)record | 0x120000`, tilemap
        `record + 1`): an uninitialized `u32 *record` local reproduces
        it. sub_08026ADC is inlined per player (paletteCount -1). Left:
        the loop counter should get sl in all three loops (me, x, y are
        spilled in the original); the player info is read through
        different views (facing as `ldrb [#3]; lsrs #4`, the
        gUnknown_080FB630 column as `ldrb [#5] & 0xC`, x/y as halfword
        bitfields), and the two state cases each keep their own copy of
        the unk70 code up to the shared `+= table` tail.
      Solved on 2026-10-14: `sub_0800FA74` and its sibling `sub_0800FC70`
      (src/drop_spot.c): `field = gFieldItems;` inside the early `goto
      fail` branch (decomp-permuter) puts the "found" tail before the
      search loop; `field = gFieldItems; field[n]` for the oldest slot;
      both abs values computed before the comparisons.
      Also matched that day: `sub_0804F0E8`, `sub_0800AF90`, `SpawnEnemy`,
      `sub_08006144`, `sub_080497D8`, `sub_080244F4`, `sub_08037B58`,
      `sub_0801516C` (shapes in CLAUDE.md, third batch).
      `sub_0800588C` (src/camera_follow.c): declared
      `u32` with no return statement (the original never uses r0 as
      scratch), the two low parts loaded before the stores, `unk60 +
      unk64` operand order.
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
