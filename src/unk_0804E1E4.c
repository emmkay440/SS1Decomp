#include "global.h"
#include "display.h"
extern u16 gKeysNew;
#include "sprite_obj.h"

extern u32 gUnknown_03000A48;
extern struct SpriteObj gUnknown_030009D8;
extern u16 gUnknown_03000A44;   // animation frame
extern u16 gUnknown_03000A46;   // animation timer
extern u32 gUnknown_03000A4C;
extern s32 gUnknown_03000A50;   // x
extern s32 gUnknown_03000A54;   // y

bool32 sub_0800277C(void);
u32 sub_08026C40(struct SpriteObj *obj, u16 a, u16 *frame, u16 *timer, u32 loop);

void sub_0804E1E4(void)
{
    gUnknown_03000A48 = 0;
}

void sub_0804E1F0(void)
{
}

// Background scrolling: step 1 scrolls BG2 and BG3 at different speeds,
// step 2 moves BG2 back by one. Nothing calls it.
void sub_0804E1F4(u8 step)
{
    switch (step)
    {
    case 1:
        gUnknown_03000A48++;
        gBgRegsBuffer[4] = -gUnknown_03000A48 >> 4;
        gBgRegsBuffer[6] = -gUnknown_03000A48 >> 2;
        break;
    case 2:
        gBgRegsBuffer[4]--;
        break;
    }
}

// Moves the gUnknown_030009D8 sprite one pixel left and animates it.
void sub_0804E230(u8 step)
{
    if (step == 1)
    {
        if (++gUnknown_03000A4C == 2)
            gUnknown_03000A4C = 0;
        gUnknown_03000A50--;
        sub_08026B90(&gUnknown_030009D8, gUnknown_03000A50, gUnknown_03000A54, 0, 0);
        sub_08026C40(&gUnknown_030009D8, 1, &gUnknown_03000A44, &gUnknown_03000A46, 1);
        sub_08026B90(&gUnknown_030009D8, gUnknown_03000A50, gUnknown_03000A54, 1, gUnknown_03000A44);
    }
}

// A pressed (when sub_0800277C) or Start pressed (otherwise).
bool32 sub_0804E2B4(void)
{
    if (sub_0800277C())
    {
        if (gKeysNew & A_BUTTON)
            return TRUE;
    }
    else
    {
        if (gKeysNew & START_BUTTON)
            return TRUE;
    }
    return FALSE;
}
