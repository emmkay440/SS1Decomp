#include "global.h"
#include "item.h"
#include "player_stats.h"

bool32 CanEquipItem(void *item);
void *GetDataRecord(u32 key);
u16 sub_08011E54(void);

extern const u8 gUnknown_080FB4CC[];

// GetWeaponRecord (item_records.c), inlined into sub_08014220
static inline void *GetWeaponRecordInline(struct Item *item)
{
    void *record = NULL;

    if (item == NULL)
        return NULL;
    if (item->category == ITEM_CATEGORY_WEAPON)
        record = GetDataRecord(item->id | 0x50000);
    return record;
}

// The low half of an item word as these functions access it: byte loads
// (ldrb) with shift extraction. agbcc aligns structs to 4 and then extracts
// bitfields with word loads; packed brings it down to bytes. The category
// goes through a temporary, else the compare folds into a mask test.
struct ItemBytes
{
    u8 unk0:4;
    u8 category:3;
    u8 unk7:1;
    u8 unk8:6;
    u8 flag14:1;   // equipped
    u8 unk15:1;
    u16 unk16;
} __attribute__((packed));

// gPlayerStats seen with the equipment slots as ItemBytes.
struct EquipView
{
    u8 unk0[0x7C];
    struct ItemBytes head;   // +0x7C
    struct ItemBytes armor;  // +0x80
    struct ItemBytes unk84;  // +0x84
};

#define EQUIP ((struct EquipView *)&gPlayerStats)

// Bits 15-19 of a weapon, armor or head item word: 1 + the index of a
// category 0xD record (GetDataRecord(0xD0000 | n)); 0 = none. Unknown use.
struct ItemExtra
{
    u32 unk0:15;
    u32 extra:5;
    u32 unk20:12;
};

void *sub_0801406C(struct ItemExtra *item)
{
    u32 extra;

    if (item == NULL)
        return NULL;
    switch (((struct Item *)item)->category)
    {
    case ITEM_CATEGORY_WEAPON:
        extra = item->extra;
        break;
    case ITEM_CATEGORY_ARMOR:
        extra = item->extra;
        break;
    case ITEM_CATEGORY_HEAD:
        extra = item->extra;
        break;
    case ITEM_CATEGORY_5:
        return NULL;
    }
    if (extra != 0)
        return GetDataRecord((extra - 1) | 0xD0000);
    return NULL;
}

// Marks the current weapon equipped (bit 14) and the other two not, if it
// can be equipped. FALSE if it can't.
bool32 sub_080140AC(void)
{
    struct Item *weapon = (struct Item *)&gPlayerStats.weapons[gPlayerStats.currentWeapon];
    u32 i;

    if (CanEquipItem(weapon))
    {
        if (weapon->category == ITEM_CATEGORY_WEAPON)
        {
            if (!weapon->flag14)
            {
                weapon->flag14 = TRUE;
                for (i = 0; i < 3; i++)
                    if (gPlayerStats.currentWeapon != i)
                        ((struct Item *)gPlayerStats.weapons)[i].flag14 = FALSE;
            }
        }
    }
    else
    {
        return FALSE;
    }
    return TRUE;
}

// Sets the equipped flag (bit 14) on the worn armor if it can still be
// equipped, clears it otherwise; returns the flag.
u32 sub_08014114(void)
{
    u8 category;
    struct ItemBytes *item = &EQUIP->armor;

    if (CanEquipItem(item))
    {
        if ((category = item->category) == ITEM_CATEGORY_ARMOR)
            item->flag14 = TRUE;
    }
    else
    {
        if ((category = item->category) == ITEM_CATEGORY_ARMOR)
            item->flag14 = FALSE;
    }
    return EQUIP->armor.flag14;
}

// Same for the head slot.
u32 sub_08014160(void)
{
    u8 category;
    struct ItemBytes *item = &EQUIP->head;

    if (CanEquipItem(item))
    {
        if ((category = item->category) == ITEM_CATEGORY_HEAD)
            item->flag14 = TRUE;
    }
    else
    {
        if ((category = item->category) == ITEM_CATEGORY_HEAD)
            item->flag14 = FALSE;
    }
    return EQUIP->head.flag14;
}

// Same for the third equipment slot.
u32 sub_080141AC(void)
{
    u8 category;
    struct ItemBytes *item = &EQUIP->unk84;

    if (CanEquipItem(item))
    {
        if ((category = item->category) == ITEM_CATEGORY_5)
            item->flag14 = TRUE;
    }
    else
    {
        if ((category = item->category) == ITEM_CATEGORY_5)
            item->flag14 = FALSE;
    }
    return EQUIP->unk84.flag14;
}

// Puts *item into weapon slot `slot`, empties *item, and returns the weapon
// that was there with its equipped flag cleared.
u32 sub_080141F8(struct Item *item, u32 slot)
{
    u32 old = gPlayerStats.weapons[slot];

    gPlayerStats.weapons[slot] = *(u32 *)item;
    item->category = ITEM_CATEGORY_NONE;
    return old & ~0x4000;
}

u8 sub_08014220(void)
{
    u8 *record = GetWeaponRecordInline((struct Item *)&gPlayerStats.weapons[gPlayerStats.currentWeapon]);
    u16 value = sub_08011E54();

    if (record != NULL)
        return gUnknown_080FB4CC[record[0x151] - value];
    return 0;
}
