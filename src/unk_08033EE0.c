#include "global.h"
#include "heap.h"
#include "thread.h"

extern struct Thread *gUnknown_03006814;   // pool of 4 threads

void sub_0803279C(void);
void sub_080330E8(void);

// Start sub_0803279C on a free thread of slots 0-1 / sub_080330E8 on slots
// 2-3; the slot goes in the top half of the second argument.
void sub_08033EE0(s32 a, s32 b)
{
    struct Thread *thread = gUnknown_03006814;
    u32 i;
    u8 *stack;

    for (i = 0; i <= 1; i++, thread++)
    {
        if (!IsThreadInList(thread) && thread->priority == 0)
        {
            thread->priority = 0x3C;
            stack = Alloc(0x400);
            thread->stack = stack;
            thread->entry = sub_0803279C;
            thread->sp = stack + 0x3FC;
            thread->onExit = NULL;
            CreateThread(thread, a, (i << 16) | b);
            break;
        }
    }
}

void sub_08033F48(s32 a, s32 b)
{
    struct Thread *thread = gUnknown_03006814;
    u32 i;
    u8 *stack;

    thread += 2;
    for (i = 2; i <= 3; i++, thread++)
    {
        if (!IsThreadInList(thread) && thread->priority == 0)
        {
            thread->priority = 0x3C;
            stack = Alloc(0x400);
            thread->stack = stack;
            thread->entry = sub_080330E8;
            thread->sp = stack + 0x3FC;
            thread->onExit = NULL;
            CreateThread(thread, a, (i << 16) | b);
            break;
        }
    }
}
