#include "global.h"
#include "thread.h"

extern u16 gUnknown_03003CA0;      // character advance

void *GetDataRecord(u32 key);
u32 sub_0800ED80(u16 *str);
void sub_0800EB30(u16 *str, s32 x, s32 y);
bool32 sub_08022A88(void);

// Draws the string of data record `key` (at +0xA) centered on (120, 124)
// for `frames` frames, except while sub_08022A88 is true.
void sub_080270D8(u32 key, s32 frames)
{
    s32 x = 120;
    s32 y = 124;
    s32 yOffset = 0;
    u8 *record = GetDataRecord(key);
    s32 xOffset = -((s32)(sub_0800ED80((u16 *)(record + 10)) * gUnknown_03003CA0) / 2);

    while (--frames != -1)
    {
        if (!sub_08022A88())
            sub_0800EB30((u16 *)(record + 10), x + xOffset, y + yOffset);
        WaitFrame();
    }
}
