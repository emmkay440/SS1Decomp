#include "global.h"
#include "player_stats.h"
#include "item.h"

void *GetDataRecord(u32 key);
bool32 AddItemToInventory(struct Item *item);

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
