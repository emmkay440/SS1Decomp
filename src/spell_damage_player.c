#include "global.h"
#include "player.h"
#include "sound.h"

struct Unknown_080FBB84
{
    s16 power;         // base damage factor
    u16 element;       // 0 none; 1-3 pick the target's resistance
    u16 cost[6];
};                     // size 0x10

extern const struct Unknown_080FBB84 gUnknown_080FBB84[];

int abs(int x);
s16 Random(void);
u32 sub_08007544(void);
u32 sub_080075AC(void);

// Damage of spell `kind` cast by `caster` on the player `target` (PvP?).
// The level (0-5) comes from caster->unk80[8] (values 2 to 37, six per
// level in turn). Kind 1 may also put status 4 (with a timer of 260 -
// resistance) in a free status slot of the target: chance level * 5 -
// (resistance - 70) in 100, sound 0x29. Damage = (level + 1) * power *
// (stat + 300) * (100..149) / 120000, scaled by (110 - resistance) / 60
// for an element; at least 1.
s16 sub_0802DA2C(u16 kind, u16 stat, struct Player *target, struct Player *caster)
{
    u32 damage;
    u32 level;
    u32 roll;
    s32 power;
    s32 resist;
    const struct Unknown_080FBB84 *table;

    table = gUnknown_080FBB84;
    power = table[kind].power;
    switch (*(u16 *)&caster->unk80[8])
    {
    case 2:
    case 8:
    case 14:
    case 20:
    case 26:
    case 32:
        level = 0;
        break;
    case 3:
    case 9:
    case 15:
    case 21:
    case 27:
    case 33:
        level = 1;
        break;
    case 4:
    case 10:
    case 16:
    case 22:
    case 28:
    case 34:
        level = 2;
        break;
    case 5:
    case 11:
    case 17:
    case 23:
    case 29:
    case 35:
        level = 3;
        break;
    case 6:
    case 12:
    case 18:
    case 24:
    case 30:
    case 36:
        level = 4;
        break;
    case 7:
    case 13:
    case 19:
    case 25:
    case 31:
    case 37:
        level = 5;
        break;
    }
    if (kind == 1)
    {
        u32 five = level * 5;
        s32 offset = target->resist[1] - 70;
        u32 chance = five - offset;

        if (chance > abs((s16)(Random() % 100)))
        {
            u32 i;

            for (i = 0; i < 3; i++)
            {
                if (target->unk1C[i] == 0 || target->unk1C[i] == 4)
                {
                    target->unk1C[i] = 4;
                    target->unk24[i] = 260 - target->resist[1];
                    i = 3;
                    if (!sub_080075AC() && !sub_08007544())
                        PlaySE(0x29);
                }
            }
        }
    }
    roll = (u32)abs(Random()) % 50 + 100;
    damage = power * (level + 1) * (stat + 300) * roll / 120000;
    switch (gUnknown_080FBB84[kind].element)
    {
    case 1:
        resist = target->resist[0];
        break;
    case 2:
        resist = target->resist[1];
        break;
    case 3:
        resist = target->resist[2];
        break;
    }
    if (gUnknown_080FBB84[kind].element != 0)
        damage = damage * (110 - resist) / 60;
    if (damage == 0)
        damage = 1;
    return damage;
}
