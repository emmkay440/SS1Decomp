# RAM variables found by research

Confirmed values go into `config/ram_symbols.txt` (globals) or a struct
layout below (fields). Each row says how it was found.

## Globals

| Name | Address | Size | How found / checked | Written by |
|---|---|---|---|---|
| gPlayers | 0x03004580 | 4 x 0xD4 | base of the struct holding hp (0x030045FA = gPlayers[0].hp); `UseItem` indexes it by `GetMultiplayerId() * 0xD4` | |

## struct Player (0xD4 bytes, `gPlayers[4]`)

Indexed by player number (link play has up to 4).

| Offset | Size | Field | Evidence |
|---|---|---|---|
| +0x0A | u16 | ? | `SpawnPlayer` sets it to 4 |
| +0x0C | u16 | state | `SpawnPlayer` sets 0; `ApplyPendingDamage` ignores damage in state 9; `UseItem` does nothing in state 8 |
| +0x16 | u16 | ? | cleared by `SpawnPlayer` |
| +0x50 | s16 | maxHp | `UseItem` caps hp at it (32 at the time of the test) |
| +0x54 | u16 | pendingDamage[0] | subtracted from hp and cleared by `ApplyPendingDamage` |
| +0x56 | u16 | pendingDamage[1] | same |
| +0x58 | s32 | x (fixed point) | `SpawnPlayer`: spawn x << 15 |
| +0x5C | s32 | y (fixed point) | `SpawnPlayer`: (spawn y + 2) << 15 |
| +0x7A | s16 | hp | watch.py, 2026-10-05: damage 6→3, death 3→0, respawn 32, heal 29→59→32 (capped) |
| +0xD0 | ptr | ? (object/sprite data) | `SpawnPlayer` writes the position into it |

## Not variables

- 0x02007B80 and 0x02007C0C matched HP in the memory search, but they're
  thread-stack slots (the heap holds thread stacks). 0x02007C0C is the
  HUD's displayed HP, a local in `HudThread`. Stack addresses change
  between runs, so don't name them.
