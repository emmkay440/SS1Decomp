#include "global.h"
#include "heap.h"
#include "thread.h"

extern struct Thread *gUnknown_0300681C;   // pool of one thread

void sub_0803B20C(void);

void sub_0803BE28(u32 arg)
{
    struct Thread *thread = gUnknown_0300681C;
    u32 i;

    for (i = 0; i < 1; i++, thread++)
        if (!IsThreadInList(thread) && thread->priority == 0)
            break;
    if (i > 0)
        return;
    thread->priority = 0x46;
    thread->stack = Alloc(0x400);
    thread->sp = (u8 *)thread->stack + 0x3FC;
    thread->entry = sub_0803B20C;
    thread->onExit = NULL;
    CreateThread(thread, arg);
}

void sub_0803BE84(void)
{
    struct Thread *thread;
    u32 i;

    gUnknown_0300681C = thread = Alloc(sizeof(struct Thread) * 1);
    for (i = 0; i < 1; i++, thread++)
        thread->priority = 0;
}

// Waits for every thread of the pool to finish, then frees it.
void sub_0803BEA8(void)
{
    struct Thread *thread = gUnknown_0300681C;
    u32 i;

    for (i = 0; i < 1; i++, thread++)
        while (IsThreadInList(thread))
            WaitFrame();
    Free(gUnknown_0300681C);
    gUnknown_0300681C = NULL;
}
