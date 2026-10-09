#include "global.h"
#include "heap.h"
#include "thread.h"

// Two fixed arrays of threads, started and killed by slot number.
extern struct Thread gUnknown_030065E0[];
extern struct Thread gUnknown_03006630[];

void sub_08023A94(void);
void sub_08023E74(void);

void sub_08026C80(u32 slot)
{
    gUnknown_030065E0[slot].priority = 0x3C;
    gUnknown_030065E0[slot].stack = Alloc(0x200);
    gUnknown_030065E0[slot].entry = sub_08023A94;
    gUnknown_030065E0[slot].sp = (u8 *)gUnknown_030065E0[slot].stack + 0x1FC;
    gUnknown_030065E0[slot].onExit = NULL;
    CreateThread(&gUnknown_030065E0[slot], slot);
}

void sub_08026CE4(u32 slot)
{
    if (IsThreadInList(&gUnknown_030065E0[slot]))
        KillThread(&gUnknown_030065E0[slot]);
}

void sub_08026D0C(u32 slot)
{
    gUnknown_03006630[slot].priority = 0x3C;
    gUnknown_03006630[slot].stack = Alloc(0x200);
    gUnknown_03006630[slot].entry = sub_08023E74;
    gUnknown_03006630[slot].sp = (u8 *)gUnknown_03006630[slot].stack + 0x1FC;
    gUnknown_03006630[slot].onExit = NULL;
    CreateThread(&gUnknown_03006630[slot], slot);
}

void sub_08026D70(u32 slot)
{
    if (IsThreadInList(&gUnknown_03006630[slot]))
        KillThread(&gUnknown_03006630[slot]);
}
