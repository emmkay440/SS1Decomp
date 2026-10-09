#include "global.h"
#include "heap.h"
#include "thread.h"

// Three small thread pools. A slot is free while its priority is 0; the
// free functions wait for every slot to finish before releasing the pool.
// gUnknown_03000068's threads are enemies (they set gActiveEnemyMask).

extern struct Thread *gUnknown_03000064;   // 3 slots
extern struct Thread *gUnknown_03000068;   // 2 slots
extern struct Thread *gUnknown_0300006C;   // 3 slots
extern u32 gActiveEnemyMask;

void sub_08037B58(void);
void sub_08037D98(void);
void sub_0803861C(void);

// Starts sub_08037B58 in a free slot of gUnknown_03000064.
void sub_080388D0(u32 arg)
{
    struct Thread *thread = gUnknown_03000064;
    u32 i;

    for (i = 0; i < 3; i++, thread++)
        if (thread->priority == 0)
            break;
    if (i > 2)
        return;
    thread->priority = 0x3C;
    thread->stack = Alloc(0x400);
    thread->sp = (u8 *)thread->stack + 0x3FC;
    thread->entry = sub_08037B58;
    thread->onExit = NULL;
    CreateThread(thread, arg);
}

void sub_08038924(void)
{
    struct Thread *thread;
    u32 i;

    gUnknown_03000064 = thread = Alloc(sizeof(struct Thread) * 3);
    for (i = 0; i < 3; i++, thread++)
        thread->priority = 0;
}

void sub_08038948(void)
{
    struct Thread *thread = gUnknown_03000064;
    u32 i;

    for (i = 0; i < 3; i++, thread++)
        while (thread->priority != 0)
            WaitFrame();
    Free(gUnknown_03000064);
}

void sub_08038980(void)
{
    struct Thread *thread;
    u32 i;

    gUnknown_03000068 = thread = Alloc(sizeof(struct Thread) * 2);
    for (i = 0; i < 2; i++, thread++)
        thread->priority = 0;
}

void sub_080389A4(void)
{
    struct Thread *thread = gUnknown_03000068;
    u32 i;

    for (i = 0; i < 2; i++, thread++)
        while (thread->priority != 0)
            WaitFrame();
    Free(gUnknown_03000068);
}

// Starts enemy thread sub_08037D98 in a free slot (enemy slot i + 1).
void sub_080389DC(u32 arg)
{
    struct Thread *thread = gUnknown_03000068;
    u32 i;

    for (i = 0; i < 2; i++, thread++)
        if (thread->priority == 0)
            break;
    if (i > 1)
        return;
    gActiveEnemyMask |= 1 << (i + 1);
    thread->priority = 0x3C;
    thread->stack = Alloc(0x400);
    thread->sp = (u8 *)thread->stack + 0x3FC;
    thread->entry = sub_08037D98;
    thread->onExit = NULL;
    CreateThread(thread, arg, i);
}

void sub_08038A44(void)
{
    struct Thread *thread;
    u32 i;

    gUnknown_0300006C = thread = Alloc(sizeof(struct Thread) * 3);
    for (i = 0; i < 3; i++, thread++)
        thread->priority = 0;
}

void sub_08038A68(void)
{
    struct Thread *thread = gUnknown_0300006C;
    u32 i;

    for (i = 0; i < 3; i++, thread++)
        while (thread->priority != 0)
            WaitFrame();
    Free(gUnknown_0300006C);
}

void sub_08038AA0(s32 a, s32 b)
{
    struct Thread *thread = gUnknown_0300006C;
    u32 i;

    for (i = 0; i < 3; i++, thread++)
        if (thread->priority == 0)
            break;
    if (i > 2)
        return;
    thread->priority = 0x3C;
    thread->stack = Alloc(0x400);
    thread->sp = (u8 *)thread->stack + 0x3FC;
    thread->entry = sub_0803861C;
    thread->onExit = NULL;
    CreateThread(thread, a, b);
}
