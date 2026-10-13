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

// Effect thread: draws frame 0 of animation 1 of sprite record 0x100005 at
// a map position for 30 frames, then frees its pool slot.
void sub_08018058(s32 pos, u32 slot)
{
    struct SpriteObj obj;
    s16 screenX;
    s16 screenY;
    s32 x;
    s32 y;
    u8 priority;
    u32 second;
    u16 frames;
    s32 fixedX;
    s32 fixedY;

    sub_08026ADC(&obj, 0x100005, 1, -1);
    obj.unk1C[5] = 8;
    x = 0xFFFF;
    frames = 30;
    x &= pos;
    y = pos >> 16;
    fixedX = x << 16;
    fixedY = y << 16;
    while (!sub_080074CC() && frames-- > 0)
    {
        if (!sub_08007510() && !sub_08007604() && (second = sub_08007544()) == 0)
        {
            priority = sub_08006008(x, y, 0);
            sub_08005FC4(fixedX >> 16, fixedY >> 16, &screenX, &screenY, 0x10, second);
            sub_08004344(screenX, screenY + 1, 1, 0, priority, obj.unk1C, obj.unk8, obj.unk0);
        }
        WaitFrame();
    }
    gUnknown_030063C4 &= ~(1 << slot);
}
