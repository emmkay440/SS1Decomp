#include "global.h"
#include "heap.h"
#include "thread.h"

extern struct Thread gUnknownThread_030031B0;

void sub_08002790(void);

void sub_08002B58(void)
{
    u8 *stack = Alloc(0x100);

    gUnknownThread_030031B0.entry = sub_08002790;
    gUnknownThread_030031B0.sp = stack + 0xFC;
    gUnknownThread_030031B0.stack = stack;
    gUnknownThread_030031B0.priority = 1;
    gUnknownThread_030031B0.onExit = NULL;
    CreateThread(&gUnknownThread_030031B0);
}
