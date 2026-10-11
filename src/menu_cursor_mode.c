#include "global.h"
#include "menu_cursor.h"

// Sets the cursor mode and where the cursor starts in it.
void sub_08045234(u8 mode)
{
    gUnknown_030005B9 = mode;
    switch (gUnknown_030005B9)
    {
    case 1:
        gUnknown_030005D4.type = 3;
        gUnknown_030005D4.subSlot = 12;
        sub_08045304(&gUnknown_030005D4);
        gUnknown_030005D0 = gUnknown_030005D4;
        break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
        gUnknown_030005B8 = 11;
        gUnknown_030005C8.unk0 = 0xD4;
        gUnknown_030005C8.unk1 = 0x70;
        gUnknown_030005BA = 0x11;
        gUnknown_030005D4.type = 3;
        gUnknown_030005D4.unk0 = 0x4C;
        break;
    case 8:
        gUnknown_030005D4.type = 7;
        gUnknown_030005D0 = gUnknown_030005D4;
        break;
    case 9:
        gUnknown_030005D4.type = 9;
        gUnknown_030005D0.type = 9;
        sub_08045D80();
        gUnknown_030005D4 = gUnknown_030005D0;
        break;
    }
}
