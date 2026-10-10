#include "global.h"
#include "heap.h"
#include "thread.h"

extern struct Thread *gUnknown_03006818;   // pool of 18 threads

void sub_08039B3C(void);
void sub_08039EC8(void);

void sub_0803A2B0(void)
{
    struct Thread *thread;
    u32 i;

    gUnknown_03006818 = thread = Alloc(sizeof(struct Thread) * 18);
    for (i = 0; i < 18; i++, thread++)
        thread->priority = 0;
}

// Waits for every thread of the pool to finish, then frees it.
void sub_0803A2D8(void)
{
    struct Thread *thread = gUnknown_03006818;
    u32 i;

    for (i = 0; i < 18; i++, thread++)
        while (IsThreadInList(thread))
            WaitFrame();
    Free(gUnknown_03006818);
    gUnknown_03006818 = NULL;
}

void sub_0803A318(s32 a, s32 b)
{
    struct Thread *thread = gUnknown_03006818;
    u32 i = 0;

    while (TRUE)
    {
        if (i > 17)
            return;
        if (!IsThreadInList(thread) && thread->priority == 0)
            break;
        i++;
        thread++;
    }
    thread->priority = 0x46;
    thread->stack = Alloc(0x400);
    thread->sp = (u8 *)thread->stack + 0x3FC;
    thread->entry = sub_08039B3C;
    thread->onExit = NULL;
    CreateThread(thread, a, b);
}

void sub_0803A37C(s32 a, s32 b)
{
    struct Thread *thread = gUnknown_03006818;
    u32 i = 0;

    while (TRUE)
    {
        if (i > 17)
            return;
        if (!IsThreadInList(thread) && thread->priority == 0)
            break;
        i++;
        thread++;
    }
    if (b == 0)
        b = 1;
    else
        b = 7;
    thread->priority = 0x46;
    thread->stack = Alloc(0x400);
    thread->sp = (u8 *)thread->stack + 0x3FC;
    thread->entry = sub_08039EC8;
    thread->onExit = NULL;
    CreateThread(thread, a, b);
}

// Starts sub_08039EC8 on the first free thread of the pool.
void sub_0803A3E4(s32 a, s32 b)
{
    struct Thread *thread = gUnknown_03006818;
    u32 i;
    u8 *stack;

    for (i = 0; i < 18; i++, thread++)
    {
        if (!IsThreadInList(thread) && thread->priority == 0)
        {
            thread->priority = 0x46;
            stack = Alloc(0x400);
            thread->stack = stack;
            thread->sp = stack + 0x3FC;
            thread->entry = sub_08039EC8;
            thread->onExit = NULL;
            CreateThread(thread, a, b);
            break;
        }
    }
}
