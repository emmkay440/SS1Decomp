#ifndef GUARD_ITEM_H
#define GUARD_ITEM_H

#include "constants/items.h"

// An item word (inventory slots, equipment, field items). See
// docs/variables.md.
struct Item
{
    u32 unk0:4;
    u32 category:3;    // ITEM_CATEGORY_*; 0 = empty
    u32 id:7;
    u32 flag14:1;
    u32 count:17;      // stackable items; other items keep other data here
};

// Another view of the same word (TakeItemFromSlot clears these).
struct ItemData
{
    u32 data:15;       // unk0, category, id, flag14
    u32 count:17;
};

// Appraisal flags (IsItemUnappraised / AppraiseItem).
struct ItemFlags
{
    u32 unk0:15;
    u32 unappraised15:1;  // category 5
    u32 unk16:10;
    u32 unappraised:1;    // weapons, armor, head gear
    u32 unk27:5;
};

// An item lying on the map (gFieldItems, 15 of them).
struct FieldItem
{
    s32 x;             // fixed point
    s32 y;
    u32 layer;
    u32 active;        // bit 0
    u32 unk10;
    u32 unk14;         // 5 when free
    struct Item item;
};                     // size 0x1C

#define NUM_FIELD_ITEMS 15

extern struct FieldItem *gFieldItems;

void *GetWeaponRecord(struct Item *item);
void *GetArmorRecord(struct Item *item);
void *GetHeadRecord(struct Item *item);
void *GetUsableItemRecord(struct Item *item);
void *GetCategory5Record(struct Item *item);
void *GetCategory6Record(struct Item *item);

#endif // GUARD_ITEM_H
