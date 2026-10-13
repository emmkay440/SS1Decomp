#include "global.h"
#include "menu.h"
#include "sprite_obj.h"

extern u16 gUnknown_030004D0[10];
extern u16 gUnknown_030004E8[10];
extern struct SpriteObj gUnknown_03000548;

u32 sub_08026C40(struct SpriteObj *obj, u16 a, u16 *frame, u16 *timer, u32 loop);
u16 sub_08041074(void);
u16 sub_080410BC(void);
u8 sub_08045F78(void);
struct MenuSlot *sub_08046004(void);

// Draws the two arrows at (0x48, 0x1F) and (0x90, 0x1F) on pages 0 and
// 6-9: sprite 6 (still) when sub_08041074() / sub_080410BC() is 0, else
// the animated sprite 7. On page 0 one of the two is drawn with
// sub_08026BC4 instead: the left one when the current slot's type is 7,
// the right one otherwise.
void sub_08042614(void)
{
    sub_08026C40(&gUnknown_03000548, 7, &gUnknown_030004D0[2], &gUnknown_030004E8[2], 1);
    switch (sub_08045F78())
    {
    case 0:
        if (MENU_SLOT_TYPE(sub_08046004()) == 7)
        {
            if (sub_08041074() == 0)
                sub_08026BC4(&gUnknown_03000548, 0x48, 0x1F, 6, 0);
            else
                sub_08026BC4(&gUnknown_03000548, 0x48, 0x1F, 7, gUnknown_030004D0[2]);
            if (sub_080410BC() == 0)
                sub_08026B90(&gUnknown_03000548, 0x90, 0x1F, 6, 0);
            else
                sub_08026B90(&gUnknown_03000548, 0x90, 0x1F, 7, gUnknown_030004D0[2]);
        }
        else
        {
            if (sub_08041074() == 0)
                sub_08026B90(&gUnknown_03000548, 0x48, 0x1F, 6, 0);
            else
                sub_08026B90(&gUnknown_03000548, 0x48, 0x1F, 7, gUnknown_030004D0[2]);
            if (sub_080410BC() == 0)
                sub_08026BC4(&gUnknown_03000548, 0x90, 0x1F, 6, 0);
            else
                sub_08026BC4(&gUnknown_03000548, 0x90, 0x1F, 7, gUnknown_030004D0[2]);
        }
        break;
    case 6:
    case 7:
    case 8:
    case 9:
        if (sub_08041074() == 0)
            sub_08026B90(&gUnknown_03000548, 0x48, 0x1F, 6, 0);
        else
            sub_08026B90(&gUnknown_03000548, 0x48, 0x1F, 7, gUnknown_030004D0[2]);
        if (sub_080410BC() == 0)
            sub_08026B90(&gUnknown_03000548, 0x90, 0x1F, 6, 0);
        else
            sub_08026B90(&gUnknown_03000548, 0x90, 0x1F, 7, gUnknown_030004D0[2]);
        break;
    }
}
