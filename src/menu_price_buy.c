// The original keeps both copies of the price/money code and puts the
// shared `return 0` last; versions that put the return there get the two
// copies merged (136 bytes instead of 164).
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

// Price of the item being bought (held, or under the cursor) from a type 6
// slot. Returns 0 if there is none, 1 if the player can pay, 2 if not.
u32 sub_08045114(s32 *price)
{
    struct Item *item;
    s32 money;

    *price = 0;
    if ((u8)(gUnknown_030005B9 - 2) > 2)
        return 0;
    if (sub_08045F50())
    {
        item = sub_08040C98();
        if (((struct MenuSlotBytes *)sub_08040CA4())->type != 6)
            return 0;
        if (item->category == ITEM_CATEGORY_STACK)
            return 0;
        *price = sub_08040DB0(item);
        money = sub_08040D08();
        money += sub_08040D44();
        if (money >= sub_08040DB0(item))
            return 1;
        return 2;
    }
    else
    {
        if (gUnknown_030005D4.type == 6)
        {
            item = sub_0804087C(&gUnknown_030005D4);
            if (item)
            {
                *price = sub_08040DB0(item);
                money = sub_08040D08();
                money += sub_08040D44();
                if (money >= sub_08040DB0(item))
                    return 1;
                return 2;
            }
        }
    }
    return 0;
}
