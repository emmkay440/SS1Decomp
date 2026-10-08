#include "global.h"
#include "heap.h"
#include "thread.h"

extern struct Thread gSaveSelectThread;

void SaveSelectThread(void);
void sub_08048428(void);
void sub_0804632C(void);

void StartSaveSelect(void)
{
    u8 *stack = Alloc(0x400);

    gSaveSelectThread.entry = SaveSelectThread;
    gSaveSelectThread.sp = stack + 0x3FC;
    gSaveSelectThread.stack = stack;
    gSaveSelectThread.priority = 50;
    gSaveSelectThread.prev = NULL;
    gSaveSelectThread.next = NULL;
    gSaveSelectThread.onExit = sub_0804632C;
    CreateThread(&gSaveSelectThread, 0);
}

// onExit of the save select thread
void sub_0804632C(void)
{
    sub_08048428();
}
