# Shining Soul (USA) decomp — notes for Claude

Matching decompilation of Shining Soul (GBA, `AHUE`). See README.md for the
layout and tools, docs/NEXT.md for the task list, docs/RESEARCH.md for the
mGBA tracing workflow, docs/variables.md for RAM/struct findings.

## Rules

- `make compare` must print `shiningsoul.gba: OK` after every change. Use
  `make check FUNC=Name` / `make diff` to find mismatches.
- Never commit or copy game data. Everything that isn't code is `.incbin`'d
  from the user's `baserom.gba`.
- The PC port (`../shiningsoul-pc`) is not a focus for now. Don't spend
  effort on it; matching the ROM comes first. (Using the `include/gba/`
  register macros instead of raw addresses is still the normal style.)
- Names you can't verify are guesses: say so in a comment.
- Git: commit progress whenever `make compare` succeeds (gate on its exit
  status: `make compare && git commit`, no pipes)
  (check that no ROM, saves, traces or build output are staged). Never
  commit a non-matching build. Never push; pushing is only done when the
  user explicitly asks.

## Current state (2026-10-13)

733 / 982 game functions are matching C (`make progress`); every module in
`src/` matches. Next steps are in docs/NEXT.md; trace sessions still to
analyze are in docs/TRACES.md. RAM/struct findings: docs/variables.md;
ROM data formats: docs/data.md.

## Local-model loop (tools/autodecomp)

The user may run `tools/autodecomp/run.sh` on a work branch: a local model
decompiles small functions into `src/ad_<name>.c` and commits matches. Before
working, check it isn't running (`pgrep -f autodecomp.py`); if it is, ask
the user or `touch tools/autodecomp/STOP` and wait. Its output needs review:
merge `ad_*` files into real modules, name things, fix style.

## Workflow

- Decompiling: `tools/scripts/split_asm.py asm/code.s First Next module` →
  write `src/module.c` → switch `asm/module.o` to `src/module.o` in
  `ld_script.ld` → `make compare`. Example: `src/copy_queue.c`.
- Nintendo library C goes in `src/lib/` (counted as library by `make progress`).
- Game code is built with `agbcc -fprologue-bugfix` (without the flag,
  leaf functions with branches get a `push {lr}` the original doesn't have;
  `old_agbcc` gets that right but allocates registers differently). Only
  the m4a library uses `old_agbcc` (Makefile override).
- Functions that come close but don't match go to `tmp/drafts/` and stay asm.
- Matching tricks that worked: return-0/1 layout follows if/else order
  (flip the condition or use a result variable); `x & (1 << i)` vs
  `(1 << i) & x` changes scheduling; per-layer code duplicated in both
  branches (compiler merges tails); an unused parameter or `return arg` to
  keep r0 live; separate `rest`/temp variables to change register choice;
  an `inline` function's standalone copy moves to the end of the file.
- Bitfields read with `ldrb` + `lsls`/`lsrs` extraction (not `ldr`): a
  `__attribute__((packed))` struct of `u8` bitfields, with the field read
  into a temporary before comparing (`src/equipment.c`). Comparing the field
  directly with a constant folds into an `ands`/`cmp` mask test instead.
  For a halfword load (`ldrh`) of a bitfield: `__attribute__((packed, aligned(2)))`
  on a struct of `u16` bitfields (`src/stats.c`, sub_0801702C).
- Thread setup (`t->stack = Alloc(n); t->sp = stack + n - 4`) comes in three
  shapes that allocate registers differently: a `u8 *stack` local, a chained
  `t->sp = (u8 *)(t->stack = Alloc(n)) + n - 4`, or no local with
  `t->sp = (u8 *)t->stack + n - 4` (it doesn't reload). Try all three
  (`src/thread_starters.c`, `src/item_use_effect.c`). A free-slot loop over
  an in-use mask that re-reads the mask each iteration means the mask is
  `volatile` (`src/effect_pool.c`).
- Code that looks like an inlined call with a constant argument (e.g.
  `EnableIntr(INTR_FLAG_HBLANK)` inside another function) matches with a
  `static inline` helper taking the value as a parameter.
- The game read REG_VCOUNT without `volatile` (`*(u16 *)REG_ADDR_VCOUNT`
  matched FrameUpdate; the volatile macro didn't).
- agbcc quirks: every struct/union is 4-byte aligned (so a nested struct
  can't sit at offset 2); bitfield stores use the narrowest access that
  covers the bits; separate globals give one literal per variable while
  struct fields give base + offset; `&array[i].field` folds into one literal,
  loading the field doesn't.
- More shapes that mattered (2026-10-10):
  - `ldr rX, =gPtr` before a `bl Alloc` whose result is stored there: a
    pointer local (`void **p = &gPtr; *p = Alloc(n);`). Same for a loop that
    should load the struct base once and add the offset
    (`struct PlayerStats *stats = &gPlayerStats;`).
  - Two compares for a range (`cmp #43; bgt; cmp #40; bge`) instead of a
    subtract + unsigned compare: a `switch` with one `case` per value.
  - An `||` chain comparing adjacent fields gets merged into one wider
    compare; separate `if (...) return TRUE;` statements keep them apart.
  - A value known to equal the tested variable is passed as the register
    (`if (step == 1) f(..., 1)` passes `step`'s register): write the constant.
  - `u8`/`u16` parameters whose `lsrs` happens at each use, not at entry:
    declare them `u32` and let the callee's prototype narrow them.
  - Chunk loops `for (i = 0; i < count; i++) f(src + i * N, ...)` count down
    only when `i` and `count` are `s32`.
  - Base + small offsets (`strb r0, [r4, #2]`) on a global struct that the
    code otherwise reaches as `&g.field`: use a struct with plain byte fields
    (`struct MenuSlotBytes`), not the `u8 *` cast macros.
  - A byte built as `14 | (x << 4)` with `movs r0, #14; orrs r0, r2`: two
    4-bit bitfield stores, not shifts.
  - `while (--n != -1)` (not `n-- != 0`) for `subs; cmp rX, #-1`.
  - Compare trees: three case values tested as `== 2; <= 2 -> out; == 3;
    == 4` (pivot on the second of four) mean the switch had a fourth case
    below them that does nothing (`case 1: return;`). Cases that share one
    body but are tested one by one each had their own copy of the statement
    (`case 2: x = f(); break; case 3: x = f(); break;`).
  - A 4-bit field read as `ldrb; lsls #28; lsrs #28; cmp`: read the `u8`
    bitfield into a `u32` local first (`u32 kind = e->unk4.k.kind;`);
    comparing it directly folds into a mask test.
  - Swapped callee-saved registers in a search loop: cache the global count
    in a local (`for (i = 0, count = gCount; i < count; ...)`).
  - Selecting one of two globals and then updating a field: write the update
    in both branches (`if (c) gA.flags |= 0xC; else gB.flags |= 0xC;`).
  - Don't swap the local `bzero`/`memcpy` prototypes for agbcc's `<string.h>`:
    with the real `size_t` prototype the compiler expands `memcpy` inline and
    the ROM stops matching (the "conflicting types for built-in" warning in
    `src/palette_save.c` is expected).
- Variable reuse decides registers. When everything matches except which
  register holds a value, look for a variable the original used twice:
  a parameter used as a temporary (`b = (b * t) / 1024;` in Lerp1024,
  `layers &= 0x1F00`), one `u8` for two unrelated bytes (`hi` in Random),
  one pointer for two globals (`thread` in sub_0803F060). Other things that
  showed up the same day: a `u8`-returning `static inline` keeps the
  `movs r0, #1 / #0; cmp r0, #0` of an inlined bool test (sub_08041208);
  32-bit temporaries for 16-bit register math (EnableDisplayLayers);
  `record[0]` twice instead of `*record++` (sub_080060A0).
- Shapes decomp-permuter found (2026-10-10/11), worth trying by hand when a
  function is a few lines off:
  - `do { ... } while (0)` around a statement, a branch or the whole body
    (probably macros in the original). It changes loop depth, and with it
    register priority and what gets hoisted (`sub_08013B94`,
    `sub_0800EDBC`, `Free`).
  - A loop entered by a jump to its test (`b check` and no duplicated
    test): `do { goto check; } while (0); do { ...; check: ; } while (c);`.
  - Constants in local variables (`last = 11; first = 9;` in
    `sub_08045D80`), an `int` temporary for an index, a value copied to a
    second variable before it is stored to a register (`DisableDisplayLayers`).
  - A read through a `vu16 *` when a global is loaded into its own register
    before being combined.
- Other shapes from the same days: the flags argument computed by an
  `if/else` right before the call, with `item++` as the argument
  (`src/menu_draw.c`); a signed class compare (`bgt`) from
  `switch ((s32)GetPlayerClass())`; `if (p != NULL) {...} else { return 0; }`
  to put that `return 0` last; a 2D view of a flat array
  (`((u16 (*)[16])gPaletteBuffer)[i][j]`) for `row * 32 + (col * 2 + base)`.
- Shapes from 2026-10-12:
  - Colors are `struct Color { u16 r:5; u16 g:5; u16 b:5; }`, not packed
    (`src/palette_fade_*.c`, `palette_fill.c`). Through a pointer the
    value is read with a 32-bit `ldr`, a `!= 0` test becomes a byte or
    halfword mask test, and stores use the narrowest access. Indexing the
    global array (`gUnknown_03000A58[row][i].r`) reads with `ldrb`/`ldrh`
    instead; a `saved = &array[row][i]` pointer turns those into `ldr`.
    The struct is 4 bytes, which is why the saved palette has a word per
    color.
  - A byte load in a loop whose result is never used: a volatile read
    (`*(vu8 *)&p[i].kind;`). An unused local struct still gets its stack
    space (`src/save_select_mode3_add.c`).
  - `cmp count, #0; beq` before a loop that then tests `i < count` at the
    bottom: `i = 0; if (count != 0) { do { ...; i++; } while (i < count); }`.
    A `for` gives `cmp i, count; bhs`.
  - A constant that stays grouped with one operand (`r1 = offset - 0x40;
    r0 = x - r1`): a narrowing cast on the group, `x - (s16)(offset - 0x40)`.
    Without it the compiler reassociates.
  - `a + b` and `b + a` give different operand order in the `adds` and can
    change which loop invariant is hoisted first (`sub_0804E464`).
  - Arguments narrowed in a different order than the parameters, or after
    other entry code: `s32` parameters copied into `s16` locals in that
    order (`sub_0800C9EC`).
  - A caller that sign-extends `s16` arguments for a function taking `u16`,
    or passes an argument to a function that takes none, called it without
    a prototype: keep it in another file and declare it with `s32`
    parameters there (`sub_0804A074`, still asm).
  - A stack parameter loaded right before the loop rather than at entry: a
    local copy made there (`out = dest;` in `sub_08004288`).
  - Two distances that end up in the registers of their inputs: the
    result was stored back into the input variable (`x = abs(x - otherX)`,
    `sub_08016C34`). It also keeps the sign extension of a value the
    compiler would otherwise know to be small.
- Shapes from 2026-10-13:
  - The sprite object wrappers (`sub_08026C40`, `sub_08026B90` in
    `src/sprite_obj.c`) are also inlined into callers: the tell is a
    constant argument loaded into a register before the other arguments
    (`movs r0, #1` ahead of `ldr r3, [r5, #8]`), `&local` recomputed for
    the call although it is hoisted in a register, or a `u16` constant
    built as `movs #2; lsls #16; ... lsrs #16`. Write `static inline`
    copies in the file (`src/player_rise_effect.c`).
  - A small count/search loop whose result is copied to a second register
    (`adds r4, r3, #0`) before the next call is an inlined function too
    (`CountActive` in `src/save_select_mode4_add.c`, `FindFreeParticle`
    in `src/save_select_mode7.c`).
  - `s16` parameters are narrowed at entry with `lsls`/`lsrs` like `u16`
    ones and sign-extended (`lsls`/`asrs`) at each use; a `== 0` test on
    one is `lsls r0, rX, #16; cmp r0, #0`. A `u16` parameter with `(s16)`
    casts gives different code (`sub_0804C0A8`).
  - `asrs; cmp #0; bge; rsbs` right after a call: the builtin `abs()`
    (declare `int abs(int x);`), not a temporary and an `if`.
  - A call followed by a lone `lsls r0, r0, #16` whose result is not used:
    an `if (Random() > 0) x = 2; else x = 2;` with both arms the same. The
    arms get merged late, the shift stays (`sub_0804AA10`).
  - `sub sp` larger than the locals in use, with word-sized stores through
    `mov rX, sp`: a local array (`s16 pos[2]`), which always lives on the
    stack (`src/map_edge.c`).
  - `(a + 0x60) - b` kept in that order: `(s16)(a + 0x60) - b`. Same cast
    trick as `x - (s16)(offset - 0x40)`.
  - Stack layout follows the order in which locals get their slot: arrays
    at their declaration, scalars when their address is first taken. A
    slot order that doesn't fit one declaration list means an inner block
    (see the draft of `sub_08024320`).
- Families: many functions are copies with different constants. Check
  for one before starting (same mnemonic sequence, or the same first 30
  instructions); solve one, then generate the rest. Done so far: the nine
  save select mode setups (`src/save_select_mode*_setup.c`), the effect
  threads (`src/effect_obj.c`, `effect_anim.c`, `effect_number.c`), the
  queue pushes, the palette fades (`src/palette_fade_*.c`). Open: the
  `ItemUseEffectThread` copies (`sub_0802C3D4`, `sub_0802C798`).
- Return layout: `if (ok) { ... } else { return FALSE; }` in each branch
  and one `return TRUE` at the end puts the shared failure block right
  before the final `movs r0, #1` (`sub_0803FC00`). A table that the code
  reloads after a call isn't `const`.
- decomp-permuter (`tools/decomp-permuter`, driven like
  `tools/autodecomp/autodecomp.py:permute`) rarely finishes a function, but
  its best candidates point at the idea (a reused variable, a volatile
  read). Its compile script must delete the `.s` it writes next to the
  output: otherwise /tmp fills with millions of files (happened 2026-10-10).
- `split_asm.py FILE Func -` takes everything from Func to the end of the
  file. Only use `-` after checking Func is the last `func_start`.
- Before replacing an asm module with C, check it holds only the functions
  you wrote (`grep func_start`), and look for `.byte` runs after literal
  pools: those are uncalled functions and need C too.
- Names: `tools/scripts/rename.py old new` (records in config/names.txt).
  RAM globals: `config/ram_symbols.txt`; ROM tables and link-time constants:
  `config/rom_symbols.txt`. Then run `tools/scripts/apply_syms.py` (regenerates
  `ld_symbols.ld`).
- After a batch: `make progress RECORD=1`.
- Helpers: `tools/scripts/simple_runs.py` (runs of small adjacent functions
  to decompile next), `tools/scripts/dumpfuncs.py FIRST END` (print their
  asm), `tools/scripts/fcheck.py FUNC...` (build + per-function match,
  ignoring bl offsets). Typical loop: split_asm → write C → fcheck → fix
  shapes → `make compare` → retire asm to tmp/ → commit.
- When one function won't match after a few tries, split it back out as
  its own asm module (split_asm on the module file), keep the draft in
  tmp/drafts/, list it in docs/NEXT.md, and move on.
- The user can run mGBA with the GDB server; with it running you can read
  RAM directly (tools/research/gdbstub.py, reads of <= 0x80 bytes) instead
  of asking them for values.
- Retired asm goes to `tmp/` (gitignored scratch) when its C matches.
- Reference sources: `tmp/pokeemerald` (m4a, agb_flash), `tmp/sigmatch.txt`
  (which library functions match pokeemerald byte-for-byte).

## Toolchain

agbcc (`agbcc -fprologue-bugfix` for the game, `old_agbcc` for m4a) via `tools/setup.sh`; the
preprocessor is `arm-none-eabi-cpp` with `-nostdinc`, which defaults to C23,
so avoid `__STDC_VERSION__` checks that pick C23-only syntax.
