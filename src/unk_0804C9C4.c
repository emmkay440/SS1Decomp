#include "global.h"
#include "heap.h"
#include "thread.h"

extern struct Thread gUnknownThread_03006930;
extern u8 gUnknown_03006920;

void sub_0804CA04(void);
void sub_0804CA6C(void);
bool32 sub_0800277C(void);
void sub_0804E1E4(void);
void sub_0804CA84(u32 arg);
void sub_0804CF64(void);
void sub_0804F944(void);
void sub_0804ED80(u32 arg);
void sub_0804F31C(u32 arg);
void sub_0804E1F0(void);

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

// Thread entry started by sub_0804C9C4: runs the screen picked by
// gUnknown_03006920, then signals the event that ends it.
void sub_0804CA04(void)
{
    if (gUnknown_03006920 == 0)
    {
        sub_0804E1E4();
        sub_0804CA84(4);
        sub_0804CF64();
    }
    else if (gUnknown_03006920 == 1)
    {
        sub_0804F944();
        sub_0804ED80(0);
        sub_0804F31C(0);
    }
    else if (gUnknown_03006920 == 2)
    {
        sub_0804F944();
        sub_0804ED80(0);
        sub_0804F31C(1);
    }
    if (sub_0800277C())
        SignalEvent(0x14);
    else
        SignalEvent(0x11201100);
}

void sub_0804CA6C(void)
{
    if (gUnknown_03006920 == 0)
        sub_0804E1F0();
}
