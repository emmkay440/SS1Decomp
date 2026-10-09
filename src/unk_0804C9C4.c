#include "global.h"
#include "heap.h"
#include "thread.h"

extern struct Thread gUnknownThread_03006930;

void sub_0804CA04(void);
void sub_0804CA6C(void);

void sub_0804C9C4(void)
{
    u8 *stack = Alloc(0x400);

    gUnknownThread_03006930.entry = sub_0804CA04;
    gUnknownThread_03006930.sp = stack + 0x3FC;
    gUnknownThread_03006930.stack = stack;
    gUnknownThread_03006930.priority = 50;
    gUnknownThread_03006930.prev = NULL;
    gUnknownThread_03006930.next = NULL;
    gUnknownThread_03006930.onExit = sub_0804CA6C;
    CreateThread(&gUnknownThread_03006930, 0);
}
