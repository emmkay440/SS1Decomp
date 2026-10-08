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
[--model NAME] [--attempts N] [--samples N] [--permute SECONDS] [--no-examples]
[--max-insns N]`. Each function costs `--attempts` x `--samples` model calls
(default 3 x 4) plus `--permute` seconds when it gets close. `--permute` needs
decomp-permuter (`tools/setup.sh` installs it into `tools/decomp-permuter`).

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
4. Asks for `--samples` answers per round at temperatures 0.2-0.8. Each one
   is linted (no raw addresses, no register-named variables, no inline asm),
   compiled and checked with `fcheck.py`, and scored by how many lines differ.
   The next round sends the closest answer back with its error or diff
   (`--attempts` rounds).
5. If nothing matched and `--permute` is set, runs decomp-permuter on the
   closest answer for that many seconds (`tmp/autodecomp/permute/<name>/`);
   a perfect score is spliced back in and checked.
6. Match: retires the asm to `tmp/autodecomp/`, `make compare`, commits
   `autodecomp: <name>`. No match: saves the closest answer to
   `tmp/autodecomp/drafts/<name>.c`, `git reset --hard`, records the failure
   in `state.json` (delete an entry to let it retry).

## Files

- `rules.md`: matching advice given to the model (edit freely).
- `state.json`: done/failed functions (local, gitignored).
- `logs/<function>.log`: every attempt with code and diff (gitignored).

Output is one `src/ad_*.c` per function with placeholder names; a human
(or Claude) can later merge neighbors into real modules and name things.
