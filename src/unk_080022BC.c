#include "global.h"
#include "heap.h"
#include "thread.h"

extern struct Thread gUnknownThread_03003150;

void sub_08001FD0(void);

void sub_080022BC(void)
{
    u8 *stack = Alloc(0x400);

    gUnknownThread_03003150.entry = sub_08001FD0;
    gUnknownThread_03003150.sp = stack + 0x3FC;
    gUnknownThread_03003150.stack = stack;
    gUnknownThread_03003150.next = NULL;
    gUnknownThread_03003150.prev = NULL;
    gUnknownThread_03003150.priority = 1;
    gUnknownThread_03003150.onExit = NULL;
    CreateThread(&gUnknownThread_03003150, 0);
}
