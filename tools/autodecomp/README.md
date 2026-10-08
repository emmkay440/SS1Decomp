# autodecomp: unattended decompilation with a local model

`autodecomp.py` decompiles asm functions one at a time with a local Ollama
model (default `gemma4:12b`) and commits every function that matches.

## Running

```
tools/autodecomp/run.sh                 # in the background, until stopped
touch tools/autodecomp/STOP             # stop after the current function
tail -f tools/autodecomp/logs/run.log   # watch it
```

Or in the foreground: `tools/autodecomp/autodecomp.py [--once] [--func NAME]
[--model NAME] [--attempts N] [--max-insns N]`.

It refuses to run on `master` or with a dirty working tree, never pushes, and
only commits when `make compare` passes. Don't edit the repo while it runs:
it resets the tree (`git reset --hard`) after every failed function.

## How it works

1. Picks the smallest asm function in `asm/code_*.s` that hasn't failed
   before (skips hidden `.byte` functions, ARM code, the thread scheduler;
   raises the size limit when it runs out).
2. Carves it into `asm/ad_<name>.s` with `tools/scripts/split_asm.py` and
   links `src/ad_<name>.c` instead.
3. Prompts the model with the asm, declarations of what it calls/uses,
   the struct definitions those declarations mention (their headers are
   `#include`d in the generated file), the three most similar matched
   functions as original-asm -> C pairs (from the retired asm in `tmp/`,
   renamed to today's symbols) and `rules.md`.
   `autodecomp.py --prompt NAME` prints the prompt without running anything.
4. Lints the answer (no raw addresses, no register-named variables, no
   inline asm), compiles, runs `fcheck.py`; on errors or a diff, sends them
   back and asks for a fix (`--attempts` rounds).
5. Match: retires the asm to `tmp/autodecomp/`, `make compare`, commits
   `autodecomp: <name>`. No match: `git reset --hard`, records the failure
   in `state.json` (delete an entry to let it retry).

## Files

- `rules.md`: matching advice given to the model (edit freely).
- `state.json`: done/failed functions (local, gitignored).
- `logs/<function>.log`: every attempt with code and diff (gitignored).

Output is one `src/ad_*.c` per function with placeholder names; a human
(or Claude) can later merge neighbors into real modules and name things.
