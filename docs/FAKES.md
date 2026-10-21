# Fake matches

Functions that match the ROM only with code the original very likely didn't
have: no-op blocks, extra variables or casts that only steer register or
stack allocation. Each one is marked in the source with a `FAKE` comment
(`grep -rn FAKE src`). They are worth another look later: a natural
version would replace the fake.

Rules:
- A fake must not change what the code does. Permuter candidates that read
  an uninitialized variable (for example an assignment placed in dead code
  before a `case` label) are not accepted.
- Mark the line (or the function's comment) with `FAKE (who found it): what
  it does`, and add a row here.
- "Maybe a macro": a `do { } while (0)` around real code can come from a
  macro in the original source, so it may not be fake.

| Function | File | Fake | Kind |
|---|---|---|---|
| `sub_080497D8` | src/save_select_mode2_seq.c | `angle++; angle--;` | fake |
| `sub_080150D4` | src/name_list.c | empty `do/while (0)` and `if (1) {}` | fake |
| `sub_0801F9C8` | src/npc_gift_f9c8.c | `int zero` variable for a constant 0 | fake |
| `sub_0801D5D8` | src/area_timed_traps.c | no-op `do/while` around the player loop | fake |
| `sub_0801CFB0` | src/area_traps.c | unused `framePtr` VLA pointer (stack layout) | fake |
| `sub_0800EDBC` | src/text_layer.c | `do { goto check; } while (0);`, index shifted in two steps | fake |
| `DisableDisplayLayers` | src/display.c | read through a `vu16 *`, second variable for the write | fake |
| `sub_080244F4` | src/link_lost.c | `do { ... } while (0)` around one call | maybe a macro |
| `sub_08013B94` | src/field_items.c | body inside `do/while (0)` | maybe a macro |
| `sub_0800336C` | src/oam_draw_tiles.c | loop body inside `do/while (0)` | maybe a macro |
| `EnemySpawnerThread` | src/enemy_spawner_thread.c | two `do/while (0)` around the setup/spawn block and the rest, empty `do {} while (0);` in the unkAA wrap test | maybe a macro / fake |
| `sub_0802BA34` | src/spell_status_near.c | `t` holds a copy of `res`, then of `j` in the first status loop | fake |
| `sub_08043378` | src/menu_help_line.c | `goto` into a `case` of a later switch (shares its `0x900E5` code) | maybe real |
| `sub_080352C4` | src/enemy_wave.c | empty `if (!gPlayers) {}` (array address, never true) | fake |
