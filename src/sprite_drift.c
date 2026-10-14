#include "global.h"
#include "sprite_obj.h"

extern struct SpriteObj gUnknown_03001258;
extern u16 gUnknown_03001398[6];
extern u16 gUnknown_030013A8[6];
extern u32 gUnknown_030013D0[6];
extern u32 gUnknown_030013E8[5];
extern s32 gUnknown_03001400;

u32 sub_08026C40(struct SpriteObj *obj, u16 a, u16 *frame, u16 *timer, u32 loop);

#define STEP(i, after, rate)                                                              \
    if (gUnknown_03001400 > start + after)                                                          \
    {                                                                                     \
        sub_08026C40(&gUnknown_03001258, 10, &gUnknown_03001398[i], &gUnknown_030013A8[i], 1); \
        sub_08026B90(&gUnknown_03001258, gUnknown_030013D0[i], gUnknown_030013E8[i], 10, gUnknown_03001398[i]); \
        if (gUnknown_03001400 % rate == 0)                                                \
            gUnknown_030013D0[i]--;                                                       \
        if (gUnknown_03001400 % period == 0)                                               \
            gUnknown_030013E8[i]++;                                                       \
    }

// Per frame: five copies of the gUnknown_03001258 sprite (animation 10)
// that appear one after another (after 120, 320, 520, 780 and 1020
// frames) and drift: each moves left one pixel every 30, 29, .. 26 frames
// and down one pixel every 200 frames.
void sub_0804F0E8(void)
{
    s32 start = 120;
    s32 period = 200;

    STEP(0, 0, 30)
    STEP(1, 200, 29)
    STEP(2, 400, 28)
    STEP(3, 660, 27)
    STEP(4, 900, 26)
    gUnknown_03001400++;
}
