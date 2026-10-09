#include "global.h"
#include "heap.h"
#include "thread.h"

extern struct Thread *gUnknown_03006818;   // pool of 18 threads

void sub_08039EC8(void);

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
