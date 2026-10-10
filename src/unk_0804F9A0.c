#include "global.h"
#include "sprite_obj.h"
#include "thread.h"

extern struct SpriteObj gUnknown_03001258;

void sub_0804E5A4(u8 a, s8 level, u8 c);
void sub_0804F0E8(void);
u32 sub_0804F99C(void);

// Shows the gUnknown_03001258 sprite for `frames` frames, ramping
// sub_0804E5A4's level up over the first 64 frames and down over the last
// 64, then waits `hold` more frames. Returns FALSE if sub_0804F99C
// interrupts it (it never does: that function returns 0).
bool32 sub_0804F9A0(s32 frames, s32 hold, u32 frame, u32 c)
{
    s32 i;

    for (i = 0; i < frames; i++)
    {
        if (i < 64)
            sub_0804E5A4(3, i >> 1, c);
        if (i > frames - 64)
            sub_0804E5A4(3, (frames - i) >> 1, c);
        sub_08026B90(&gUnknown_03001258, 120, 148, frame, 0);
        sub_0804F0E8();
        if (sub_0804F99C())
            return FALSE;
        WaitFrame();
    }
    for (i = 0; i < hold; i++)
    {
        sub_0804F0E8();
        if (sub_0804F99C())
            return FALSE;
        WaitFrame();
    }
    return TRUE;
}

// The same ramp with sub_0804E5A4(1, level, 0) and no sprite.
bool32 sub_0804FA40(s32 frames, s32 hold)
{
    s32 i;

    for (i = 0; i < frames; i++)
    {
        if (i < 64)
            sub_0804E5A4(1, i >> 1, 0);
        if (i > frames - 64)
            sub_0804E5A4(1, (frames - i) >> 1, 0);
        if (sub_0804F99C())
            return FALSE;
        WaitFrame();
    }
    for (i = 0; i < hold; i++)
    {
        if (sub_0804F99C())
            return FALSE;
        WaitFrame();
    }
    return TRUE;
}
