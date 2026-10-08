#include "global.h"

#include "global.h"

extern u32 gUnknown_03002D60;

u32 sub_080010F4(u32 arg)
{
    if (arg == 0)
    {
        gUnknown_03002D60 = arg;
        return 0;
    }
    else
    {
        gUnknown_03002D60 = arg;
        return 1;
    }
}

