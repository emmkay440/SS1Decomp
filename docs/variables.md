# RAM variables found by research

Confirmed values go into `config/ram_symbols.txt` (globals) or a struct
layout below (fields). Each row says how it was found.

## Globals

| Name | Address | Size | How found / checked | Written by |
|---|---|---|---|---|
| gPlayers | 0x03004580 | 4 x 0xD4 | base of the struct holding hp (0x030045FA = gPlayers[0].hp); `UseItem` indexes it by `GetMultiplayerId() * 0xD4` | |

| gMenuPage | 0x03000478 | u8 | `MenuScreen` page; 9 = options | |
| gPlayerStats | 0x03003D10 | struct PlayerStats | the local character, part of the save; `AddExp` / `GetExpToNextLevel` | |

## struct PlayerStats (`gPlayerStats`, 0x03003D10)

This is the save slot. `SaveGame` copies the first 0x27C bytes, adds a
checksum byte (~ byte sum) at 0x27C, and writes the sector `saveSlot`
(+0x22) (trace option_menu_exit, code reading).

| Offset | Size | Field | Evidence |
|---|---|---|---|
| +0x34 | u32 | exp (total) | `AddExp` adds to it and compares with `gExpTable[level - 1]` (code reading). Confirmed with watch.py: only `AddExp` writes it (value 44 after a kill, 2026-10-07). Slime kill at level 1 gave 11 EXP |
| +0x38 | u32 | level | `AddExp` increments it (max 99) |
| +0x00 | u16[16] | name | 4 x 177 (0xB1) then 0 for a character named "AAAA": 'A' = 0xB1 in the game's text encoding. The Mage's name is 3 x 0xB2 |
| +0x20 | u16 | classAndColor | Warrior, color 1: 0. Mage, color 2: 5. Bits 0-1 = color scheme (0-3), bits 2+ = class (0 Warrior, 1 Mage); `GetPlayerClass` returns `>> 2` (RAM, 2026-10-07) |
| +0x22 | u16 | saveSlot | flash sector `SaveGame` writes |
| +0x24 | u16 | STR | read from RAM: 17/16/0/16 = menu STR/VIT/INT/DEX after spending 2 STR, 1 VIT, 1 DEX (2026-10-07). Start of the 7-word stat block (`GetStatBlock`) |
| +0x26 | u16 | VIT | same |
| +0x28 | u16 | INT | same (Warriors can't raise it) |
| +0x2A | u16 | DEX | same |
| +0x2C | u16 | ? | 5 on both the level 2 Warrior and the level 1 Mage |
| +0x3C | u16 | statPoints | +4 per level up (`AddExp`); the player then spent 4 (1 STR, 2 VIT, 1 DEX) (trace leveling_up) |
| +0x40 | u16 | skillPoints | +1 per level up; spent 1 on Sword (trace leveling_up) |
| +0x44 | 8 x {u16 level, u16 ?} | skills | watch.py: adding/removing a point in each skill in menu order wrote +0x44, +0x48, ... +0x60 in order (Sword .. Thunder res). After confirming 1 point in Thunder res, +0x60 = 1 (menu shows 15) |
| +0x6C | u16 | currentWeapon | index into weapons; `CycleWeapon` steps it 0-2 |
| +0x70 | u32[3] | weapons | Mage: 0x57A0, 0x1820, 0 (fire book and freeze book; category 2, ids 47 and 48) |
| +0x7C | u32 | head | Warrior: 0x40C0 = Bandana (category 4, id 1). `CanPutItemInSlot` sub-slot 0 takes category 4 |
| +0x80 | u32 | armor (body) | Mage: 0x4030 (Robe); Warrior after equipping the Cotton Robe: 0x4130 (category 3, id 2). Sub-slot 1 takes category 3 |
| +0x84 | u32 | third equipment slot | empty so far; sub-slot 2 takes category 5 |
| +0xEC | Item[60] | storage | storage box, 4 pages of 5x3 (trace town_storage; GetStorage/SetStorage) |
| +0x1DC | Item[3][12] | ? | three 12-item lists picked by index (sub_08013B94) |
| +0x278 | u32 | options | read from RAM after setting the defaults: 0x1059D = BGM on (bit 0, `ApplyMenuChanges` passes it to `SetMusicEnabled`), bit 1 = control type (0 = A, 1 = B: 0x1059F with B, checked 2026-10-07), window color R/G/B in 5-bit fields at bits 2/7/12 = 7/11/16 (the menu's defaults) |
| +0x88 | u32[25] | inventory | `AddItemToInventory` (trace picking_up_item, code reading) |

Warrior inventory, 2026-10-07 (in game: Herb, Herb, Valuing Scroll, Robe,
Mithril, Long Sword, ?Robe): 0x10, 0x10, 0x310 (Angel Wing id?), 0x610
(id 12), 0x4030, 0x60, 0x120, empty, 0x4200030. Weapons 0x4020 (id 0),
0x13A0 (id 39), 0x820 (id 16).

### Item word (inventory slots, field items +0x18)

| Bits | Field | Evidence |
|---|---|---|
| 4-6 | category; 0 = empty slot | `AddItemToInventory` looks for 0 |
| 4-6 = 7 | gold | stacks merge, count capped at 100000; buying in a shop takes from these stacks (trace town_store) |
| 4-6 = 1 | usable item | the Mage's inventory slots 1-5: 0x190 Goddess Tear (id 3), empty, 0x310 Angel Wing (id 6), 0x310 Angel Wing, 0x10 Herb (id 0) (checked in game, 2026-10-07). `sub_08014EB4` (quick-equip phase) checks for 1 |
| 4-6 = 2 | weapon | the Mage's two books; the Warrior's Long Sword = 0x120 (id 2) |
| 4-6 = 3 | armor (body) | Robe = id 0, Cotton Robe = id 2 (guess) |
| 4-6 = 4 | head | Bandana = id 1 |
| 4-6 = 5 | third slot | not seen yet |
| 4-6 = 6 | ? | Mithril = 0x60 (id 0) |
| 7-13 | item id | per category; constants in `include/constants/items.h`. `sub_08014EB4` looks it up via `sub_08002B8C(id \| 0xA0000)` |
| 14 | flag | set on equipped items and on the Robe that was just swapped out; cleared when picked up. Unknown |
| 26 | unappraised | "?robe" = 0x4200030, Robe = 0x4030. Items with it can't be equipped (`CanPutItemInSlot`) |
| 15-31 | count (stackables) | `AddItemToInventory`. Other items use these bits for something else (the "?robe" has 0x84 in bits 15-25) |

`gPlayers[i]` has copies: +0x2C is a 7-word copy of the stat block
(`sub_08016E24`), +0x48 a block of 6 u16 (`sub_08016E4C`; derived stats?).

Stat writes don't show up in watch.py: `SetStatBlock` copies with the BIOS
`CpuSet`, and mGBA's watchpoints don't fire for BIOS writes. Read the
memory instead (gdbstub `read()`).

Armor: de-equipping the starting armor took the armor stat from 3 to 0
(play, 2026-10-07). It's `gPlayers[i].defense` (+0x4A), 3 with the armor on.

## struct Player (0xD4 bytes, `gPlayers[4]`)

Indexed by player number (link play has up to 4).

| Offset | Size | Field | Evidence |
|---|---|---|---|
| +0x0A | u16 | ? | `SpawnPlayer` sets it to 4 |
| +0x0C | u16 | state | `SpawnPlayer` sets 0; `ApplyPendingDamage` ignores damage in state 9; `UseItem` does nothing in state 8 |
| +0x16 | u16 | ? | cleared by `SpawnPlayer` |
| +0x50 | s16 | maxHp | Mage: 22 = max HP in the menu (current 19 at +0x7A). Earlier: `UseItem` caps hp at it (32 at the time of the test) |
| +0x54 | u16 | pendingDamage[0] | subtracted from hp and cleared by `ApplyPendingDamage` |
| +0x56 | u16 | pendingDamage[1] | same |
| +0x58 | s32 | x (fixed point) | `SpawnPlayer`: spawn x << 15 |
| +0x5C | s32 | y (fixed point) | `SpawnPlayer`: (spawn y + 2) << 15 |
| +0x2C | u16 x4 | STR, VIT, INT, DEX | read from RAM: same values as gPlayerStats +0x24 (2026-10-07) |
| +0x34 | u16 | ? | 5, same as gPlayerStats +0x2C |
| +0x36 | s16 | resist[0] (element 1) | `CalcDamageToPlayer`: damage * (110 - x) / 60 |
| +0x38 | s16 | resist[1] (element 2, cold?) | same; element 2 can also inflict a status |
| +0x3A | s16 | resist[2] (element 3 = thunder) | read from RAM: 15 after 1 point in Thunder res (menu shows 15) |
| +0x3C | u32 | exp | read from RAM (306) |
| +0x40 | u32 | level | read from RAM (2) |
| +0x48 | s16 | attack | 24 = ATK in the status menu (Warrior); 0 on the Mage (menu ATK 0) |
| +0x4E | s16 | maxSp | 40 = the Mage's max SP (mana) in the status menu; 0 on the Warrior (2026-10-07) |
| +0x4A | s16 | defense | read from RAM: 3 = DEF in the status menu (both characters); `CalcDamageToPlayer` subtracts x/2 |
| +0x78 | s16 | sp? | 40 while the Mage's SP was full; the only other 40 in the struct. Confirm after casting |
| +0x7A | s16 | hp | watch.py, 2026-10-05: damage 6→3, death 3→0, respawn 32, heal 29→59→32 (capped) |
| +0xA6 | u16 | status ailment? | `CalcDamageToPlayer` sets it to the element (2) on a failed resist roll, with `PlaySE(0x29)` |
| +0xD0 | ptr | ? (object/sprite data) | `SpawnPlayer` writes the position into it |

Note: `CalcDamageToPlayer` gets the player as its 2nd argument; the offsets
above assume it's `&gPlayers[i]` (not yet checked against a caller).

## struct Enemy (0x94 bytes, `gEnemies[5]`)

`gEnemies` is a pointer; `gActiveEnemyMask` bit n marks slot n in use.
Found by reading `SpawnEnemy` / `ApplyEnemyDamage` after the
`monster_spawn` and `attack_hit` traces (2026-10-07).

| Offset | Size | Field | Evidence |
|---|---|---|---|
| +0x00 | u16 | slot | `SpawnEnemy` |
| +0x02 | u16 | type id | `SpawnEnemy` (from the spawn record), `IsEnemyTypeActive` |
| +0x0A | u16 | state | `ApplyEnemyDamage` sets 8 on death (players also use +0x0A/+0x0C states) |
| +0x10 | s32 | x (fixed point, <<12) | `SpawnEnemy`; +0x18 gets the same value (home/spawn x?) |
| +0x14 | s32 | y | `SpawnEnemy`; +0x1C the same (home/spawn y?) |
| +0x28 | u16 | pending damage | `ApplyEnemyDamage` |
| +0x38 | s16 | hp | `ApplyEnemyDamage` |
| +0x64.. | | attack data? | `CalcDamageToPlayer` reads the enemy's attack at +0x64+0x0A and element at +0x64+0x23 |

Next: `watch.py` on a slime's hp (`*gEnemies + slot*0x94 + 0x38`) during
an `attack_hit` phase would confirm these and find the player-attack code.

## Not variables

- 0x02007B80 and 0x02007C0C matched HP in the memory search, but they're
  thread-stack slots (the heap holds thread stacks). 0x02007C0C is the
  HUD's displayed HP, a local in `HudThread`. Stack addresses change
  between runs, so don't name them.
