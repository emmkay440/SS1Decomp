#include "global.h"

#include "global.h"

extern u32 gUnknown_030031A8;

u32 sub_0800277C(void)
{
    u32 value;
    u32 result = 0;

    value = gUnknown_030031A8;
    if (value == 2)
    {
        result = 1;
    }

    return result;
}

