#include "global.h"
#include "heap.h"
#include "thread.h"

// Same pools as item_use_effect.c.
// Per-character pools of 16 effect threads with in-use masks: players 0-3
// use gUnknown_030067C0/gUnknown_030067F0 (0x200-byte stacks), 4 and up
// gUnknown_030067D0/gUnknown_030067A0 (0x400). The new thread gets
// (who, slot).

extern vu32 gUnknown_030067F0[4];
extern struct Thread *gUnknown_030067C0[4];
extern vu32 gUnknown_030067A0[];
extern struct Thread *gUnknown_030067D0[];

void sub_0802C798(void);

void sub_0802C904(u32 who)
{
    u32 i;

    if (who < 4)
    {
        i = 0;
        while (gUnknown_030067F0[who] & (1 << i))
        {
            if (++i > 15)
                return;
        }
        if (i > 15)
            return;
        gUnknown_030067C0[who][i].priority = 0x34;
        gUnknown_030067C0[who][i].stack = Alloc(0x200);
        gUnknown_030067C0[who][i].entry = sub_0802C798;
        gUnknown_030067C0[who][i].sp = (u8 *)gUnknown_030067C0[who][i].stack + 0x1FC;
        gUnknown_030067C0[who][i].onExit = NULL;
        CreateThread(&gUnknown_030067C0[who][i], who, i);
        gUnknown_030067F0[who] |= 1 << i;
    }
    else
    {
        who -= 4;
        i = 0;
        while (gUnknown_030067A0[who] & (1 << i))
        {
            if (++i > 15)
                return;
        }
        if (i > 15)
            return;
        gUnknown_030067D0[who][i].priority = 0x34;
        gUnknown_030067D0[who][i].entry = sub_0802C798;
        gUnknown_030067D0[who][i].stack = Alloc(0x400);
        gUnknown_030067D0[who][i].sp = (u8 *)gUnknown_030067D0[who][i].stack + 0x3FC;
        gUnknown_030067D0[who][i].onExit = NULL;
        CreateThread(&gUnknown_030067D0[who][i], who + 4, i);
        gUnknown_030067A0[who] |= 1 << i;
    }
}
