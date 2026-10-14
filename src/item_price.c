#include "global.h"
#include "data_record.h"

void *memcpy(void *dest, const void *src, u32 size);

// The item word with the fields the price depends on.
struct ItemPriceBits
{
    u32 unk0:4;
    u32 category:3;
    u32 id:7;
    u32 flag14:1;
    u32 extra:5;       // +1 of an extra record (category 0xD), 0 = none
    u32 grade:4;       // +20 index into gUnknown_0805485C
    u32 grade2:2;      // +24 index into gUnknown_0805489C
    u32 unk26:6;
};

struct Multipliers4
{
    u32 value[4];
};

extern const u32 gUnknown_0805485C[16];              // price multipliers (tenths)
extern const struct Multipliers4 gUnknown_0805489C;

// Price of an item, from its record (+0x158 for usable items, +0x15C
// weapons and category 5, +0xFC armor and head gear, +0x19C category 6;
// gold stacks are worth 0). Unless `base` is set, weapons, armor and head
// gear are then scaled in tenths by their extra record (u16 at +0x15A) and
// the two multiplier tables.
u32 sub_0800FE5C(struct ItemPriceBits *item, u32 base)
{
    u32 mult[16];
    struct Multipliers4 mult2;
    u8 *record;
    u8 *extraRecord;
    u32 price;
    u32 extra;
    u32 grade;
    u32 grade2;

    memcpy(mult, gUnknown_0805485C, sizeof(mult));
    mult2 = gUnknown_0805489C;
    switch (item->category)
    {
    case 2:
        record = NULL;
        if (item->category == 2)
            record = GetDataRecord(item->id | 0x50000);
        price = *(u32 *)(record + 0x15C);
        break;
    case 3:
        record = NULL;
        if (item->category == 3)
            record = GetDataRecord(item->id | 0x60000);
        price = *(u32 *)(record + 0xFC);
        break;
    case 4:
        record = NULL;
        if (item->category == 4)
            record = GetDataRecord(item->id | 0x70000);
        price = *(u32 *)(record + 0xFC);
        break;
    case 1:
        record = NULL;
        if (item->category == 1)
            record = GetDataRecord(item->id | 0xA0000);
        return *(u32 *)(record + 0x158);
    case 5:
        record = NULL;
        if (item->category == 5)
            record = GetDataRecord(item->id | 0xB0000);
        return *(u32 *)(record + 0x15C);
    case 6:
        record = NULL;
        if (item->category == 6)
            record = GetDataRecord(item->id | 0x160000);
        return *(u32 *)(record + 0x19C);
    case 7:
        return 0;
    }
    if (base != 0)
        return price;
    switch (item->category)
    {
    case 2:
        extra = item->extra;
        break;
    case 3:
        extra = item->extra;
        break;
    case 4:
        extra = item->extra;
        break;
    case 5:
        goto scale;
    }
    if (extra != 0)
        extraRecord = GetDataRecord((extra - 1) | 0xD0000);
    else
        extraRecord = NULL;
    if (extraRecord != NULL)
        price = *(u16 *)(extraRecord + 0x15A) * price / 10;
scale:
    grade = 0;
    grade2 = 0;
    switch (item->category)
    {
    case 2:
        grade = item->grade;
        grade2 = item->grade2;
        break;
    case 3:
        grade = item->grade;
        grade2 = item->grade2;
        break;
    case 4:
        grade = item->grade;
        grade2 = item->grade2;
        break;
    }
    price = mult[grade] * price / 10;
    price = mult2.value[grade2] * price / 10;
    return price;
}
