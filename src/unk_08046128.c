#include "global.h"
#include "item.h"
#include "menu.h"

extern struct MenuSlotBytes gUnknown_030005D8;

struct Item *sub_08040BF8(void);

// Points gUnknown_030005D8 at the first empty slot of the menu inventory
// (slot 12 if it's full).
void sub_08046128(void)
{
    struct Item *item;
    s32 i;

    gUnknown_030005D8.type = 3;
    gUnknown_030005D8.subSlot = 12;
    item = sub_08040BF8();
    for (i = 0; i < 25; i++, item++)
    {
        if (item->category == ITEM_CATEGORY_NONE)
        {
            gUnknown_030005D8.subSlot = i;
            break;
        }
    }
}
