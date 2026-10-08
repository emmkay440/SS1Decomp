#include "global.h"

extern u32 sub_080076A8(void);

u32 sub_0800EA5C(u32 param)
{
    u32 result;
    result = param;
    if (sub_080076A8() != 0)
    {
        result += 0x47;
    }
    return result;
}
