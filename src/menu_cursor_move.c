#include "global.h"
#include "menu_cursor.h"

// Moves the cursor between slot types 9-11 with up/down and sets its
// position. `slot` is never set: the code uses whatever r4 holds, which is
// &gUnknown_030005D0 when sub_08045234 calls it (a bug in the original).
void sub_08045D80(void)
{
    s32 last;
    s32 first;
    struct MenuSlotBytes *slot;

    last = 11;
    if (gUnknown_030005CC[1] == 0
        && ((struct MenuSlot *)&gUnknown_030005D4)->pos == ((struct MenuSlot *)&gUnknown_030005D0)->pos)
    {
        first = 9;
        switch (gUnknown_030005C2)
        {
        case 0x40:
            if (gUnknown_030005D4.type != first)
                gUnknown_030005D0.type = gUnknown_030005D4.type - 1;
            else
                gUnknown_030005D0.type = last;
            break;
        case 0x80:
            if (gUnknown_030005D4.type != last)
                gUnknown_030005D0.type = gUnknown_030005D4.type + 1;
            else
                gUnknown_030005D0.type = 9;
            break;
        }
        if (gUnknown_030005C2 != 0)
            sub_08045304(&gUnknown_030005D0);
        switch (slot->type)
        {
        case 9:
            slot->unk0 = 0x50;
            slot->unk1 = 0x28;
            break;
        case 10:
            slot->unk0 = 0x50;
            slot->unk1 = 0x48;
            break;
        case 11:
            slot->unk0 = 0x50;
            slot->unk1 = 0x68;
            break;
        }
    }
}

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
