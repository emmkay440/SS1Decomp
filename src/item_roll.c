#include "global.h"
#include "area_state.h"
#include "data_record.h"
#include "item.h"

// A drop table record: four lists of weighted items.
struct DropTable
{
    u8 count[4];
    u32 chance;        // +0x04 out of 256, for sub_080124E8(item, 1)
    u32 offset[4];     // +0x08 of each list, from the record's start
};

struct DropEntry
{
    u16 id;
    u16 category;
    u16 weight;
    u16 unk6;
};

int abs(int x);
s16 Random(void);
u32 sub_080076A8(void);
void sub_080124E8(struct Item *item, u32 a);

// Rolls an item from list `column` of drop table record `key` into `item`:
// the entry whose range of weights contains the roll (`roll` - 1, or a
// random 0-255 if `roll` is 0); the item stays empty if no entry does.
// Category 7 (gold) gets a count of 100-200% of 0xE2 when sub_080076A8()
// is set, else of (unk9A of the area state - 1) * 26 + 18. With the
// table's chance (out of 256) sub_080124E8(item, 1) is applied.
// `count` and the list are not set for a column above 3.
void sub_080130F4(u32 key, u32 column, struct Item *item, u32 roll)
{
    struct DropTable *table = GetDataRecord(key);
    struct DropEntry *entry;
    u32 count;
    u32 offset;
    u16 sum;
    u32 i;

    ((struct ItemData *)item)->data = 0;
    ((struct ItemData *)item)->count = 0;
    switch (column)
    {
    case 0:
        count = table->count[0];
        offset = table->offset[0];
        break;
    case 1:
        count = table->count[1];
        offset = table->offset[1];
        break;
    case 2:
        count = table->count[2];
        offset = table->offset[2];
        break;
    case 3:
        count = table->count[3];
        offset = table->offset[3];
        break;
    }
    entry = (struct DropEntry *)((u8 *)table + offset);
    // The original reuses `column` for the roll value from here on.
    if (roll == 0)
        column = (u16)((u16)abs(Random()) % 256);
    else
        column = (u16)(roll - 1);
    sum = 0;
    for (i = 0; i < count; i++, entry++)
    {
        if (sum <= column && sum + entry->weight > (s32)column)
        {
            item->category = entry->category;
            item->id = entry->id;
            break;
        }
        sum += entry->weight;
    }
    if (item->category == 7)
    {
        u16 amount;
        s32 base;

        item->category = 7;
        amount = (u16)abs(Random()) % 101;
        amount += 100;
        if (sub_080076A8())
            base = 0xE2;
        else
            base = (gUnknown_030063D8->unk9A - 1) * 26 + 18;
        item->count = amount * base / 100;
    }
    if (table->chance > (abs(Random()) & 0xFF))
        sub_080124E8(item, 1);
}
