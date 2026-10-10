#include "global.h"
#include "player_stats.h"
#include "item.h"
#include "data_record.h"

bool32 AddItemToInventory(struct Item *item);

// Frees an active field item (active = 0, unk14 = 5). Returns FALSE for
// NULL. Called from asm/code_08027280.s.
bool32 sub_08013E20(struct FieldItem *fieldItem)
{
    if (fieldItem == NULL)
        return FALSE;
    if (fieldItem->active & 1)
    {
        fieldItem->active = 0;
        fieldItem->unk14 = 5;
    }
    return TRUE;
}

// Marks an active field item as being picked up (sets bit 1 of `active`)
// and stores `arg` in unk14. Returns FALSE for NULL. Called from
// asm/code_08027280.s. (Purpose is a guess.)
bool32 sub_08013E40(struct FieldItem *fieldItem, u32 arg)
{
    if (fieldItem == NULL)
        return FALSE;
    if (fieldItem->active & 1)
    {
        fieldItem->active |= 2;
        fieldItem->unk14 = arg;
    }
    return TRUE;
}

// Undoes sub_08013E40: back to plain active, unk14 = 5.
bool32 sub_08013E60(struct FieldItem *fieldItem)
{
    if (fieldItem == NULL)
        return FALSE;
    if (fieldItem->active & 2)
    {
        fieldItem->active = 1;
        fieldItem->unk14 = 5;
    }
    return TRUE;
}

// Returns the first empty inventory slot, or -1. Nothing calls it.
s32 FindFreeInventorySlot(void)
{
    struct PlayerStats *stats = &gPlayerStats;
    u32 i;

    for (i = 0; i < INVENTORY_SIZE; i++)
    {
        if (stats->inventory[i].category == ITEM_CATEGORY_NONE)
            return i;
    }
    return -1;
}

// Puts *item into an empty inventory slot. Returns FALSE if it's taken.
bool32 PutItemInSlot(struct Item *item, u32 slot)
{
    if (gPlayerStats.inventory[slot].category != ITEM_CATEGORY_NONE)
        return FALSE;
    gPlayerStats.inventory[slot] = *item;
    gPlayerStats.inventory[slot].flag14 = 0;
    return TRUE;
}

bool32 PickUpFieldItem(struct FieldItem *fieldItem)
{
    bool32 result;

    if (fieldItem != NULL && (fieldItem->active & 1))
    {
        result = AddItemToInventory(&fieldItem->item);
        if (result)
        {
            fieldItem->active = 0;
            fieldItem->unk14 = 5;
        }
        return result;
    }
    return FALSE;
}

// Empties the slot and returns what was in it (with flag14 cleared).
struct Item TakeItemFromSlot(u32 slot)
{
    struct PlayerStats *stats = &gPlayerStats;
    struct Item item;
    struct Item *p;

    item = stats->inventory[slot];
    // The original adds the slot offset to the struct base before the
    // inventory offset; plain &stats->inventory[slot] is 2 instructions off.
    p = &((struct PlayerStats *)((u8 *)stats + slot * 4))->inventory[0];
    ((struct ItemData *)p)->data = 0;
    ((struct ItemData *)p)->count = 0;
    p->category = ITEM_CATEGORY_NONE;
    item.flag14 = 0;
    return item;
}
