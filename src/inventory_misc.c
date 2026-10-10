#include "global.h"
#include "heap.h"
#include "item.h"
#include "player_stats.h"
#include "thread.h"
#include "data_record.h"

extern struct Thread gUnknownThread_03006380;

void sub_08013264(void);

void sub_08014CB8(void)
{
    u8 *stack;

    gUnknownThread_03006380.entry = sub_08013264;
    stack = Alloc(0x200);
    gUnknownThread_03006380.stack = stack;
    gUnknownThread_03006380.sp = stack + 0x1FC;
    gUnknownThread_03006380.priority = 0x51;
    gUnknownThread_03006380.onExit = NULL;
    CreateThread(&gUnknownThread_03006380);
}

// Inventory slot holding usable item `id`, or -1.
s32 sub_08014CF0(u32 id)
{
    struct PlayerStats *stats = &gPlayerStats;
    u32 i;

    for (i = 0; i < INVENTORY_SIZE; i++)
        if (stats->inventory[i].category == ITEM_CATEGORY_USABLE && stats->inventory[i].id == id)
            return i;
    return -1;
}

struct FieldItem *sub_08014D28(u8 value)
{
    struct FieldItem *item = gFieldItems;
    u32 i;

    for (i = 0; i < NUM_FIELD_ITEMS; i++, item++)
        if ((item->active & 1) && item->unk10 == value)
            return item;
    return NULL;
}

struct FieldItem *sub_08014D5C(u8 value, u32 unk14)
{
    struct FieldItem *item = gFieldItems;
    u32 i;

    for (i = 0; i < NUM_FIELD_ITEMS; i++, item++)
        if (((item->active & 3) == 1 || item->unk14 == unk14) && item->unk10 == value)
            return item;
    return NULL;
}

struct Unknown_08014D98
{
    u8 unk0[0x159];
    u8 kind;
    u8 unk15A[6];
    u32 unk160;
};

// For records of kind 8: unk160 - 0x11, with 5 and 6 swapped, plus 1.
u16 sub_08014D98(struct Unknown_08014D98 *rec)
{
    u16 value;

    if (rec != NULL && rec->kind == 8)
    {
        value = rec->unk160 - 0x11;
        switch (value)
        {
        case 5:
            value = 6;
            break;
        case 6:
            value = 5;
            break;
        }
        return value + 1;
    }
    return 0;
}

// Number of category 6 items (Mithril and the like) with id 0 / 1 / 2.
u32 sub_08014DD8(void)
{
    u32 count = 0;
    u32 i;

    for (i = 0; i < INVENTORY_SIZE; i++)
        if (gPlayerStats.inventory[i].category == ITEM_CATEGORY_6 && gPlayerStats.inventory[i].id == 0)
            count++;
    return count;
}

u32 sub_08014E08(void)
{
    u32 count = 0;
    u32 i;

    for (i = 0; i < INVENTORY_SIZE; i++)
        if (gPlayerStats.inventory[i].category == ITEM_CATEGORY_6 && gPlayerStats.inventory[i].id == 1)
            count++;
    return count;
}

u32 sub_08014E38(void)
{
    u32 count = 0;
    u32 i;

    for (i = 0; i < INVENTORY_SIZE; i++)
        if (gPlayerStats.inventory[i].category == ITEM_CATEGORY_6 && gPlayerStats.inventory[i].id == 2)
            count++;
    return count;
}

// Empties entry `i` of item list `list` (gPlayerStats.unk1DC).
void sub_08014E68(u32 list, u32 i)
{
    switch (list)
    {
    case 0:
        gPlayerStats.unk1DC[0][i].category = ITEM_CATEGORY_NONE;
        break;
    case 1:
        gPlayerStats.unk1DC[1][i].category = ITEM_CATEGORY_NONE;
        break;
    case 2:
        gPlayerStats.unk1DC[2][i].category = ITEM_CATEGORY_NONE;
        break;
    }
}

// TRUE for a usable item whose record's +0x150 isn't 12.
bool32 sub_08014EB4(struct Item *item)
{
    if (item->category != ITEM_CATEGORY_USABLE
        || *(u16 *)((u8 *)GetDataRecord(item->id | 0xA0000) + 0x150) == 12)
        return FALSE;
    return TRUE;
}

// Slot of the largest gold stack (category 7) that isn't full, searching
// from `start`; -1 if none.
s32 sub_08014EE4(s32 start)
{
    struct Item *item;
    s32 best;
    s32 i;
    s32 count;

    if (start < 0)
        start = 0;
    item = &gPlayerStats.inventory[start];
    best = -1;
    for (i = start; i < INVENTORY_SIZE; i++, item++)
    {
        if (item->category == ITEM_CATEGORY_STACK)
        {
            count = item->count;
            if (best < count && count != 100000)
            {
                start = i;
                best = count;
            }
        }
    }
    if (best < 0)
        return -1;
    return start;
}

void sub_08014F3C(void)
{
}
