#include "global.h"
#include "player.h"
#include "player_stats.h"

struct Unknown_080FBB84
{
    s16 power;         // base damage factor
    u16 element;       // 0 none; 1-3 pick the target's resistance
    u16 cost[6];
};                     // size 0x10

extern const struct Unknown_080FBB84 gUnknown_080FBB84[];

int abs(int x);
s16 Random(void);
s32 sub_08016D4C(void);   // returns u16; this file read it as an int

// Damage of spell `kind` on a target. `values` are the target's u16 values
// (struct Enemy from unk64 on): [9] weakness flag, [10]-[12] resistance to
// elements 1-3. With a level, damage = (level + 1) * power * (skill + 10) *
// (INT + 200) * (100..119) / 350000; without, (skill * 3 + 15) * power *
// (INT + 200) * (100..149) / 1000000. An element scales it by (110 -
// resistance) / 60; kind 3 does 150% on a target with values[9] == 1.
s16 sub_08029688(u16 kind, u16 level, u16 *values)
{
    u32 damage;
    u32 roll;
    u16 resist;
    s32 skill = sub_08016D4C();
    s32 intStat;
    s32 power;
    const struct Unknown_080FBB84 *table;
    const struct Unknown_080FBB84 *entry;

    GetMultiplayerId();
    intStat = (s16)gPlayerStats.int_;
    table = gUnknown_080FBB84;
    entry = &table[kind];
    power = entry->power;
    if (level != 0)
    {
        roll = (u32)abs(Random()) % 20 + 100;

        damage = (level + 1) * power * (skill + 10) * (intStat + 200) * roll / 350000;
        switch (entry->element)
        {
        case 1:
            resist = values[10];
            break;
        case 2:
            resist = values[11];
            break;
        case 3:
            resist = values[12];
            break;
        }
    }
    else
    {
        roll = (u32)abs(Random()) % 50 + 100;

        damage = (skill * 3 + 15) * power * (intStat + 200) * roll / 1000000;
    }
    switch (gUnknown_080FBB84[kind].element)
    {
    case 1:
        resist = values[10];
        break;
    case 2:
        resist = values[11];
        break;
    case 3:
        resist = values[12];
        break;
    }
    if (gUnknown_080FBB84[kind].element != 0)
        damage = damage * (110 - resist) / 60;
    if (values[9] == 1 && kind == 3)
        damage = damage * 150 / 100;
    return damage;
}
