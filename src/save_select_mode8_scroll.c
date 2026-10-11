#include "global.h"
#include "display.h"

extern u16 gUnknown_03000998;
extern const u16 gUnknown_0805289C[];

// Background scroll of save-select mode 8: BG2/BG3 vertical from a counter
// that speeds up with `time`, horizontal from the curve table.
void sub_0804C4B0(u16 angle, u16 time)
{
    s16 y = (s16)gUnknown_03000998 * 2 / 3;
    s32 x;

    gBgRegsBuffer[5] = y * 16;
    gBgRegsBuffer[7] = y * 4;
    x = (s16)gUnknown_0805289C[(s16)((s16)angle % 255)] >> 4;
    gBgRegsBuffer[4] = x;
    gBgRegsBuffer[6] = x;
    if ((s16)time < 60)
        gUnknown_03000998 += 1;
    else if ((s16)time < 120)
        gUnknown_03000998 += 2;
    else if ((s16)time < 180)
        gUnknown_03000998 += 4;
    else if ((s16)time < 240)
        gUnknown_03000998 += 6;
    else
        gUnknown_03000998 += 8;
}
