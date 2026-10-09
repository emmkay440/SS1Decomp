#include "global.h"
#include "equip_inline.h"

// Totals of one bonus type over the equipped items (and their extra
// records), for the stat screens. Built from the inline helpers in
// equip_inline.h.

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

