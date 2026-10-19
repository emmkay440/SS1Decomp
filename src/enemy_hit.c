#include "global.h"
#include "enemy.h"
#include "player.h"
#include "sound.h"

void *memcpy(void *dest, const void *src, u32 size);

s16 Random(void);
u32 sub_08007544(void);
u32 sub_080075AC(void);
u16 sub_08029688(u16 kind, u16 power, u16 *values);

// A player's hit on an enemy: with kind 1, unk3E is set by chance (power
// against the enemy's unk7A); the damage from sub_08029688 is added to
// pendingDamage; the enemy is put in state 7 and copied into a free record
// of the player's unkC8 list.
void sub_080297D4(u32 playerId, struct Enemy *enemy, u16 power, u16 kind)
{
    struct Player *player = &gPlayers[playerId];
    s16 i;

    if (kind == 1)
    {
        s32 chance = (s16)(power * 5 - (enemy->unk7A - 75));
        s32 roll = (s16)(Random() % 100);

        if (roll < 0)
            roll = -roll;
        if (chance > roll)
        {
            enemy->unk3E = kind;
            if (!sub_08007544() && !sub_080075AC())
                PlaySE(0x29);
        }
    }
    enemy->unk2A = sub_08029688(kind, power, &enemy->unk64);
    enemy->pendingDamage += enemy->unk2A;
    enemy->unk30 = player->unk7C;
    enemy->state = 7;
    enemy->unk34 = playerId;
    enemy->unk36 = 1;
    for (i = 0; i < 5; i++)
    {
        s32 index = (s16)((player->unkA2 + i) % 5);
        struct Enemy *records = player->unkC8;
        struct Enemy *record = (struct Enemy *)(index * sizeof(struct Enemy) + (u32)records);

        if (record->slot == 0xFFFF)
        {
            memcpy(record, enemy, sizeof(struct Enemy));
            break;
        }
    }
}
