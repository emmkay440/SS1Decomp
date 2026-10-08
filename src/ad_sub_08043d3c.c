#include "global.h"

// ---- src/unknown.c (matches the ROM) ----
#include "global.h"

extern u8 gUnknown_030004C8;

void sub_08043D3C(u8 value)
{
    gUnknown_030004C8 = value;
}

