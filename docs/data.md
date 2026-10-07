# ROM data

Formats found so far in the data region (0x0805289C-). Nothing here is
split out of `data/data.s` yet.

## Data archive `gDataArchive` (0x080FC200, "SSDT")

```
u32 magic        "SSDT" (0x54445353)
u32 version?     1
u32 offset[24]   per category, from the archive start
```

`GetDataRecord(category << 16 | index)` returns
`section + *(u32 *)(section + 4 + index * 4)` where
`section = archive + offset[category]` (categories 18-20 are special
cases; 21 and > 23 return NULL).

| Category | Contents | Evidence |
|---|---|---|
| 5 | weapon records (index = weapon id) | `CanEquipItem` |
| 6 | armor records | `CanEquipItem` |
| 7 | head gear records | `CanEquipItem` |
| 10 | usable item records | `sub_08014EB4` |

Records seem to start with the name as u16 characters (not the same
encoding as the player name).

### Weapon record (category 5)

| Offset | Size | Field | Evidence (2026-10-07) |
|---|---|---|---|
| +0x150 | u8 | ATK bonus | Short Sword 7, Short Spear 9, Tomahawk 15 = the in-game ATK change; Long Sword 19 |
| +0x152 | u8 | required skill level | Long Sword 1, others 0; `CanEquipItem` compares it with the skill for the weapon kind. The Warrior (Sword 0) couldn't equip the Long Sword |
| +0x159 | u8 | weapon kind | Short/Long Sword 1, Short Spear 3, Tomahawk 6. Warrior: 1-2 use skill Sword, 3-4 Spear, 5-6 Axe |
| +0x15A | u8 | class mask (bit = class) | Swords 1 (Warrior), Short Spear 5, Tomahawk 9 |
| +0x15C | u32 | price? | 120, 430, 120, 110 |

### Armor / head record (categories 6, 7)

| Offset | Size | Field | Evidence |
|---|---|---|---|
| +0xF0 | u8 | DEF bonus | Robe 3, Cotton Robe 5 = the in-game DEF change |
| +0xF1 | u8 | required STR | `CanEquipItem` compares it with `gPlayers[i].str` |
| +0xF8 | u8 | class mask | 0x0F (all) for Robe, Cotton Robe, Bandana |
| +0xFC | u32 | price? | Robe 120, Cotton Robe 360, Bandana 220 |
