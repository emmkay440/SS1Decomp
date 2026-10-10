#include "global.h"
#include "display.h"

extern u16 gUnknown_03000956;

// Per-frame background scroll of save-select mode 7, from a frame counter.
void sub_0804BD0C(void)
{
    s16 y = (s16)gUnknown_03000956 * 2 / 3;
    u16 *regs = gBgRegsBuffer;
    u32 counter = gUnknown_03000956;

    regs[4] = -(counter * 4);
    regs[5] = y + 1;
    counter++;
    regs[6] = -counter;
    regs[7] = y >> 2;
    gUnknown_03000956 = counter;
}
