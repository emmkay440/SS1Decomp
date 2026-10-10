#include "global.h"
#include "heap.h"
#include "thread.h"

extern struct Thread *gUnknown_03006828;   // 3 threads
extern struct Thread *gUnknown_0300682C;
extern struct Thread *gUnknown_03006830;

// Waits for the threads of the three pools to finish, then frees the pools.
void sub_0803EC2C(void)
{
    struct Thread *thread;
    u32 i;
    u32 running;

    thread = gUnknown_03006828;
    for (i = 0; i < 3; i++, thread++)
        while (IsThreadInList(thread))
            WaitFrame();
    thread = gUnknown_0300682C;
    while (IsThreadInList(thread))
        WaitFrame();
    thread = gUnknown_03006830;
    while ((running = IsThreadInList(thread)) != 0)
        WaitFrame();
    thread->priority = running;
    Free(gUnknown_03006828);
    Free(gUnknown_0300682C);
    Free(gUnknown_03006830);
    gUnknown_03006828 = NULL;
    gUnknown_0300682C = NULL;
    gUnknown_03006830 = NULL;
}
