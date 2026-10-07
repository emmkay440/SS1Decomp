#include "global.h"
#include "heap.h"
#include "item.h"
#include "player_stats.h"

extern u32 gUnknown_03003D08;
extern struct Item *gUnknown_030063AC;
extern struct Item *gUnknown_030063B8;
extern struct Item *gUnknown_030063A8;
extern u32 gUnknown_030063B4;
extern u32 gUnknown_030063BC;

u32 sub_080074F0(void);
void *GetDataRecord(u32 key);
void sub_08013CE4(void);
void sub_08014CB8(void);

void GetStorage(struct Item *dest)
{
    u32 i;

    for (i = 0; i < 60; i++)
    {
        u32 j = i;

        if (j > 59)
            j = 0;
        *dest++ = gPlayerStats.storage[j];
    }
}

void SetStorageSlot(u8 slot, struct Item *item)
{
    if (slot > 59)
        slot = 0;
    gPlayerStats.storage[slot] = *item;
}

void SetStorage(struct Item *src)
{
    u32 i;
    struct Item *dest;
    struct PlayerStats *stats;

    i = 0;
    stats = &gPlayerStats;
    dest = stats->storage;
    for (; i < 60; i++)
        *dest++ = *src++;
}

void InitFieldItems(void)
{
    gFieldItems = Alloc(sizeof(struct FieldItem) * NUM_FIELD_ITEMS);
    gUnknown_030063AC = Alloc(0x30);
    gUnknown_030063B8 = Alloc(0x30);
    gUnknown_030063A8 = Alloc(0x30);
    gUnknown_030063B4 = 1;
    gUnknown_030063BC = 0;
    sub_08013CE4();
    sub_08014CB8();
}

void sub_08013CE4(void)
{
    struct FieldItem *item = gFieldItems;
    u32 i;

    gUnknown_030063B4 = 1;
    gUnknown_030063BC = 0;
    for (i = 0; i < NUM_FIELD_ITEMS; i++, item++)
    {
        item->x = 0x7FFFFFFF;
        item->y = 0x7FFFFFFF;
        item->layer = 0;
        item->active = 0;
        item->unk14 = 5;
        ((struct ItemData *)&item->item)->data = 0;
        ((struct ItemData *)&item->item)->count = 0;
    }
}

// The active field item within 7 px of (x, y) on `layer`, or NULL.
struct FieldItem *FindFieldItemNear(s32 x, s32 y, u32 layer)
{
    struct FieldItem *item = gFieldItems;
    u32 i;

    for (i = 0; i < NUM_FIELD_ITEMS; i++, item++)
    {
        if (item->active & 1)
        {
            s32 dx;
            s32 dy;

            dx = (x - item->x) >> 12;
            if (dx < 0)
                dx = -dx;
            dy = (y - item->y) >> 12;
            if (dy < 0)
                dy = -dy;
            if (dx <= 7 && dy <= 7 && layer == item->layer)
                return item;
        }
    }
    return NULL;
}
