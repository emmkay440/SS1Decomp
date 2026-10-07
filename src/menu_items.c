#include "global.h"
#include "item.h"
#include "menu.h"

// Item bookkeeping on MenuScreen's working copies. The inventory is a 5x5
// grid. Category 7 items are stacks whose count is capped at 100000.

#define STACK_MAX 100000

extern struct Item *gMenuInventory;
extern u32 *gMenuWeapons;
extern u32 *gMenuEquipment;
extern struct Item *gMenuSelectedItem;
extern u8 gMenuPage;
extern struct Item *gUnknown_030004A4;
extern struct Item *gUnknown_030004A8;
extern u8 gUnknown_03000479;

void bzero(void *dest, u32 size);
u32 sub_0800FE5C(u32 arg0, u32 arg1);
void sub_0804096C(void);
struct Item *sub_08040F20(void);
struct Item *sub_08040F7C(void);
struct Item *sub_08040FC0(void);
struct Item *sub_08041014(void);

// How many usable items in the inventory have the same id as *item.
u8 sub_08040CAC(struct Item *item)
{
    struct Item *p;
    u8 count;
    u8 x, y;

    if (item->category != ITEM_CATEGORY_USABLE)
        return 0;
    count = 0;
    p = gMenuInventory;
    for (y = 0; y < 5; y++)
    {
        for (x = 0; x < 5; x++)
        {
            if (p->category == ITEM_CATEGORY_USABLE && p->id == item->id)
                count++;
            p++;
        }
    }
    return count;
}

// Total count of all stacks in the inventory.
u32 sub_08040D08(void)
{
    struct Item *p;
    u32 total;
    u8 x, y;

    total = 0;
    p = gMenuInventory;
    for (y = 0; y < 5; y++)
    {
        for (x = 0; x < 5; x++)
        {
            if (p->category == ITEM_CATEGORY_STACK)
                total += p->count;
            p++;
        }
    }
    return total;
}

u32 sub_08040D44(void)
{
    struct Item *p;
    u32 total;
    u8 x, y;

    if (gMenuPage != 5)
        p = gUnknown_030004A8;
    else
        p = gUnknown_030004A4;
    total = 0;
    for (y = 0; y < 20; y++)
    {
        for (x = 0; x < 3; x++)
        {
            if (p->category == ITEM_CATEGORY_STACK)
                total += p->count;
            p++;
        }
    }
    return total;
}

u8 sub_08040D98(void)
{
    return gUnknown_03000479;
}

void sub_08040DA4(u8 value)
{
    gUnknown_03000479 = value;
}

u32 sub_08040DB0(u32 arg)
{
    return sub_0800FE5C(arg, 0);
}

// Takes `amount` out of the inventory's stacks, smallest stack first.
// Returns 4 if there's nothing left to take from.
u32 sub_08040DBC(u32 amount)
{
    struct Item *item = sub_08040FC0();

    if (item == NULL)
        return 4;
    if (item->count < amount)
    {
        u32 rest = amount - item->count;

        bzero(item, 4);
        sub_08040DBC(rest);
    }
    else
    {
        item->count -= amount;
        if (item->count == 0)
            bzero(item, 4);
    }
    return 1;
}

// Same for the 0x030004A8 grid.
u32 sub_08040E10(u32 amount)
{
    struct Item *item = sub_08041014();

    if (item == NULL)
        return 4;
    if (item->count < amount)
    {
        u32 rest = amount - item->count;

        bzero(item, 4);
        sub_08040E10(rest);
    }
    else
    {
        item->count -= amount;
    }
    return 1;
}

// Adds `amount` to the inventory's stacks (a new stack if needed).
u32 sub_08040E54(u32 amount)
{
    struct Item *item = sub_08040F20();
    u32 total;

    if (item == NULL)
    {
        item = sub_08040F7C();
        if (item == NULL)
            return 4;
        item->category = ITEM_CATEGORY_STACK;
    }
    total = item->count + amount;
    if (total > STACK_MAX)
    {
        u32 rest = total - STACK_MAX;

        item->count = STACK_MAX;
        sub_08040E54(rest);
    }
    else
    {
        item->count = total;
    }
    return 1;
}

void sub_08040EC0(void)
{
    sub_0804096C();
    bzero(gMenuSelectedItem, 4);
}

// Puts the selected item into `slot`.
void sub_08040ED8(struct MenuSlot *slot)
{
    u32 *base = NULL;

    switch (MENU_SLOT_TYPE(slot))
    {
    case 1:
        base = gMenuWeapons;
        break;
    case 2:
        base = gMenuEquipment;
        break;
    case 3:
        base = (u32 *)gMenuInventory;
        break;
    }
    base += MENU_SLOT_SUBSLOT(slot);
    *base = *(u32 *)gMenuSelectedItem;
}

// The biggest stack that isn't full.
struct Item *sub_08040F20(void)
{
    struct Item *p;
    struct Item *best;
    u32 max;
    u8 x, y;

    if (gMenuInventory == NULL)
        return NULL;
    max = 0;
    best = NULL;
    p = gMenuInventory;
    for (y = 0; y < 5; y++)
    {
        for (x = 0; x < 5; x++)
        {
            if (p->category == ITEM_CATEGORY_STACK && p->count > max && p->count < STACK_MAX)
            {
                best = p;
                max = p->count;
            }
            p++;
        }
    }
    return best;
}

// The last empty slot (cleared), or NULL.
struct Item *sub_08040F7C(void)
{
    struct Item *p;
    struct Item *found = NULL;
    u8 x, y;

    p = gMenuInventory;
    for (y = 0; y < 5; y++)
    {
        for (x = 0; x < 5; x++, p++)
        {
            if (p->category == ITEM_CATEGORY_NONE)
            {
                bzero(p, 4);
                found = p;
            }
        }
    }
    return found;
}

// The smallest stack.
struct Item *sub_08040FC0(void)
{
    struct Item *p;
    struct Item *best;
    u32 min;
    u8 x, y;

    if (gMenuInventory == NULL)
        return NULL;
    min = STACK_MAX + 1;
    best = NULL;
    p = gMenuInventory;
    for (y = 0; y < 5; y++)
    {
        for (x = 0; x < 5; x++)
        {
            if (p->category == ITEM_CATEGORY_STACK && p->count < min)
            {
                best = p;
                min = p->count;
            }
            p++;
        }
    }
    return best;
}

struct Item *sub_08041014(void)
{
    struct Item *p;
    struct Item *best;
    u32 min;
    u8 x, y, z;

    if (gUnknown_030004A8 == NULL)
        return NULL;
    min = STACK_MAX + 1;
    best = NULL;
    p = gUnknown_030004A8;
    for (z = 0; z < 4; z++)
    {
        for (y = 0; y < 5; y++)
        {
            for (x = 0; x < 3; x++)
            {
                if (p->category == ITEM_CATEGORY_STACK && p->count < min)
                {
                    best = p;
                    min = p->count;
                }
                p++;
            }
        }
    }
    return best;
}
