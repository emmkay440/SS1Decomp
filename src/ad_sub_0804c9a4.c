#include "global.h"

// ---- src/unknown.c (matches the ROM) ----
#include "global.h"

// 0x03000998 (RAM) has no name: refer to it as gUnknown_03000998 (declare it extern with a fitting type)
// 0x0300099A (RAM) has no name: refer to it as gUnknown_0300099A (declare it extern with a fitting type)
// 0x0300099C (RAM) has no name: refer to it as gUnknown_0300099C (declare it extern with a fitting type)
extern u16 gUnknown_03000998;
extern u16 gUnknown_0300099A;
extern u16 gUnknown_0300099C;

void sub_0804C9A4(void)
{
    gUnknown_03000998 = 0;
    gUnknown_0300099A = 0;
    gUnknown_0300099C = 0;
}

