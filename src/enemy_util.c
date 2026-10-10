#include "global.h"
#include "area_state.h"
#include "enemy.h"
#include "thread.h"

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

// Three 12-byte records with an in-use mask; purpose unknown.
struct Unknown_03005DB0
{
    u32 unk0;
    u32 unk4;
    u32 unk8;
};

extern u32 gUnknown_03005DA8;
extern struct Unknown_03005DB0 gUnknown_03005DB0[3];

u32 sub_080074CC(void);
u32 sub_080076A8(void);
void sub_08005FC4(s32 x, s32 y, s16 *screenX, s16 *screenY, u32 e, u32 f);
void sub_08026E70(s32 x, s32 y, u32 value, u32 d);
bool32 SpawnEnemy(struct Unknown_03004998 *record);

// Index of the in-use record with (unk0, unk4) == (a, b) and unk8 set, or
// 0xFFFF.
u16 sub_0800EA00(u32 a, u16 b)
{
    u32 i;

    for (i = 0; i < 3; i++)
        if (((1 << i) & gUnknown_03005DA8) && gUnknown_03005DB0[i].unk0 == a
            && gUnknown_03005DB0[i].unk4 == b && gUnknown_03005DB0[i].unk8 != 0)
            return i;
    return 0xFFFF;
}

u32 sub_0800EA5C(u32 value)
{
    if (sub_080076A8() != 0)
        value += 0x47;
    return value;
}

// Shows `value` (at most 999) above the enemy, yOffset pixels down: the
// damage number? (guess)
void sub_0800EA74(struct Enemy *enemy, u16 value, u16 yOffset)
{
    s16 x, y;

    if (value > 999)
        value = 999;
    sub_08005FC4((enemy->x << 4) >> 16, (enemy->y << 4) >> 16, &x, &y, 0x30, 0);
    x -= 8;
    sub_08026E70(x, y + (s16)yOffset, value, 0);
}

// Keeps trying to spawn the enemy of record `slot`, then clears its bit.
void sub_0800EAD8(u16 slot)
{
    while (!SpawnEnemy(&gUnknown_03004998[slot]) && !sub_080074CC() && (gUnknown_030063D8->unk9C & 2))
        WaitFrame();
    WaitFrame();
    gUnknown_03005DD4 &= ~(1 << slot);
}
