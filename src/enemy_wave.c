#include "global.h"
#include "area_state.h"
#include "enemy.h"
#include "player.h"
#include "sprite_obj.h"
#include "thread.h"

extern const s16 gUnknown_0805289C[];   // sine table

u32 sub_08007670(void);
u32 sub_08007544(void);
u32 sub_08007510(void);
u32 sub_080075AC(void);
u32 sub_080076A8(void);
u32 sub_08007750(void);
u32 sub_080074CC(void);
u32 sub_08007578(void);
u32 sub_080271D0(void);
bool32 sub_08005FC4(s32 x, s32 y, s16 *outX, s16 *outY, u32 e, u32 second);
u32 sub_08006008(u32 x, u32 y, u32 second);
u32 sub_08026C40(struct SpriteObj *obj, u16 a, u16 *frame, u16 *timer, u32 loop);
void *sub_08004344(u32 a, s32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);

// Player +0x80: per enemy slot, Enemy.unk2C of the last hit.
#define LAST_HIT(player) ((u32 *)(player)->unk80)

// Enemy thread (a guess: a shock wave): plays animation 16 of sprite record
// enemy->unk8C next to the enemy (moving it along when `flip` is set), then
// sends animation 17 along the x axis (left when `flip` is set) for up to
// 120 frames. It hits the local player once per enemy->unk2C when within
// 16 pixels vertically and 64 pixels behind its front: player state 7 and
// 150 (or 50) pending damage.
void sub_080352C4(struct Enemy *enemy, u16 flip)
{
    struct SpriteObj obj;
    s16 screenX;
    s16 screenY;
    u16 frame;
    u16 timer;
    s16 count;
    s32 angle;
    s32 x;
    s32 y;
    s32 d;
    u16 done;
    u8 priority;

    sub_08026ADC(&obj, enemy->unk8C, 0, -1);
    obj.unk1C[0] = 5;
    obj.unk1C[1] = 6;
    x = enemy->x;
    y = enemy->y;
    if (flip)
    {
        angle = 0x80;
        x -= 0x18000;
    }
    else
    {
        angle = 0;
        x += 0x8000;
    }
    count = 120;
    done = 0;
    timer = 0;
    frame = 0;
    do
    {
        if (flip)
            x += (gUnknown_0805289C[angle + 0x40] * 35 / 10) << 4;
        sub_08005FC4((s16)(x >> 12), (s16)(y >> 12), &screenX, &screenY, 0x30, 0);
        priority = sub_08006008(x >> 12, y >> 12, 0);
        done = sub_08026C40(&obj, 0x10, &frame, &timer, 0);
        if (!sub_080271D0() && !sub_08007544() && !sub_08007510() && !sub_080075AC())
            sub_08004344(screenX, screenY - 16, 0x10, frame, priority, obj.unk1C, obj.unk8, obj.unk0);
        WaitFrame();
        if (sub_08007750() || sub_080074CC() || !(gUnknown_030063D8->unk9C & 2) || sub_08007578())
            goto second;
    } while (!done);
second:
    while (--count != -1)
    {
        x += gUnknown_0805289C[angle + 0x40] << 6;
        y += gUnknown_0805289C[angle] << 6;
        d = (y - gPlayers[GetMultiplayerId()].y) >> 12;
        if (d < 0)
            d = -d;
        if ((d >> 3) <= 1 && !sub_08007670()
         && LAST_HIT(&gPlayers[GetMultiplayerId()])[enemy->slot] != enemy->unk2C
         && x < gPlayers[GetMultiplayerId()].x
         && x + 0x40000 > gPlayers[GetMultiplayerId()].x
         && gPlayers[GetMultiplayerId()].state != 9
         && !sub_08007544())
        {
            gPlayers[GetMultiplayerId()].state = 7;
            gPlayers[GetMultiplayerId()].unk70 = 0xFFFE;
            if (sub_080076A8())
                gPlayers[GetMultiplayerId()].pendingDamage[0] += 150;
            else
                gPlayers[GetMultiplayerId()].pendingDamage[0] += 50;
            if (!gPlayers)  // FAKE (decomp-permuter): a no-op test; the LAST_HIT store then adds 0x80 to the gPlayers register
            {
            }
            LAST_HIT(&gPlayers[GetMultiplayerId()])[enemy->slot] = enemy->unk2C;
        }
        sub_08005FC4((s16)(x >> 12), (s16)(y >> 12), &screenX, &screenY, 0x30, 0);
        priority = sub_08006008(x >> 12, y >> 12, 0);
        if (!sub_080271D0() && !sub_08007544() && !sub_08007510() && !sub_080075AC())
            sub_08004344(screenX, screenY - 16, 0x11, 0, priority, obj.unk1C, obj.unk8, obj.unk0);
        WaitFrame();
        if (sub_08007750() || sub_080074CC() || !(gUnknown_030063D8->unk9C & 2) || sub_08007578())
            break;
    }
}
