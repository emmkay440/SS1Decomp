#include "global.h"
#include "equip_inline.h"

// Totals of one bonus type over the equipped items (and their extra
// records), for the stat screens. Built from the inline helpers in
// equip_inline.h.

// Halfword view of the weapon item words, for code that reads the id with
// ldrh.
struct ItemHalf
{
    u16 unk0:7;
    u16 id:7;
    u16 unk14:2;
    u16 unk16;
} __attribute__((packed, aligned(2)));

struct EquipHalfView
{
    u8 unk0[0x70];
    struct ItemHalf weapons[3];
};

// Attack style of the equipped weapon for the player's class, from byte
// 0x159 of the weapon record (0 = none). An unknown class returns nothing
// (as in the original). (What the values mean is a guess.)
u32 sub_080102C4(void)
{
    u8 *record = GetDataRecord(((struct EquipHalfView *)&gPlayerStats)->weapons[gPlayerStats.currentWeapon].id | 0x50000);
    u8 *style;
    u32 kind;

    if (record != NULL)
    {
        if (!EQUIP->weapons[gPlayerStats.currentWeapon].flag14)
            return 0;
        style = &record[0x159];
        kind = *style - 1;
        kind >>= 1;
        switch ((s32)GetPlayerClass())
        {
        case 0:
            if (kind == 1)
                kind = 2;
            else if (kind == 2)
                kind = 1;
            else
                kind = 0;
            return kind + 1;
        case 1:
            return 0;
        case 2:
            if (kind == 1)
                return 2;
            return 1;
        case 3:
            switch (*style)
            {
            case 5:
            case 6:
                return 1;
            case 7:
                return 2;
            default:
                return 0;
            }
        }
    }
    else
    {
        return 0;
    }
}

s16 sub_0801036C(void)
{
    s16 total = 0;
    u8 equipped;

    if (EQUIP->weapons[gPlayerStats.currentWeapon].flag14)
    {
        total += SumBonus153(GetWeaponRecordInline(WEAPON), 0x10);
        total += SumBonus150(GetExtraRecordInline((struct ItemExtra *)WEAPON), 0x10);
    }
    equipped = EQUIP->armor.flag14;
    if (equipped)
    {
        total += SumBonusF2(GetArmorRecordInline((struct Item *)&gPlayerStats.armor), 0x10);
        total += SumBonus150(GetExtraRecordInline((struct ItemExtra *)&gPlayerStats.armor), 0x10);
    }
    equipped = EQUIP->head.flag14;
    if (equipped)
    {
        total += SumBonusF2(GetHeadRecordInline((struct Item *)&gPlayerStats.head), 0x10);
        total += SumBonus150(GetExtraRecordInline((struct ItemExtra *)&gPlayerStats.head), 0x10);
    }
    equipped = EQUIP->unk84.flag14;
    if (equipped)
        total = total + SumBonus150(GetCategory5RecordInline((struct Item *)&gPlayerStats.unk84), 0x10);
    if (GetPlayerClass() == CLASS_WARRIOR)
        total = total + gPlayerStats.skillBlock.skills[5].level * 12;
    return total;
}

s16 sub_0801076C(void)
{
    s16 total = 0;
    u8 equipped;

    if (EQUIP->weapons[gPlayerStats.currentWeapon].flag14)
    {
        total += SumBonus153(GetWeaponRecordInline(WEAPON), 0x14);
        total += SumBonus150(GetExtraRecordInline((struct ItemExtra *)WEAPON), 0x14);
    }
    equipped = EQUIP->armor.flag14;
    if (equipped)
    {
        total += SumBonusF2(GetArmorRecordInline((struct Item *)&gPlayerStats.armor), 0x14);
        total += SumBonus150(GetExtraRecordInline((struct ItemExtra *)&gPlayerStats.armor), 0x14);
    }
    equipped = EQUIP->head.flag14;
    if (equipped)
    {
        total += SumBonusF2(GetHeadRecordInline((struct Item *)&gPlayerStats.head), 0x14);
        total += SumBonus150(GetExtraRecordInline((struct ItemExtra *)&gPlayerStats.head), 0x14);
    }
    equipped = EQUIP->unk84.flag14;
    if (equipped)
        total = total + SumBonus150(GetCategory5RecordInline((struct Item *)&gPlayerStats.unk84), 0x14);
    return total;
}

