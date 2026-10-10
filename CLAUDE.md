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

## Current state (2026-10-10)

643 / 981 game functions are matching C (`make progress`); every module in
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
