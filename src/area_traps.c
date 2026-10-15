#include "global.h"
#include "area_state.h"
#include "player.h"
#include "sprite_obj.h"
#include "thread.h"

int abs(int x);
u16 Random(void);
u32 sub_080074CC(void);
u32 sub_08007510(void);
u32 sub_08007544(void);
u32 sub_080075AC(void);
u32 sub_08007604(void);
u32 sub_08007670(void);
u32 sub_08001EC4(void);
u32 sub_08026C40(struct SpriteObj *obj, u16 anim, u16 *frame, u16 *timer, u32 loop);
bool32 sub_08005FC4(s32 x, s32 y, s16 *outX, s16 *outY, u32 e, u32 second);
void *sub_08004344(u32 a, s32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);

extern u32 gFrameCounter;

// Player +0x98: the trigger id of the last trap hit.
#define LAST_TRAP(player) (*(u32 *)&(player)->unk80[0x18])

// Thread: draws the area's traps (unk24) and runs them. A player within a
// tile of a trap sets it off: it plays its animation to the end, then
// counts the frame back down and re-arms. The local player standing on it
// (not in states 7-9) takes 1/16 of max HP once per trigger id.
void sub_0801CFB0(void)
{
    struct SpriteObj obj;
    s16 screenX;
    s16 screenY;
    u16 frame[gUnknown_030063D8->unk88];
    u16 timer[gUnknown_030063D8->unk88];
    u16 (*framePtr)[gUnknown_030063D8->unk88];  // fake (found by decomp-permuter)
    u8 idle[gUnknown_030063D8->unk88];
    u8 armed[gUnknown_030063D8->unk88];
    u32 trigger[gUnknown_030063D8->unk88];
    struct AreaTrap *trap;
    struct PlayerInfo *info;
    u32 i;
    u32 p;
    u8 priority;

    for (i = 0; i < gUnknown_030063D8->unk88; i++)
    {
        frame[i] = 0;
        timer[i] = 0;
        idle[i] = 1;
        trigger[i] = Random();
        armed[i] = 0;
    }
    sub_08026ADC(&obj, gUnknown_030063D8->unk24->key, 13, 1);
    while (!sub_080074CC() && (gUnknown_030063D8->unk9C & 2))
    {
        if (!sub_080075AC() && !sub_08007544())
        {
            if (!sub_08007510() && !sub_08007544() && !sub_08007604() && !(gFrameCounter & 7))
                sub_08026B74(&obj);
            trap = gUnknown_030063D8->unk24;
            for (i = 0; i < gUnknown_030063D8->unk88; i++, trap++)
            {
                for (p = 0; p < sub_08001EC4(); p++)
                {
                    info = gPlayers[p].unkD0;
                    if (abs((info->x >> 3) - trap->x) > 1 || abs((info->y >> 3) - trap->y) > 1)
                        continue;
                    idle[i] = 0;
                    if (!sub_08007670() && LAST_TRAP(&gPlayers[p]) != trigger[i] && p == GetMultiplayerId()
                     && gPlayers[p].state != 7 && gPlayers[p].state != 8 && gPlayers[p].state != 9)
                    {
                        gPlayers[p].state = 7;
                        gPlayers[p].pendingDamage[0] += gPlayers[p].maxHp >> 4;
                        LAST_TRAP(&gPlayers[p]) = trigger[i];
                        gPlayers[p].unk70 = 0xFFFE;
                    }
                    if (armed[i] == 1)
                    {
                        trigger[i]++;
                        armed[i] = 0;
                    }
                }
                if (idle[i] == 0)
                    idle[i] = sub_08026C40(&obj, trap->anim, &frame[i], &timer[i], 0);
                else if (frame[i] != 0)
                    frame[i]--;
                else
                    armed[i] = 1;
                sub_08005FC4((s16)(trap->x << 3), (s16)(trap->y << 3), &screenX, &screenY, 16, 0);
                priority = 3;
                if (!sub_08007510() && !sub_08007544() && !sub_08007604())
                {
                    sub_08026B74(&obj);
                    sub_08004344(screenX, screenY, trap->anim, (*(framePtr = &frame))[i], priority, obj.unk1C, obj.unk8, obj.unk0);
                }
            }
        }
        WaitFrame();
    }
}
