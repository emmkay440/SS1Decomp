#include "global.h"
#include "player_stats.h"
#include "item.h"

void *GetDataRecord(u32 key);
bool32 AddItemToInventory(struct Item *item);


// Puts *item into an empty inventory slot. Returns FALSE if it's taken.
bool32 PutItemInSlot(struct Item *item, u32 slot)
{
    if (gPlayerStats.inventory[slot].category != ITEM_CATEGORY_NONE)
        return FALSE;
    gPlayerStats.inventory[slot] = *item;
    gPlayerStats.inventory[slot].flag14 = 0;
    return TRUE;
}

struct FieldItem
{
    u8 unk0[0xC];
    u32 active;        // bit 0
    u8 unk10[0x4];
    u32 unk14;
    struct Item item;
};

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
