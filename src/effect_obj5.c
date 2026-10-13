#include "global.h"
#include "sprite_obj.h"
#include "thread.h"

extern vu32 gUnknown_030063C4;      // in-use mask of the effect pool

u32 sub_080074CC(void);
u32 sub_08007510(void);
u32 sub_08007604(void);
u32 sub_08007544(void);
bool32 sub_08005FC4(s32 x, s32 y, s16 *outX, s16 *outY, u32 e, u32 second);
u32 sub_08006008(u32 x, u32 y, u32 second);
u32 sub_08026C40(struct SpriteObj *obj, u16 a, u16 *frame, u16 *timer, u32 loop);
void *sub_08004344(u32 a, s32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);


// Effect thread: plays animation 7 of sprite record 0x100005 once at a map
// position (it only advances while it is drawn), then frees its pool slot.
// `pos` is y << 16 | x in pixels.
void sub_08018148(s32 pos, u32 slot)
{
    struct SpriteObj obj;
    u16 frame;
    u16 timer;
    s32 x;
    s32 y;
    u16 done;
    u32 second;

    sub_08026ADC(&obj, 0x100005, 1, -1);
    obj.unk1C[5] = 8;
    x = (pos & 0xFFFF) << 12;
    y = (pos >> 16) << 12;
    frame = 0;
    timer = 0;
    done = 0;
    while (!sub_080074CC() && !done)
    {
        if (!sub_08007510() && !sub_08007604() && (second = sub_08007544()) == 0)
        {
            s32 tileX = x >> 12;
            s32 tileY = y >> 12;
            u8 priority = sub_08006008(tileX, tileY, 0);
            s16 screenX;
            s16 screenY;

            done = sub_08026C40(&obj, 7, &frame, &timer, done);
            sub_08005FC4((s16)tileX, tileY, &screenX, &screenY, 0x10, second);
            sub_08004344(screenX, screenY + 1, 7, frame, priority,
                         obj.unk1C, obj.unk8, obj.unk0);
        }
        WaitFrame();
    }
    gUnknown_030063C4 &= ~(1 << slot);
}
