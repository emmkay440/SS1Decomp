#include "global.h"
#include "display.h"

extern s8 gUnknown_030008C9;
extern u8 gUnknown_030008CA;
extern u8 gUnknown_030008CC;

// Per-frame background scroll of save-select mode 5: BG3 from
// gUnknown_030008C9/CA, BG1 and BG2 from a counter that wraps at 240.
void sub_0804AD94(void)
{
    gBgRegsBuffer[6] = 8 - gUnknown_030008C9;
    gBgRegsBuffer[7] = -(s8)gUnknown_030008CA;
    gBgRegsBuffer[4] = gUnknown_030008CC >> 3;
    gBgRegsBuffer[5] = -gUnknown_030008CC;
    gBgRegsBuffer[2] = gUnknown_030008CC >> 3;
    gBgRegsBuffer[3] = -gUnknown_030008CC >> 1;
    gUnknown_030008CC += 10;
    if (gUnknown_030008CC > 239)
        gUnknown_030008CC = 0;
}
