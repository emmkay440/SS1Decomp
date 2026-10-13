#include "global.h"
#include "enemy.h"
#include "player.h"

extern u32 gFrameCounter;

// Updates the player's distance (in pixels) and direction (sixteenths of a
// turn) to every active enemy; each enemy slot every other frame.
void sub_0800B4B4(struct Player *player)
{
    struct Enemy *enemy = gEnemies;
    u16 i;

    for (i = 0; i < MAX_ENEMIES; i++, enemy++)
    {
        if ((gFrameCounter & 1) == (i & 1) && (gActiveEnemyMask & (1 << i)))
        {
            s32 dx = (enemy->x - player->x) >> 12;
            s16 x = dx;
            s32 dy = (enemy->y - player->y) >> 12;
            s16 y = dy;
            u16 angle;

            player->enemyDistance[i] = Sqrt(dx * dx + dy * dy);
            angle = ArcTan2(x, y);
            if ((angle & 0xFFF) > 0x800)
                player->enemyDirection[i] = (angle >> 12) + 1;
            else
                player->enemyDirection[i] = angle >> 12;
            player->enemyDirection[i] &= 0xF;
        }
    }
}
