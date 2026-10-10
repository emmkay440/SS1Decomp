#include "global.h"
#include "heap.h"
#include "thread.h"

extern vu32 gUnknown_0300680C;             // in-use mask of the pool
extern struct Thread *gUnknown_03000058;   // pool of 16 threads

void sub_08030894(void);

void sub_08031250(u32 a, u32 b)
{
    u32 i = 0;

    while (gUnknown_0300680C & (1 << i))
    {
        if (++i > 15)
            return;
    }
    if (i > 15)
        return;
    gUnknown_03000058[i].entry = sub_08030894;
    gUnknown_03000058[i].stack = Alloc(0x400);
    gUnknown_03000058[i].sp = (u8 *)gUnknown_03000058[i].stack + 0x3FC;
    gUnknown_03000058[i].priority = 0x3D;
    gUnknown_03000058[i].prev = NULL;
    gUnknown_03000058[i].next = NULL;
    gUnknown_03000058[i].onExit = NULL;
    CreateThread(&gUnknown_03000058[i], i | (a << 16), b);
    gUnknown_0300680C |= 1 << i;
}

// Allocates the pool.
void sub_080312E0(void)
{
    struct Thread **pool = &gUnknown_03000058;

    *pool = Alloc(16 * sizeof(struct Thread));
    gUnknown_0300680C = 0;
}

// Waits until every thread of the pool has finished, then frees it.
void sub_08031304(void)
{
    while (gUnknown_0300680C != 0)
        WaitFrame();
    Free(gUnknown_03000058);
    gUnknown_03000058 = NULL;
}
