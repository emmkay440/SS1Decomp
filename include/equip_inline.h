#ifndef GUARD_EQUIP_INLINE_H
#define GUARD_EQUIP_INLINE_H

#include "item.h"
#include "item_bonus.h"
#include "player_stats.h"

// Static inline copies of the record getters (item_records.c), the
// extra-record lookup (sub_0801406C, equipment.c) and the bonus sums
// (item_bonus.c), which the equipment bonus totals (equip_bonus*.c) inline.

void *GetDataRecord(u32 key);
u32 GetPlayerClass(void);

static inline void *GetWeaponRecordInline(struct Item *item)
{
    void *record = NULL;

    if (item == NULL)
        return NULL;
    if (item->category == ITEM_CATEGORY_WEAPON)
        record = GetDataRecord(item->id | 0x50000);
    return record;
}

static inline void *GetArmorRecordInline(struct Item *item)
{
    void *record = NULL;

    if (item == NULL)
        return NULL;
    if (item->category == ITEM_CATEGORY_ARMOR)
        record = GetDataRecord(item->id | 0x60000);
    return record;
}

static inline void *GetHeadRecordInline(struct Item *item)
{
    void *record = NULL;

    if (item == NULL)
        return NULL;
    if (item->category == ITEM_CATEGORY_HEAD)
        record = GetDataRecord(item->id | 0x70000);
    return record;
}

static inline void *GetCategory5RecordInline(struct Item *item)
{
    void *record = NULL;

    if (item == NULL)
        return NULL;
    if (item->category == ITEM_CATEGORY_5)
        record = GetDataRecord(item->id | 0xB0000);
    return record;
}

// Byte view of the equipment item words, for the equipped flag (bit 14);
// see equipment.c.
struct ItemBytes
{
    u8 unk0:4;
    u8 category:3;
    u8 unk7:1;
    u8 unk8:6;
    u8 flag14:1;
    u8 unk15:1;
    u16 unk16;
} __attribute__((packed));

struct EquipView
{
    u8 unk0[0x70];
    struct ItemBytes weapons[3]; // +0x70
    struct ItemBytes head;       // +0x7C
    struct ItemBytes armor;      // +0x80
    struct ItemBytes unk84;      // +0x84
};

#define EQUIP ((struct EquipView *)&gPlayerStats)
#define WEAPON ((struct Item *)&gPlayerStats.weapons[gPlayerStats.currentWeapon])

struct ItemExtra
{
    u32 unk0:15;
    u32 extra:5;
    u32 unk20:12;
};

static inline void *GetExtraRecordInline(struct ItemExtra *item)
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

static inline s16 SumBonus153(struct BonusesAt153 *rec, u8 type)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == type)
                sum += rec->value[i];
    return sum;
}

static inline s16 SumBonusF2(struct BonusesAtF2 *rec, u8 type)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == type)
                sum += rec->value[i];
    return sum;
}

static inline s16 SumBonus150(struct BonusesAt150 *rec, u8 type)
{
    s16 sum = 0;
    s16 i;

    if (rec != NULL)
        for (i = 0; i < 3; i++)
            if (rec->type[i] == type)
                sum += rec->value[i];
    return sum;
}

#endif // GUARD_EQUIP_INLINE_H
