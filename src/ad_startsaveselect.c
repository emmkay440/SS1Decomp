#include "global.h"
#include "heap.h"
#include "thread.h"

extern struct Thread gUnknown_030068C0;
extern void SaveSelectThread(void);

void sub_0804632C(void);

void StartSaveSelect(void)
{
    u8 *stack = Alloc(0x400);

    gUnknown_030068C0.entry = SaveSelectThread;
    gUnknown_030068C0.sp = stack + 0x3FC;
    gUnknown_030068C0.stack = stack;
    gUnknown_030068C0.priority = 50;
    gUnknown_030068C0.prev = NULL;
    gUnknown_030068C0.next = NULL;
    gUnknown_030068C0.onExit = sub_0804632C;
    CreateThread(&gUnknown_030068C0, 0);
}
