#include "global.h"
#include "display.h"

extern s8 gUnknown_0300083A;
extern s8 gUnknown_0300083B;
extern s8 gUnknown_0300083C;
extern u8 gUnknown_0300083D;

s16 Random(void);
void sub_08005F60(u16 a, u16 b);

// Background scroll of save-select mode 3, with a random shake while
// gUnknown_0300083C counts down.
void sub_08049FB0(void)
{
    if (gUnknown_0300083C != 0)
    {
        gUnknown_0300083A = (s8)(Random() % gUnknown_0300083C) >> 3;
        gUnknown_0300083B = (s8)(Random() % gUnknown_0300083C) >> 3;
        gUnknown_0300083C--;
    }
    else
    {
        gUnknown_0300083A = 0;
        gUnknown_0300083B = 0;
    }
    gBgRegsBuffer[4] = -gUnknown_0300083A;
    gBgRegsBuffer[5] = -gUnknown_0300083B;
    gBgRegsBuffer[6] = (gUnknown_0300083D >> 2) - gUnknown_0300083A;
    gBgRegsBuffer[7] = -((u8)((gUnknown_0300083D >> 1) / 3) + gUnknown_0300083B);
    sub_08005F60(gBgRegsBuffer[4], gBgRegsBuffer[5]);
    if (gUnknown_0300083D == 0xF0)
        gUnknown_0300083D = 0;
    else
        gUnknown_0300083D++;
}
