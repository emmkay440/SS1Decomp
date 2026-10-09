#include "global.h"
#include "heap.h"
#include "thread.h"

extern struct Thread *gUnknown_03006810;   // pool of 30 threads
extern struct Thread *gUnknown_03006814;   // pool of 4 threads

void sub_08033CC8(void);
void sub_0803279C(void);
void sub_080330E8(void);

void sub_08033DF4(void)
{
    u32 i;

    gUnknown_03006810 = Alloc(30 * sizeof(struct Thread));
    for (i = 0; i < 30; i++)
        gUnknown_03006810[i].priority = 0;
}

// Waits for every thread of the pool to finish, then frees it.
void sub_08033E20(void)
{
    struct Thread *pool = gUnknown_03006810;
    u32 i;

    for (i = 0; i < 30; i++)
        while (IsThreadInList(&pool[i]))
            WaitFrame();
    Free(gUnknown_03006810);
    gUnknown_03006810 = NULL;
}

// Starts sub_08033CC8 on the first free thread, with (a | b << 16,
// slot | c << 16).
void sub_08033E6C(u32 a, u32 b, u32 c)
{
    struct Thread *thread = gUnknown_03006810;
    u32 i = 0;

    while (TRUE)
    {
        if (i > 29)
            return;
        if (!IsThreadInList(thread) && thread->priority == 0)
            break;
        i++;
        thread++;
    }
    thread->priority = 0x3C;
    thread->stack = Alloc(0x400);
    thread->entry = sub_08033CC8;
    thread->sp = (u8 *)thread->stack + 0x3FC;
    thread->onExit = NULL;
    CreateThread(thread, a | (b << 16), i | (c << 16));
}

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
