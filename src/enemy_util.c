#include "global.h"
#include "enemy.h"

// 16 entries of something that also carries an enemy type id.
struct Unknown_03004998
{
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC_0:14;
    u32 type:8;
    u32 unkC_22:10;
};

extern struct Unknown_03004998 *gUnknown_03004998;
extern u16 gUnknown_03005DD4;

bool32 IsEnemyTypeActive(u16 type)
{
    u32 i;
    struct Enemy *enemy;

    if (type == 0)
        return FALSE;

    enemy = gEnemies;
    for (i = 0; i < MAX_ENEMIES; i++, enemy++)
    {
        if (gActiveEnemyMask & (1 << i) && enemy->type == type)
            return TRUE;
    }
    for (i = 0; i < 16; i++)
    {
        if ((gUnknown_03005DD4 >> i) & 1 && gUnknown_03004998[i].type == type)
            return TRUE;
    }
    return FALSE;
}
