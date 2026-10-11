#include "global.h"
#include "menu_cursor.h"

// Slides the drawn cursor from the current slot to the target slot over
// gUnknown_030005CC[0] frames.
void sub_08045E14(void)
{
    s32 delta;

    if (((struct MenuSlot *)&gUnknown_030005D4)->pos == ((struct MenuSlot *)&gUnknown_030005D0)->pos)
    {
        gUnknown_030005C8 = gUnknown_030005D4;
    }
    else
    {
        delta = (gUnknown_030005D0.unk0 - gUnknown_030005D4.unk0) * gUnknown_030005CC[1] / gUnknown_030005CC[0];
        gUnknown_030005C8.unk0 = gUnknown_030005D4.unk0 + delta;
        delta = (gUnknown_030005D0.unk1 - gUnknown_030005D4.unk1) * gUnknown_030005CC[1] / gUnknown_030005CC[0];
        gUnknown_030005C8.unk1 = gUnknown_030005D4.unk1 + delta;
        gUnknown_030005CC[1]++;
        if (gUnknown_030005CC[1] >= gUnknown_030005CC[0])
        {
            gUnknown_030005D4 = gUnknown_030005D0;
            gUnknown_030005C8 = gUnknown_030005D0;
            gUnknown_030005CC[1] = 0;
            gUnknown_030005BF = 1;
        }
    }
}
