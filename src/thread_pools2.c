#include "global.h"
#include "heap.h"
#include "thread.h"

// A pool of 64 threads (gUnknown_0300005C) and a single thread
// (gUnknown_03000060): start / alloc / wait-and-free, as in thread_pools.c.

extern struct Thread *gUnknown_0300005C;   // 64 slots
extern struct Thread *gUnknown_03000060;   // 1 thread

void sub_08034F3C(void);
void sub_080352C4(void);

// Starts sub_08034F3C on the first free thread, with (a, slot | b << 16).
void sub_08035610(u32 a, u16 b)
{
    struct Thread *thread = gUnknown_0300005C;
    u32 i = 0;

    while (TRUE)
    {
        if (i > 63)
            return;
        if (!IsThreadInList(thread) && thread->priority == 0)
            break;
        i++;
        thread++;
    }
    thread->priority = 0x3C;
    thread->stack = Alloc(0x400);
    thread->entry = sub_08034F3C;
    thread->sp = (u8 *)thread->stack + 0x3FC;
    thread->onExit = NULL;
    CreateThread(thread, a, i | (b << 16));
}

void sub_08035678(void)
{
    u32 i;

    gUnknown_0300005C = Alloc(64 * sizeof(struct Thread));
    for (i = 0; i < 64; i++)
        gUnknown_0300005C[i].priority = 0;
}

void sub_080356A4(void)
{
    struct Thread *pool = gUnknown_0300005C;
    u32 i;

    for (i = 0; i < 64; i++)
        while (IsThreadInList(&pool[i]))
            WaitFrame();
    Free(gUnknown_0300005C);
    gUnknown_0300005C = NULL;
}

void sub_080356F0(u32 a, u16 b)
{
    if (!IsThreadInList(gUnknown_03000060))
    {
        gUnknown_03000060->priority = 0x3C;
        gUnknown_03000060->stack = Alloc(0x400);
        gUnknown_03000060->sp = (u8 *)gUnknown_03000060->stack + 0x3FC;
        gUnknown_03000060->entry = sub_080352C4;
        gUnknown_03000060->onExit = NULL;
        CreateThread(gUnknown_03000060, a, b);
    }
}

void sub_08035740(void)
{
    gUnknown_03000060 = Alloc(sizeof(struct Thread));
    gUnknown_03000060->priority = 0;
}

void sub_0803575C(void)
{
    while (IsThreadInList(gUnknown_03000060))
        WaitFrame();
    Free(gUnknown_03000060);
    gUnknown_03000060 = NULL;
}
