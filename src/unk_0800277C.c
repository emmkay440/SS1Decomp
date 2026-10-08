#include "global.h"

extern u32 gUnknown_030031A8;

bool32 sub_0800277C(void)
{
    bool32 result = FALSE;

    if (gUnknown_030031A8 == 2)
        result = TRUE;
    return result;
}
