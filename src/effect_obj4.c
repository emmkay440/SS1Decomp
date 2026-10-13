#include "global.h"
#include "sprite_obj.h"
#include "thread.h"

extern vu32 gUnknown_03006800;      // in-use mask of the gUnknown_03006790 pool

u32 sub_08007510(void);
u32 sub_08007604(void);
u32 sub_08007544(void);
bool32 sub_08005FC4(s32 x, s32 y, s16 *outX, s16 *outY, u32 e, u32 second);
u32 sub_08026C40(struct SpriteObj *obj, u16 a, u16 *frame, u16 *timer, u32 loop);
void *sub_08004344(u32 a, s32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);

// Effect thread: plays animation 0 of sprite record 0x100005 (palette 8)
// once at a map position, drawn through the sorted draw list, then frees
// its slot in the gUnknown_03006790 pool. `pos` is y << 16 | x in pixels.
void sub_08029ACC(u32 pos, u32 slot)
{
    struct SpriteObj obj;
    u16 frame;
    u16 timer;
    s16 screenX;
    s16 screenY;
    s16 x;
    s16 y;
    u16 done;
    u32 second;

    slot &= 0xFFFF;
    x = pos;
    y = pos >> 16;
    sub_08026ADC(&obj, 0x100005, 8, -1);
    obj.unk1C[5] = 8;
    timer = 0;
    frame = 0;
    do
    {
        done = sub_08026C40(&obj, 0, &frame, &timer, 0);
        if (!sub_08007510() && !sub_08007604() && (second = sub_08007544()) == 0)
        {
            sub_08005FC4(x, y, &screenX, &screenY, 0x30, second);
            sub_08004344(screenX, screenY + 1, 0, frame, second,
                         obj.unk1C, obj.unk8, obj.unk0);
        }
        WaitFrame();
    } while (!done);
    gUnknown_03006800 &= ~(1 << slot);
}
