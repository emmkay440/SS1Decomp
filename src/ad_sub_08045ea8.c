#include "global.h"

struct Unknown_030005E0 {
    u8 unk0;
    u8 digits[6];     // decimal digits, least significant first (sub_08045FD4)
    u8 unk7[0x5];
    u32 unkC;
};

extern struct Unknown_030005E0 gUnknown_030005E0;

void sub_08045EA8(u32 arg0) {
    u32 temp_r4;
    u32 temp_r4_2;
    u32 temp_r4_3;
    u32 temp_r4_4;

    gUnknown_030005E0.digits[5] = (u8) (arg0 / 100000U);
    temp_r4 = arg0 - (0x186A0 * gUnknown_030005E0.digits[5]);
    gUnknown_030005E0.digits[4] = (u8) (temp_r4 / 10000U);
    temp_r4_2 = temp_r4 - (0x2710 * gUnknown_030005E0.digits[4]);
    gUnknown_030005E0.digits[3] = (u8) (temp_r4_2 / 1000U);
    temp_r4_3 = temp_r4_2 - (gUnknown_030005E0.digits[3] * 0x3E8);
    gUnknown_030005E0.digits[2] = (u8) (temp_r4_3 / 100U);
    temp_r4_4 = temp_r4_3 - (0x64 * gUnknown_030005E0.digits[2]);
    gUnknown_030005E0.digits[1] = (u8) (temp_r4_4 / 10U);
    gUnknown_030005E0.digits[0] = (s8) (temp_r4_4 - (gUnknown_030005E0.digits[1] * 0xA));
}
