#include "global.h"
#include "enemy.h"
#include "player.h"
#include "sound.h"

void *memcpy(void *dest, const void *src, u32 size);
int abs(int x);

extern const u16 gUnknown_080548EC[5];   // reach per level

u32 sub_08007544(void);
u32 sub_080075AC(void);
void sub_080297D4(u32 playerId, struct Enemy *enemy, u16 power, u16 kind);
void StartSpellEffect(s32 x, s32 y, u32 playerId, u16 kind, u16 level);

// Area attack of `playerId` around (x, y): every active enemy (not in state
// 9) within the level's reach on both axes counts. On the attacker's own
// console the enemy takes the hit (sub_080297D4) unless it is dead or was
// already hit by this attack (unk30), with sound 0x1A and a spell effect;
// on the others only the attacker's id is recorded. Returns TRUE if any
// enemy was in reach.
bool32 sub_08029560(s32 x, s32 y, u32 playerId, u16 level, u16 kind)
{
    u16 reach[5];
    struct Player *player = &gPlayers[GetMultiplayerId()];
    s16 range;
    bool32 found;
    u16 localId;
    u32 i;

    memcpy(reach, gUnknown_080548EC, sizeof(reach));
    localId = GetMultiplayerId();
    if (level > 4)
        level = 4;
    found = FALSE;
    range = reach[level];
    for (i = 0; i < MAX_ENEMIES; i++)
    {
        if (gActiveEnemyMask & (1 << i))
        {
            struct Enemy *enemy = &gEnemies[i];
            u32 state = enemy->state;

            if (state != 9)
            {
                s16 dx = (enemy->x - x) >> 12;
                s16 dy = (enemy->y - y) >> 12;

                if (abs(dx) < range && abs(dy) < range)
                {
                    if (localId == playerId)
                    {
                        if (state != ENEMY_STATE_DEAD && enemy->unk30 != player->unk7C)
                        {
                            sub_080297D4(playerId, enemy, level, kind);
                            if (!sub_08007544() && !sub_080075AC())
                                PlaySE(0x1A);
                            StartSpellEffect(x, y, playerId, kind, level);
                        }
                    }
                    else
                    {
                        enemy->unk34 = playerId;
                    }
                    found = TRUE;
                }
            }
        }
    }
    return found;
}
