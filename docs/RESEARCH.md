# Research plan: finding out what functions do

Two activities, both done by playing the game in mGBA while a script
watches through mGBA's debugger. Neither needs any C or assembly
knowledge. What you collect lets the code be named from evidence instead
of guesswork.

## Setup (once)

1. Install mGBA with its GUI: `sudo pacman -S mgba-qt`
2. Build the decomp once, so the scripts know the current function names:
   `make`
3. Start the game with the debug server:
   - GUI: open `baserom.gba` in mGBA, then **Tools > Start GDB server...**,
     keep port **2345**, click **Start**. The game pauses until a script
     connects.
   - or from a terminal: `mgba-qt -g baserom.gba`

Only one script can be connected at a time. Close one (type `quit` or press
Ctrl+C) before starting the other.

---

## Option 1: what runs during each activity

**Goal:** a list of the functions that run during each kind of thing you do
in the game. Functions that show up only while you attack are about attacks,
and so on.

**How:**

```
python3 tools/research/trace.py --session first_run
```

Play. Each time you are about to do something different, type a short name
for it in the terminal and press Enter. Type `quit` at the end. The game
stutters for a moment after each new phase name while the script catches
the first calls; that's normal.

**Rules that make the data useful:**

- **One activity per phase**, and do it a few times (attack 3-4 times in
  an "attack" phase).
- **Record an idle phase in the same place first** (e.g. `town_idle` before
  `town_talk_npc`). The analyzer subtracts it.
- Use `snake_case` names that say where you are and what you're doing:
  `dungeon1_attack_sword`, not `test2`.
- Short sessions (10-20 phases) are easier to work with than one long one.
- Make a savestate before each session so it can be replayed.

**Suggested sessions for Shining Soul**

| Session | Phases, in order |
|---|---|
| `boot_and_menus` | `boot` (until the title), `title_idle`, `title_menu_move`, `new_game`, `class_select_move`, `class_select_confirm`, `name_entry_type`, `name_entry_confirm` |
| `town` | `town_idle`, `town_walk`, `town_talk_npc`, `town_shop_open`, `town_shop_browse`, `town_shop_buy`, `town_shop_sell`, `town_inn` |
| `menus` | `field_idle`, `menu_open`, `menu_items`, `menu_use_item`, `menu_equip_change`, `menu_status`, `menu_close` |
| `combat` | `dungeon_idle`, `dungeon_walk`, `attack_miss`, `attack_hit`, `kill_enemy`, `take_damage`, `pick_up_item`, `pick_up_gold`, `use_skill`, `level_up` (if you can trigger it), `die` |
| `save_load` | `field_idle`, `save_game`, `load_game` |

**Then:**

```
python3 tools/research/analyze.py combat --baseline dungeon_idle dungeon_walk
```

It prints, per phase, the functions that ran only there and those that
ran for the first time. Send me the `traces/<session>/` folder, or that
output.

**Limitation:** code the game copies into fast RAM and runs from there
(the interrupt handler, parts of the sound mixer) isn't seen. It's already
identified anyway.

---

## Option 2: where values live and who changes them

**Goal:** the RAM address of important values (HP, gold, ...) and the
functions that change them. The function that lowers HP when you're hit
is the damage code.

### Step A: find the address (mGBA's memory search)

**Tools > Search memory** in mGBA. Pause first (Ctrl+P), and search in
**EWRAM/IWRAM** (addresses 0x02xxxxxx / 0x03xxxxxx).

- **Known number** (HP, gold, EXP, level): search for the exact value,
  change it in game (take a hit, spend gold), search for the new value,
  repeat until one or a few addresses remain. Try 2-byte and 4-byte
  widths if 1-byte finds nothing.
- **Unknown number** (position, menu cursor, timers): start with "any
  value", then use "changed" / "unchanged" / "increased" / "decreased"
  while moving or holding still.
- **Check it:** edit the value in the memory viewer and see if the game
  reacts (more gold in the menu, character jumps).
- **Expect decoys.** Thread stacks live in the heap (0x0200xxxx), so a
  local variable can match too, e.g. the HUD's displayed HP. `watch.py` on
  all candidates sorts them out: a decoy is written by `WaitFrame` or changes
  every frame, and the real value changes once per event.

### Step B: see which functions touch it

Close mGBA's search window, start the GDB server, then:

```
python3 tools/research/watch.py 0x02001A34 --size 2 --label hp
```

If the search left several candidates, watch them all at once (list the
addresses one after another). The log shows which copy changes first and who
copies it. mGBA only reports writes that change the value.

Do the things that change the value (take damage, heal, level up). Each
function that writes it is printed the first time, with the new value.
Ctrl+C prints a summary. Add `--read` to see who reads it instead
(e.g. the code that draws the HP bar).

### Values to look for first

| Value | How to find | Then watch while... |
|---|---|---|
| HP (current / max) | known value | taking damage, healing, leveling, resting at an inn |
| MP / SP | known value | using skills, recovering |
| Gold | known value | picking up gold, buying, selling |
| EXP, level | known value | killing enemies, leveling up |
| Player X / Y position | unknown, changed while walking | walking, entering doors |
| Current map / floor id | unknown, changes only on transitions | changing area |
| Menu cursor | unknown, changes with up/down in a menu | moving in different menus |
| Inventory slot 1 item id | unknown, changes when slot 1 changes | picking up, using, dropping |
| Enemy HP | unknown, decreased when you hit it | attacking |

### Record what you find

Add each confirmed address to `docs/variables.md` (template below) and
send it to me. They go into `config/ram_symbols.txt`, and the watch
results name the functions.

```
| Name      | Address    | Size | How found / checked          | Written by (watch.py)         |
|-----------|------------|------|------------------------------|-------------------------------|
| player HP | 0x02001A34 | 2    | known value, edited -> 999 ok | sub_0801234C (hit), ...       |
```

---

## Checking that the decomp is going the right way

| Command | Tells you |
|---|---|
| `make compare` | the built ROM is byte-identical to the original (must always be OK) |
| `make progress` | % of game code in C, functions named, data identified, RAM vars named |
| `make progress RECORD=1` | same, and appends to `progress.csv` to track the trend |
| `make diff` | after a change broke matching: which functions differ, and whether code shifted |
| `make check FUNC=Name` | instruction-by-instruction diff of one function against the original |

Renaming things never changes the ROM, so `make compare` stays OK. If it
doesn't, the rename hit something it shouldn't have.
