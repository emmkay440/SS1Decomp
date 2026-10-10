#include "global.h"
#include "thread.h"
#include "window.h"

// Stops every live record of both arrays.
void sub_08021C44(void)
{
    u32 i;

    for (i = 0; i < 4; i++)
    {
        if ((gUnknown_03006424 >> i) & 1)
        {
            if (IsThreadInList(&gUnknown_03006418[i].thread))
                KillThread(&gUnknown_03006418[i].thread);
            gUnknown_03006424 &= ~(1 << i);
        }
    }
    for (i = 0; i < 4; i++)
    {
        if ((gUnknown_03006420 >> i) & 1)
        {
            if (IsThreadInList(&gUnknown_0300641C[i].thread))
                KillThread(&gUnknown_0300641C[i].thread);
            gUnknown_03006420 &= ~(1 << i);
        }
    }
}
