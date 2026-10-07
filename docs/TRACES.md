# Trace sessions: what has been analyzed

Sessions live in `traces/` (gitignored; the user records them, see
RESEARCH.md). Analyze one with `tools/research/analyze.py SESSION`
(phases within a session) and compare against all other sessions to find
functions that never ran before.

## Done (findings are in config/names.txt and docs/variables.md)

boot_and_menus, killing_slime, NPC, picking_up_item, leveling_up,
option_menu, option_menu_exit, warrior_equpping_items, plus the RAM reads
of the Mage character.

## Partly analyzed (2026-10-07): named GetStorage/SetStorage, FindFieldItemNear,
InitFieldItems, StartSpellEffect; gold = category 7; storage in gPlayerStats +0xEC

- **mage_character** (ice attack freezing an enemy, weapon switching):
  new functions sub_08029560, sub_08029688, sub_080297D4, sub_080298C0,
  sub_08029A0C (ice magic / projectiles / freeze?), sub_08029C44 (only while
  switching weapons), sub_08016D4C, sub_0802A0FC, sub_0802BFB0,
  sub_0802C174, sub_0802F058, sub_0802F0B4, sub_08014D98, sub_08016EDC.
- **town_store** (enter shop, sell robe, buy herb, buy goddess tear, leave):
  buying calls sub_08040DBC = take an amount out of category-7 stacks, so
  **category 7 items are gold** (cap 100000). Selling: sub_08040FC0
  (smallest stack). Only-in-phase: sub_0801B17C (entering shop/storage),
  sub_080451B8 (buying herb). Shop UI: sub_0803FD3C, sub_0803FFFC,
  sub_08043CFC, sub_08043DB8.
- **town_storage** (store herb, move herbs between pages/slots): the
  4 x 5 x 3 item grid at gUnknown_030004A8 is **storage (4 pages of 5x3)**.
  sub_08040B2C runs on every move; sub_08013C68 writes the storage back
  (ApplyMenuChanges, menu page 5/other).
- **interacting_dungeon** (tomb/statue, monument of lightning, going down a
  level): sub_08013D44 (interaction), the monument starts the enemy spawner
  (StartEnemySpawner/SpawnEnemy) plus sub_08018474, sub_08018600,
  sub_08026C78; going down a level loads a map (sub_08005F50,
  sub_08013CE4, sub_08027228, sub_080265A0, sub_0802173C, sub_08018940,
  sub_08021124, sub_080210CC).
