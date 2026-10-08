#include "global.h"

u32 sub_080076A8(void);

u32 sub_0800EA5C(u32 value)
{
    if (sub_080076A8() != 0)
        value += 0x47;
    return value;
}
