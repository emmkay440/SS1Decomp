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
- Git: commit progress whenever `make compare` prints `shiningsoul.gba: OK`
  (check that no ROM, saves, traces or build output are staged). Never
  commit a non-matching build. Never push; pushing is only done when the
  user explicitly asks.

## Workflow

- Decompiling: `tools/scripts/split_asm.py asm/code.s First Next module` →
  write `src/module.c` → switch `asm/module.o` to `src/module.o` in
  `ld_script.ld` → `make compare`. Example: `src/copy_queue.c`.
- Nintendo library C goes in `src/lib/` (counted as library by `make progress`).
- Everything is built with `old_agbcc` (the game too: with `agbcc`, leaf
  functions with branches get a `push {lr}` the original doesn't have).
- Functions that come close but don't match go to `tmp/drafts/` and stay asm.
- Names: `tools/scripts/rename.py old new` (records in config/names.txt).
  RAM globals: `config/ram_symbols.txt`; ROM tables and link-time constants:
  `config/rom_symbols.txt`. Then run `tools/scripts/apply_syms.py` (regenerates
  `ld_symbols.ld`).
- After a batch: `make progress RECORD=1`.
- Retired asm goes to `tmp/` (gitignored scratch) when its C matches.
- Reference sources: `tmp/pokeemerald` (m4a, agb_flash), `tmp/sigmatch.txt`
  (which library functions match pokeemerald byte-for-byte).

## Toolchain

agbcc (`tools/agbcc/bin/old_agbcc` is the one used) via `tools/setup.sh`; the
preprocessor is `arm-none-eabi-cpp` with `-nostdinc`, which defaults to C23,
so avoid `__STDC_VERSION__` checks that pick C23-only syntax.
