#include "global.h"
#include "enemy.h"

// A spawn slot's record (src/enemy_spawn_thread.c), as these functions
// see its last word.
struct SpawnRecordBits
{
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC_0:8;
    u32 unkC_8:6;      // set to all ones by a hit
    u32 type:8;        // +0xC bits 14-21: enemy type
    u32 damage:9;      // damage taken before the enemy spawned
    u32 unkC_31:1;
};

extern u16 gUnknown_03005DD4;                      // spawn slots in use
extern struct SpawnRecordBits *gUnknown_03004998;  // their records

u32 sub_08007638(void);
void sub_08018290(s32 x, s32 y);
void sub_08018314(s32 x, s32 y);
void sub_08018398(s32 x, s32 y);

// A hit of `damage` from `playerId` on the active enemy of `type` (if
// `kill`, it takes all its HP). The enemy goes to state 7; `status` 1-6
// adds a status or starts an effect at its position. Without such an
// enemy the damage is added to a spawn slot waiting to spawn that type.
bool32 sub_0800E74C(u32 type, u16 damage, u16 playerId, u16 kill, u16 status)
{
    struct Enemy *enemy;
    u32 i;

    for (i = 0; i < MAX_ENEMIES; i++)
    {
        enemy = &gEnemies[i];
        if ((gActiveEnemyMask & (1 << i)) && enemy->type == type)
            break;
    }
    if (i >= MAX_ENEMIES)
    {
        for (i = 0; i < 16; i++)
        {
            if (((gUnknown_03005DD4 >> i) & 1) && gUnknown_03004998[i].type == type)
                break;
        }
        if (i < 16)
        {
            gUnknown_03004998[i].unkC_8 = 0x3F;
            gUnknown_03004998[i].damage += damage;
        }
        return TRUE;
    }
    if (kill)
    {
        if (enemy->state != ENEMY_STATE_DEAD)
        {
            enemy->pendingDamage = enemy->hp;
            enemy->state = 7;
            enemy->unk34 = playerId;
        }
    }
    else
    {
        enemy->pendingDamage += damage;
        enemy->state = 7;
        if (enemy->hp - enemy->pendingDamage <= 0)
            enemy->unk34 = playerId;
    }
    if (enemy->unk76 != 3)
    {
        enemy->unk4C = 0;
        enemy->unk4A = 0;
    }
    if (status != 0 && !sub_08007638())
    {
        switch (--status)
        {
        case 0:
            enemy->statusTimer[status] = (120 - enemy->unk7A) / 9 * 60;
            enemy->statusMask |= 1 << status;
            break;
        case 1:
            enemy->statusMask |= 1 << status;
            break;
        case 3:
            sub_08018290(enemy->x, enemy->y);
            break;
        case 4:
            sub_08018314(enemy->x, enemy->y);
            break;
        case 5:
            sub_08018398(enemy->x, enemy->y);
            break;
        }
    }
    return TRUE;
}

// Not called.
bool32 sub_0800E924(void)
{
    u32 mask = gActiveEnemyMask;

    if (mask != 0)
        mask = TRUE;
    return mask;
}
