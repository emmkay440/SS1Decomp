#include "global.h"

// 0 if a == b, 1 if a > b, 2 if a < b.
u32 sub_08043DB8(u16 a, u16 b)
{
    u32 result = 0;

    if (a != b)
    {
        result = 2;
        if (a > b)
            result = 1;
    }
    return result;
}
