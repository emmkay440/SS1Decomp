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
