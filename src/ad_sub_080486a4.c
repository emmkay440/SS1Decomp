#include "global.h"

#include "global.h"

extern u16 gBgRegsBuffer[];
extern u8 gUnknown_03000768;

void sub_080486A4(void)
{
    gUnknown_03000768 = 0;

    gBgRegsBuffer[6] = 0;
    gBgRegsBuffer[7] = 0;
    gBgRegsBuffer[4] = 0;
    gBgRegsBuffer[5] = 0;
    gBgRegsBuffer[2] = 0;
    gBgRegsBuffer[3] = 0;
    gBgRegsBuffer[0] = 0;
    gBgRegsBuffer[1] = 0;
}

