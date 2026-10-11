#include "global.h"
#include "item.h"
#include "menu.h"

extern u8 gUnknown_030005B9;
extern struct MenuSlotBytes gUnknown_030005D4;

u8 sub_08045F50(void);
struct Item *sub_08040C98(void);
struct Item *sub_0804087C(struct MenuSlotBytes *slot);
s32 sub_08040DB0(struct Item *item);
s32 sub_08040D08(void);
s32 sub_08040D44(void);
u32 sub_08040900(struct Item *item);

// Selling price of the item held or under the cursor (slot types 1-3).
// Returns 0 if there is none, 1 with the price, 2 with the amount for a
// gold stack.
u32 sub_080451B8(u32 *price)
{
    struct Item *item;

    *price = 0;
    if ((u8)(gUnknown_030005B9 - 2) > 2)
        return 0;
    if (!sub_08045F50())
    {
        if ((u8)(gUnknown_030005D4.type - 1) > 2)
            return 0;
        item = sub_0804087C(&gUnknown_030005D4);
        if (item == NULL)
            return 0;
        if (item->category == ITEM_CATEGORY_STACK)
        {
            *price = item->count;
            return 2;
        }
    }
    else
    {
        item = sub_08040C98();
        if (item->category == ITEM_CATEGORY_STACK)
            return 0;
    }
    *price = sub_08040900(item);
    if (*price == 0)
        return 0;
    return 1;
}
