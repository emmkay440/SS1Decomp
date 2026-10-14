#include "global.h"
#include "area_state.h"
#include "display.h"
#include "enemy.h"
#include "player.h"
#include "sound.h"
#include "sprite_obj.h"
#include "thread.h"

extern const s16 gUnknown_0805289C[];   // sine table

u32 sub_08007670(void);
u32 sub_08007544(void);
u32 sub_08007510(void);
u32 sub_08007604(void);
u32 sub_080075AC(void);
u32 sub_08007750(void);
u32 sub_080074CC(void);
u32 sub_08007578(void);
u16 CalcDamageToPlayer(struct Enemy *enemy, struct Player *player);
bool32 sub_08005FC4(s32 x, s32 y, s16 *outX, s16 *outY, u32 e, u32 second);
u32 sub_08006008(u32 x, u32 y, u32 second);
void *sub_08004344(u32 a, s32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);

// Player +0x80: per enemy slot, Enemy.unk2C of the last projectile hit.
#define LAST_HIT(player) ((u32 *)(player)->unk80)

// Enemy thread (a guess: a projectile): sprite record enemy->unk8C with
// palette row unk7E, moving from the enemy's position along a fixed
// direction (sine table entries 0xB0 and 0x70) for 120 frames. Within 11
// pixels of the local player it hits once per enemy->unk2C: player state
// 7 and the enemy's damage added to pendingDamage[0].
void sub_08037B58(struct Enemy *enemy)
{
    struct SpriteObj obj;
    s16 screenX;
    s16 screenY;
    s16 timer;
    s32 x;
    s32 y;
    s32 dx;
    s32 dy;
    u16 distance;
    u16 priority;

    sub_08026ADC(&obj, enemy->unk8C, 0, -1);
    LoadPalette(0x15, obj.palettes + enemy->unk7E * 32, 3);
    LoadPalette(0x18, obj.palettes + 0x100, 1);
    obj.unk1C[5] = 8;
    x = enemy->x;
    y = enemy->y;
    timer = 120;
    while (--timer != -1 && !sub_08007544())
    {
        x += gUnknown_0805289C[0xB0] << 7;
        y += gUnknown_0805289C[0x70] << 7;
        dx = (x >> 12) - (gPlayers[GetMultiplayerId()].x >> 12);
        dy = (y >> 12) - (gPlayers[GetMultiplayerId()].y >> 12);
        distance = Sqrt(dx * dx + dy * dy);
        if (!sub_08007670() && distance <= 11
         && LAST_HIT(&gPlayers[GetMultiplayerId()])[enemy->slot] != enemy->unk2C
         && enemy->state != ENEMY_STATE_DEAD
         && gPlayers[GetMultiplayerId()].state != 9
         && !sub_08007544())
        {
            gPlayers[GetMultiplayerId()].state = 7;
            gPlayers[GetMultiplayerId()].unk70 = 0xFFFE;
            gPlayers[GetMultiplayerId()].pendingDamage[0] += CalcDamageToPlayer(enemy, &gPlayers[GetMultiplayerId()]);
            LAST_HIT(&gPlayers[GetMultiplayerId()])[enemy->slot] = enemy->unk2C;
        }
        if (!sub_08007510() && !sub_08007604() && !sub_08007544() && !sub_080075AC())
        {
            sub_08005FC4((s16)(x >> 12), (s16)(y >> 12), &screenX, &screenY, 0x30, 0);
            priority = sub_08006008(x >> 12, y >> 12, 0);
            sub_08004344(screenX, screenY, 12, 2, priority, obj.unk1C, obj.unk8, obj.unk0);
        }
        WaitFrame();
        if (sub_08007750() || sub_080074CC() || !(gUnknown_030063D8->unk9C & 2) || sub_08007578())
            break;
    }
    StopSE(0x39);
    GetCurrentThread()->priority = 0;
}
