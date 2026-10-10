#include "global.h"
#include "area_state.h"
#include "heap.h"
#include "thread.h"

void sub_08029068(u32 arg);

// onExit of the thread sub_080210CC starts: makes sure event 3000 has been
// sent, then frees unk8.
void sub_0802173C(void)
{
    if (gUnknown_030063D8->unkAB == 0)
    {
        sub_08029068(1);
        SignalEvent(3000);
        gUnknown_030063D8->unkAB = 1;
    }
    Free(gUnknown_030063D8->unk8);
    gUnknown_030063D8->unk8 = NULL;
}
