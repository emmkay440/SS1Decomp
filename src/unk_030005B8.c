#include "global.h"

// Purpose unknown; accessors for variables at 0x030005B8-0x030005EF.
struct Unknown_030005E0
{
    u8 unk0;
    u8 digits[6];     // decimal digits, least significant first (sub_08045FD4)
    u8 unk7[0x5];
    u32 unkC;
};

extern u8 gUnknown_030005B8;
extern u8 gUnknown_030005B9;
extern u8 gUnknown_030005BB;
extern u8 gUnknown_030005BC;
extern u8 gUnknown_030005BD;
extern u8 gUnknown_030005C8[2];
extern struct Unknown_030005E0 gUnknown_030005E0;

void sub_08045F24(void)
{
}

void sub_08045F28(u8 *dest)
{
    dest[0] = gUnknown_030005C8[0];
    dest[1] = gUnknown_030005C8[1];
}

// Returns its argument unchanged (r0 is untouched in the original).
u32 sub_08045F38(u32 value)
{
    gUnknown_030005BC = 1;
    return value;
}

u8 sub_08045F44(void)
{
    return gUnknown_030005BC;
}

bool32 sub_08045F50(void)
{
    u8 state = gUnknown_030005B8;

    if (state == 1 || state == 4 || state == 5)
        return TRUE;
    return FALSE;
}

u8 sub_08045F6C(void)
{
    return gUnknown_030005B9;
}

u8 sub_08045F78(void)
{
    return gUnknown_030005B8;
}

u8 sub_08045F84(void)
{
    return gUnknown_030005BB;
}

bool32 sub_08045F90(struct Unknown_030005E0 *dest)
{
    if (gUnknown_030005B8 == 2)
    {
        *dest = gUnknown_030005E0;
        return TRUE;
    }
    return FALSE;
}

u8 sub_08045FBC(void)
{
    return gUnknown_030005BD;
}

void sub_08045FC8(u8 value)
{
    gUnknown_030005BD = value;
}

u32 sub_08045FD4(void)
{
    u32 scale = 1;
    u32 value = 0;
    u8 i;

    for (i = 0; i < 6; i++)
    {
        value += gUnknown_030005E0.digits[i] * scale;
        scale *= 10;
    }
    return value;
}
