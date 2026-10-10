#include "global.h"
#include "thread.h"

extern u8 gUnknown_03006920;

bool32 sub_0800277C(void);
void sub_0804E1E4(void);
void sub_0804CA84(u32 arg);
void sub_0804CF64(void);
void sub_0804F944(void);
void sub_0804ED80(u32 arg);
void sub_0804F31C(u32 arg);

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
