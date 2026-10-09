#include "global.h"
#include "item.h"
#include "player_stats.h"

// Take up to three category-6 items (materials: Mithril is id 0) of one id
// out of the inventory and return the sum of their value field (bits 15-22).
struct ItemValue
{
    u32 unk0:15;
    u32 value:8;
    u32 unk23:9;
};

u32 sub_08013838(void)
{
    u32 total = 0;
    u32 taken = 0;
    u32 i;

    for (i = 0; i < INVENTORY_SIZE; i++)
    {
        if (gPlayerStats.inventory[i].category == ITEM_CATEGORY_6 && gPlayerStats.inventory[i].id == 0)
        {
            taken++;
            total += ((struct ItemValue *)&gPlayerStats.inventory[i])->value;
            gPlayerStats.inventory[i].category = ITEM_CATEGORY_NONE;
            gPlayerStats.inventory[i].id = 0;
            if (taken > 2)
                break;
        }
    }
    return total;
}

u32 sub_08013894(void)
{
    u32 total = 0;
    u32 taken = 0;
    u32 i;

    for (i = 0; i < INVENTORY_SIZE; i++)
    {
        if (gPlayerStats.inventory[i].category == ITEM_CATEGORY_6 && gPlayerStats.inventory[i].id == 1)
        {
            taken++;
            total += ((struct ItemValue *)&gPlayerStats.inventory[i])->value;
            gPlayerStats.inventory[i].category = ITEM_CATEGORY_NONE;
            gPlayerStats.inventory[i].id = 0;
            if (taken > 2)
                break;
        }
    }
    return total;
}

u32 sub_080138F0(void)
{
    u32 total = 0;
    u32 taken = 0;
    u32 i;

    for (i = 0; i < INVENTORY_SIZE; i++)
    {
        if (gPlayerStats.inventory[i].category == ITEM_CATEGORY_6 && gPlayerStats.inventory[i].id == 2)
        {
            taken++;
            total += ((struct ItemValue *)&gPlayerStats.inventory[i])->value;
            gPlayerStats.inventory[i].category = ITEM_CATEGORY_NONE;
            gPlayerStats.inventory[i].id = 0;
            if (taken > 2)
                break;
        }
    }
    return total;
}

// gPlayerStats with the inventory as plain words.
struct InventoryWords
{
    u8 unk0[0x88];
    u32 inventory[INVENTORY_SIZE];
};

// Inventory slot `i`'s item word (slot 0 if out of range).
u32 sub_0801394C(u8 i)
{
    struct InventoryWords *stats = (struct InventoryWords *)&gPlayerStats;

    if (i > INVENTORY_SIZE - 1)
        i = 0;
    return stats->inventory[i];
}
