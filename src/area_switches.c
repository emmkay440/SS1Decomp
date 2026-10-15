#include "global.h"
#include "area_state.h"
#include "player.h"
#include "sprite_obj.h"
#include "thread.h"

int abs(int x);
u32 sub_080074CC(void);
u32 sub_08007510(void);
u32 sub_08007544(void);
u32 sub_080075AC(void);
u32 sub_08007604(void);
u32 sub_08001EC4(void);
u32 sub_08026C40(struct SpriteObj *obj, u16 anim, u16 *frame, u16 *timer, u32 loop);
bool32 sub_08005FC4(s32 x, s32 y, s16 *outX, s16 *outY, u32 e, u32 second);
u32 sub_08006008(u32 x, u32 y, u32 second);
void *sub_08004344(u32 a, s32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);

extern u32 gFrameCounter;

// Thread: draws the area's switches (unk30). A switch some player stands
// on (within 3 tiles, on a layer) plays animation 3 in a loop; once left
// it plays animation 3 to the end and then shows animation 2. Switches
// with unk6 set aren't animated. Palettes are reloaded every 8 frames.
void sub_0801D928(void)
{
    struct SpriteObj obj;
    s16 screenX;
    s16 screenY;
    u16 pressed[gUnknown_030063D8->unk8E];
    u16 lift[gUnknown_030063D8->unk8E];
    u16 frame[gUnknown_030063D8->unk8E];
    u16 timer[gUnknown_030063D8->unk8E];
    u16 done[gUnknown_030063D8->unk8E];
    u16 anim[gUnknown_030063D8->unk8E];
    struct AreaSwitch *sw;
    struct PlayerInfo *info;
    u32 i;
    u32 p;
    u16 priority;
    s32 layer;

    for (i = 0; i < gUnknown_030063D8->unk8E; i++)
    {
        pressed[i] = 0;
        lift[i] = 0;
        anim[i] = 3;
        frame[i] = 0;
        timer[i] = 0;
        done[i] = 0;
    }
    sub_08026ADC(&obj, gUnknown_030063D8->unk30->key, 13, 1);
    while (!sub_080074CC() && (gUnknown_030063D8->unk9C & 2))
    {
        if (!sub_080075AC() && !sub_08007510() && !sub_08007544() && !sub_08007604())
        {
            sw = gUnknown_030063D8->unk30;
            if (!(gFrameCounter & 7))
                sub_08026B74(&obj);
            for (i = 0; i < gUnknown_030063D8->unk8E; i++, sw++)
            {
                pressed[i] = 0;
                for (p = 0; p < sub_08001EC4(); p++)
                {
                    info = gPlayers[p].unkD0;
                    if (abs((info->x >> 3) - sw->x) > 3 || abs((info->y >> 3) - sw->y) > 3)
                        continue;
                    layer = info->layer;
                    if (layer > 0)
                    {
                        pressed[i] = 1;
                        break;
                    }
                }
                if (pressed[i])
                {
                    if (sw->unk6 == 0)
                    {
                        anim[i] = 3;
                        sub_08026C40(&obj, 3, &frame[i], &timer[i], 1);
                    }
                }
                else if (sw->unk6 == 0)
                {
                    done[i] = sub_08026C40(&obj, anim[i], &frame[i], &timer[i], 0);
                    if (done[i])
                        anim[i] = 2;
                }
                sub_08005FC4((s16)(sw->x << 3), (s16)(sw->y << 3), &screenX, &screenY, 16, 0);
                priority = sub_08006008(sw->x << 3, sw->y << 3, 0);
                sub_08004344(screenX, screenY - lift[i], anim[i], frame[i], priority, obj.unk1C, obj.unk8, obj.unk0);
            }
        }
        WaitFrame();
    }
}
