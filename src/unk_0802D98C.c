#include "global.h"
#include "heap.h"
#include "thread.h"

// Effect starter on the second set of pools (gUnknown_030067D0 /
// gUnknown_030067A0, see src/item_use_effect.c).
extern vu32 gUnknown_030067A0[];
extern struct Thread *gUnknown_030067D0[];

void sub_0802D53C(void);

void sub_0802D98C(u32 who, u32 arg)
{
    u32 i = 0;

    while (gUnknown_030067A0[who] & (1 << i))
    {
        if (++i > 15)
            return;
    }
    if (i > 15)
        return;
    gUnknown_030067D0[who][i].priority = 0x34;
    gUnknown_030067D0[who][i].stack = Alloc(0x400);
    gUnknown_030067D0[who][i].entry = sub_0802D53C;
    gUnknown_030067D0[who][i].sp = (u8 *)gUnknown_030067D0[who][i].stack + 0x3FC;
    gUnknown_030067D0[who][i].onExit = NULL;
    CreateThread(&gUnknown_030067D0[who][i], who, i | (arg << 16));
    gUnknown_030067A0[who] |= 1 << i;
}
