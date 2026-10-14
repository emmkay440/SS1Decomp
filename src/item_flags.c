#include "global.h"
#include "data_record.h"
#include "item.h"

// The item word with the fields this function reads.
struct ItemExtra
{
    u32 unk0:4;
    u32 category:3;
    u32 id:7;
    u32 flag14:1;
    u32 extra:5;       // +1 of an extra record (category 0xD), 0 = none
    u32 unk20:4;
    u32 unk24:8;
};

// flags |= 1 << each of the three ability bytes at p (probably a macro:
// each use has its own loop variables).
#define ADD_ABILITIES(flags, p)                 \
{                                               \
    u32 _i;                                     \
    u8 *_p;                                     \
                                                \
    for (_i = 0, _p = (p); _i < 3; _i++)        \
        (flags) |= 1 << _p[_i];                 \
}

// Ability bits of an item: 1 << each of the three ability bytes of its
// record (+0x153 for weapons, +0xF2 for armor and head gear, +0x150 for
// category 5) and of its extra record (+0x150). Weapons with the type
// byte at +0x159 other than 8 get 0x200, type 8 gets 0x400 when unk20 is
// set; armor and head gear always get 0x400; bit 1 adds 0x200 for them
// and for category 5.
u32 sub_0800F78C(struct ItemExtra *item)
{
    u32 flags = 0;
    u8 *record;
    u8 *extra;

    switch (item->category)
    {
    case ITEM_CATEGORY_WEAPON:
        record = GetDataRecord(item->id | 0x50000);
        ADD_ABILITIES(flags, record + 0x153);
        if (item->extra != 0)
        {
            extra = GetDataRecord((item->extra - 1) | 0xD0000);
            ADD_ABILITIES(flags, extra + 0x150);
        }
        if (record[0x159] != 8)
            flags |= 0x200;
        else if (item->unk20 != 0)
            flags |= 0x400;
        break;
    case ITEM_CATEGORY_ARMOR:
        {
            u8 *r = GetDataRecord(item->id | 0x60000);

            ADD_ABILITIES(flags, r + 0xF2);
        }
        if (item->extra != 0)
        {
            extra = GetDataRecord((item->extra - 1) | 0xD0000);
            ADD_ABILITIES(flags, extra + 0x150);
        }
        if (flags & 2)
            flags |= 0x200;
        flags |= 0x400;
        break;
    case ITEM_CATEGORY_HEAD:
        {
            u8 *r = GetDataRecord(item->id | 0x70000);

            ADD_ABILITIES(flags, r + 0xF2);
        }
        if (item->extra != 0)
        {
            extra = GetDataRecord((item->extra - 1) | 0xD0000);
            ADD_ABILITIES(flags, extra + 0x150);
        }
        if (flags & 2)
            flags |= 0x200;
        flags |= 0x400;
        break;
    case ITEM_CATEGORY_5:
        {
            u8 *r = GetDataRecord(item->id | 0xB0000);

            ADD_ABILITIES(flags, r + 0x150);
        }
        if (flags & 2)
            flags |= 0x200;
        break;
    }
    return flags;
}
