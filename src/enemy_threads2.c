#include "global.h"
#include "heap.h"
#include "thread.h"

extern struct Thread *gUnknown_03006828;   // 3 slots (enemies)
extern struct Thread *gUnknown_0300682C;   // 1 thread
extern struct Thread *gUnknown_03006830;   // 1 thread
extern u32 gActiveEnemyMask;

void sub_0803E364(void);
void sub_0803ECBC(void);
void sub_0803EDD8(void);

// Allocates the three pools and marks every slot free.
void sub_0803F060(void)
{
    struct Thread *thread;
    u32 i;

    gUnknown_03006828 = Alloc(3 * sizeof(struct Thread));
    gUnknown_0300682C = Alloc(sizeof(struct Thread));
    gUnknown_03006830 = Alloc(sizeof(struct Thread));
    thread = gUnknown_03006828;
    for (i = 0; i < 3; i++, thread++)
        thread->priority = 0;
    thread = gUnknown_0300682C;
    thread->priority = 0;
    thread = gUnknown_03006830;
    thread->priority = 0;
}

// Starts enemy thread sub_0803E364 in a free slot (enemy slot i + 1).
void sub_0803F0B0(u32 arg)
{
    struct Thread *thread = gUnknown_03006828;
    u32 i = 0;

    while (TRUE)
    {
        if (i > 2)
            return;
        if (!IsThreadInList(thread) && thread->priority == 0)
            break;
        i++;
        thread++;
    }
    gActiveEnemyMask |= 1 << (i + 1);
    thread->priority = 0x46;
    thread->stack = Alloc(0x400);
    thread->sp = (u8 *)thread->stack + 0x3FC;
    thread->entry = sub_0803E364;
    thread->onExit = NULL;
    CreateThread(thread, arg, i);
}

// Waits for the thread to finish, then starts sub_0803ECBC on it.
void sub_0803F11C(u32 arg)
{
    struct Thread *thread = gUnknown_0300682C;

    while (IsThreadInList(thread))
        WaitFrame();
    thread->priority = 0x46;
    thread->stack = Alloc(0x400);
    thread->sp = (u8 *)thread->stack + 0x3FC;
    thread->entry = sub_0803ECBC;
    thread->onExit = NULL;
    CreateThread(thread, arg);
}

// Starts sub_0803EDD8 unless it's already running; FALSE if it was.
bool32 sub_0803F16C(s32 a, s32 b)
{
    struct Thread *thread = gUnknown_03006830;

    if (IsThreadInList(thread))
        return FALSE;
    thread->priority = 0x46;
    thread->stack = Alloc(0x400);
    thread->sp = (u8 *)thread->stack + 0x3FC;
    thread->entry = sub_0803EDD8;
    thread->onExit = NULL;
    CreateThread(thread, a, b);
    return TRUE;
}
