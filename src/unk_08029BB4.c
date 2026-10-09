#include "global.h"
#include "heap.h"
#include "thread.h"

extern vu32 gUnknown_03006800;             // in-use mask of the pool
extern struct Thread *gUnknown_03006790;   // pool of 32 threads

void sub_08029ACC(void);

void sub_08029BB4(u32 a, u32 b)
{
    u32 i = 0;

    while (gUnknown_03006800 & (1 << i))
    {
        if (++i > 31)
            return;
    }
    if (i > 31)
        return;
    gUnknown_03006790[i].priority = 0x34;
    gUnknown_03006790[i].stack = Alloc(0x400);
    gUnknown_03006790[i].entry = sub_08029ACC;
    gUnknown_03006790[i].sp = (u8 *)gUnknown_03006790[i].stack + 0x3FC;
    gUnknown_03006790[i].onExit = NULL;
    CreateThread(&gUnknown_03006790[i], a | (b << 16), i);
    gUnknown_03006800 |= 1 << i;
}
