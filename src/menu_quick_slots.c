// Draft: the code matches except that the original loads
// &gUnknown_03000494 into r8 before the first loop.
#include "global.h"
#include "item.h"
#include "menu.h"

extern struct Item *gMenuInventory;
extern struct Item *gMenuSelectedItem;
extern struct MenuSlotBytes gMenuSelectedSlot;
extern u16 *gUnknown_03000494;     // three quick slots: 1-based inventory indices

// When the selected inventory slot is about to go away: quick slots that
// point at it move to another slot holding the same usable item (the last
// one found), or are cleared if there is none.
void sub_0804096C(void)
{
    u8 count = 0;
    u8 other;
    struct Item *item = gMenuInventory;
    u8 x;
    u8 y;
    u8 i;

    for (y = 0; y < 5; y++)
    {
        for (x = 0; x < 5; item++, x++)
        {
            if (item->category == ITEM_CATEGORY_USABLE && item->id == gMenuSelectedItem->id
                && gMenuSelectedSlot.subSlot != x + y * 5)
            {
                other = x + y * 5 + 1;
                count++;
            }
        }
    }
    gUnknown_03000494++;  // FAKE (decomp-permuter): a no-op pair that changes register use
    gUnknown_03000494--;
    for (i = 0; i < 3; i++)
    {
        if (gUnknown_03000494[i] == gMenuSelectedSlot.subSlot + 1)
        {
            if (count == 0)
                gUnknown_03000494[i] = 0;
            else
                gUnknown_03000494[i] = other;
        }
    }
}
