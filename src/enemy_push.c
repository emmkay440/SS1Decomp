#include "global.h"
#include "enemy.h"
#include "map.h"
#include "player.h"

extern u32 gFrameCounter;

extern const u16 gUnknown_080FB4B8[];   // enemy body size by Enemy.unk82
extern const u8 gUnknown_080FB730[];    // angle index by direction
extern const u8 gUnknown_080FB720[];    // by angle index: first argument of sub_08005A2C
extern const u16 gUnknown_080FB9FC[];   // direction by sub_08005A2C's result - 1
extern const s16 gUnknown_0805289C[];   // sine table, 16 entries per angle index; cosine is 64 entries on

// What Player.unkD0 points to, as far as sub_0800B594 reads it.
struct PlayerUnkD0
{
    u16 unk0;
    u16 unk2;
    u16 unk4_0:4;
    u16 unk4_4:6;
    u16 unk4_10:6;
} __attribute__((packed, aligned(2)));

u16 sub_08005A2C(u32 a, s32 x, s32 y, u32 d);

// The same update as sub_0800B4B4, for enemies on the player's layer that
// are alive (others get distance 0x7FFF); and when an enemy's body
// overlaps the player, the player is pushed away from it.
void sub_0800B594(struct Player *player)
{
    struct Enemy *enemy = gEnemies;
    u16 i;

    for (i = 0; i < MAX_ENEMIES; i++, enemy++)
    {
        if ((gFrameCounter & 1) == (i & 1) && (gActiveEnemyMask & (1 << i)))
        {
            s32 dx;
            s16 x;
            s32 dy;
            s16 y;
            u16 distance;
            u16 angle;
            u16 fraction;
            u16 size;
            u16 direction;
            u32 layer;

            if (enemy->unk76 != 3 || gMapLayer_03003910.unk68 != 8)
            {
                if (enemy->state == 8 || enemy->unk26 != player->layer || enemy->state == 9)
                {
                    player->enemyDistance[i] = 0x7FFF;
                    continue;
                }
            }
            else
            {
                if (enemy->state == 0 || enemy->unk26 != player->layer)
                {
                    player->enemyDistance[i] = 0x7FFF;
                    continue;
                }
            }
            dx = (enemy->x - player->x) >> 12;
            x = dx;
            dy = (enemy->y - player->y) >> 12;
            y = dy;
            player->enemyDistance[i] = distance = Sqrt(dx * dx + dy * dy);
            angle = ArcTan2(x, y);
            size = (gUnknown_080FB4B8[enemy->unk82] + 8) >> 1;
            fraction = angle << 4;
            if (fraction > 0x8000)
                player->enemyDirection[i] = (angle >> 12) + 1;
            else
                player->enemyDirection[i] = angle >> 12;
            player->enemyDirection[i] &= 0xF;
            direction = player->enemyDirection[i];
            if (distance < size)
            {
                u8 index;
                u8 arg;
                u32 flag;
                u16 hit;

                distance = size - distance;   // how far to push
                dx = distance * gUnknown_0805289C[(index = gUnknown_080FB730[direction]) * 16 + 64];
                dy = distance * gUnknown_0805289C[index * 16];
                dx += player->x;
                dy += player->y;
                arg = gUnknown_080FB720[index];
                flag = 0;
                layer = ((struct PlayerUnkD0 *)player->unkD0)->unk4_4;
                if (layer == 0)
                    flag = 1;
                hit = sub_08005A2C(arg, dx, dy, flag);
                if (hit != 0)
                {
                    hit--;
                    hit = gUnknown_080FB9FC[hit];
                    dx = distance * gUnknown_0805289C[hit * 16 + 64];
                    dy = distance * gUnknown_0805289C[hit * 16];
                    player->x += dx;
                    player->y += dy;
                }
            }
        }
    }
}
