#include "global.h"
#include "item.h"

extern struct Item *gMenuInventory;
extern u32 *gMenuEquipment;
extern struct Item *gMenuSelectedItem;
extern void *gUnknown_030004B8;

u32 sub_08040900(struct Item *item);

// Index of the first empty slot of the 5x5 menu inventory, or -1.
s8 sub_08041454(void)
{
    struct Item *item = gMenuInventory;
    u8 x, y;

    for (y = 0; y < 5; y++)
    {
        for (x = 0; x < 5; x++, item++)
        {
            if (item->category == ITEM_CATEGORY_NONE)
                return x + y * 5;
        }
    }
    return -1;
}

// If the third equipment slot's record has byte 0x156 set, adds one to the
// third byte of that item word.
void sub_08041498(void)
{
    u8 *record = GetCategory5Record((struct Item *)&gMenuEquipment[2]);

    if (record != NULL && record[0x156] != 0)
        ((u8 *)gMenuEquipment)[10]++;
}

// TRUE if the menu inventory has room for the selected item: an empty slot,
// or a stack that stays within 100000 after adding it.
bool32 sub_080414C8(void)
{
    struct Item *item = gMenuInventory;
    u32 count = sub_08040900(gMenuSelectedItem);
    u8 x, y;

    if (count == 0)
        count = 1;
    for (y = 0; y < 5; y++)
    {
        for (x = 0; x < 5; x++, item++)
        {
            if (item->category == ITEM_CATEGORY_NONE)
                return TRUE;
            if (item->category == ITEM_CATEGORY_STACK && item->count + count <= 100000)
                return TRUE;
        }
    }
    return FALSE;
}

void *sub_0804152C(void)
{
    return gUnknown_030004B8;
}
