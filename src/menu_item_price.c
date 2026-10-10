#include "global.h"
#include "item.h"

extern u8 gMenuPage;

u32 sub_0800FE5C(struct Item *item, u32 arg1);

// Same as IsItemUnappraised (src/menu_stats.c), inlined here.
static inline u32 IsUnappraised(struct Item *item)
{
    u32 raw = *(u32 *)item;

    switch (item->category)
    {
    case 2:
        return (raw << 5) >> 31;
    case 3:
        return (raw << 5) >> 31;
    case 4:
        return (raw << 5) >> 31;
    case 5:
        return (raw << 16) >> 31;
    }
    return 0;
}

// An item's price on the current menu page: half of sub_0800FE5C(item, 1)
// on page 7; elsewhere an eighth of sub_0800FE5C(item, 0), or 1 if that is
// 10 or less or the item is unappraised.
u32 sub_08040900(struct Item *item)
{
    u32 price;

    if (gMenuPage == 7)
    {
        price = sub_0800FE5C(item, 1);
        price >>= 1;
    }
    else
    {
        price = sub_0800FE5C(item, 0);
        if (!IsUnappraised(item) && price > 10)
            price >>= 3;
        else
            price = 1;
    }
    return price;
}
