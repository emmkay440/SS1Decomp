#include "global.h"
#include "area_state.h"

// 1-based index of the enabled list (mask unk84) that holds `id`; if none
// does, of the first enabled list; 0 if no list is enabled.
u32 sub_08019B98(u32 id)
{
    u32 i, j;

    for (i = 0; i < 5; i++)
    {
        if ((gUnknown_030063D8->unk84 >> i) & 1)
        {
            for (j = 0; j < gUnknown_030063D8->unk7A[i]; j++)
            {
                if (gUnknown_030063D8->unk48[i][j] == id)
                    return i + 1;
            }
        }
    }
    for (i = 0; i < 5; i++)
    {
        if ((gUnknown_030063D8->unk84 >> i) & 1)
            return i + 1;
    }
    return 0;
}
