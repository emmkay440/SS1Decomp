#include "global.h"

extern u32* gUnknown_03000064;

void *Alloc(u32 size);

void sub_08038924(void)
{
    u32* r4;
    u32 p0;
    u32 r1;
    u32 r2;

    r4 = (u32*)0x03000064;
    p0 = (u32)Alloc(0x78);
    *r4 = p0;

    r1 = 0;
    r2 = 0;
    while (r1 <= 2) {
        *(u32*)(p0 + 8) = r2;
        r1++;
        p0 += 0x28;
    }
}

