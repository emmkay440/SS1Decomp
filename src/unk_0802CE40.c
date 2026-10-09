#include "global.h"
#include "heap.h"
#include "thread.h"

// Player-only effect starter; same pools as StartItemUseEffect
// (src/item_use_effect.c).
extern vu32 gUnknown_030067F0[4];
extern struct Thread *gUnknown_030067C0[4];

void sub_0802CA30(void);

void sub_0802CE40(u32 who)
{
    u32 i = 0;

    while (gUnknown_030067F0[who] & (1 << i))
    {
        if (++i > 15)
            return;
    }
    if (i > 15)
        return;
    gUnknown_030067C0[who][i].priority = 0x34;
    gUnknown_030067C0[who][i].stack = Alloc(0x400);
    gUnknown_030067C0[who][i].entry = sub_0802CA30;
    gUnknown_030067C0[who][i].sp = (u8 *)gUnknown_030067C0[who][i].stack + 0x400 - 4;
    gUnknown_030067C0[who][i].onExit = NULL;
    CreateThread(&gUnknown_030067C0[who][i], who, i);
    gUnknown_030067F0[who] |= 1 << i;
}
