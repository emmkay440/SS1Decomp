#include "global.h"
#include "area_state.h"
#include "display.h"
#include "enemy.h"
#include "player.h"
#include "sound.h"
#include "sprite_obj.h"
#include "thread.h"

void *memcpy(void *dest, const void *src, u32 size);

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
u32 sub_080076A8(void);
void *sub_08004344(u32 a, s32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);

// Player +0x80: per enemy slot, Enemy.unk2C of the last projectile hit.
#define LAST_HIT(player) ((u32 *)(player)->unk80)

extern const u16 gUnknown_08054948[3];   // directions (sine table index)
extern const u16 gUnknown_0805494E[3];   // animations, by direction

// Enemy thread (a guess: a second kind of projectile): sprite record
// 0x100020 flying from the enemy's position in direction `dir` (0-2) for
// 120 frames, twice as fast when sub_080076A8() is set, with sound 0x56.
// Within 17 pixels of the local player it hits once per enemy->unk2C, as
// in sub_08037B58.
void sub_0803861C(struct Enemy *enemy, u32 dir)
{
    struct SpriteObj obj;
    u16 angles[3];
    u16 anims[3];
    s16 screenX;
    s16 screenY;
    s32 x;
    s32 y;
    s16 timer;
    s32 dx;
    s32 dy;
    u16 distance;
    u16 priority;

    memcpy(angles, gUnknown_08054948, sizeof(angles));
    memcpy(anims, gUnknown_0805494E, sizeof(anims));
    sub_08026ADC(&obj, 0x100020, 0, -1);
    obj.unk1C[0] = 14;
    x = enemy->x;
    y = enemy->y;
    timer = 120;
    if (!sub_08007544() && !sub_080075AC())
        PlaySE(0x56);
    while (--timer != -1)
    {
        if (sub_080076A8())
        {
            x += gUnknown_0805289C[angles[dir] + 0x40] << 6;
            y += gUnknown_0805289C[angles[dir]] << 6;
        }
        else
        {
            x += gUnknown_0805289C[angles[dir] + 0x40] << 5;
            y += gUnknown_0805289C[angles[dir]] << 5;
        }
        dx = (x >> 12) - (gPlayers[GetMultiplayerId()].x >> 12);
        dy = (y >> 12) - (gPlayers[GetMultiplayerId()].y >> 12);
        distance = Sqrt(dx * dx + dy * dy);
        if (!sub_08007670() && distance <= 17
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
            LoadPalette(30, obj.palettes, 1);
            sub_08005FC4((s16)(x >> 12), (s16)(y >> 12), &screenX, &screenY, 0x30, 0);
            priority = sub_08006008(x >> 12, y >> 12, 0);
            sub_08004344(screenX, screenY, anims[dir], 2, priority, obj.unk1C, obj.unk8, obj.unk0);
        }
        WaitFrame();
        if (sub_08007750() || sub_080074CC() || !(gUnknown_030063D8->unk9C & 2) || sub_08007578())
            break;
    }
    GetCurrentThread()->priority = 0;
}
