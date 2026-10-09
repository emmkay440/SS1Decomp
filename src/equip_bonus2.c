#include "global.h"
#include "equip_inline.h"

// More bonus totals (see equip_bonus.c).

s16 sub_08010E00(void)
{
    s16 total = 0;
    u8 equipped;

    if (EQUIP->weapons[gPlayerStats.currentWeapon].flag14)
    {
        total += SumBonus153(GetWeaponRecordInline(WEAPON), 0xC);
        total += SumBonus150(GetExtraRecordInline((struct ItemExtra *)WEAPON), 0xC);
    }
    equipped = EQUIP->armor.flag14;
    if (equipped)
    {
        total += SumBonusF2(GetArmorRecordInline((struct Item *)&gPlayerStats.armor), 0xC);
        total += SumBonus150(GetExtraRecordInline((struct ItemExtra *)&gPlayerStats.armor), 0xC);
    }
    equipped = EQUIP->head.flag14;
    if (equipped)
    {
        total += SumBonusF2(GetHeadRecordInline((struct Item *)&gPlayerStats.head), 0xC);
        total += SumBonus150(GetExtraRecordInline((struct ItemExtra *)&gPlayerStats.head), 0xC);
    }
    equipped = EQUIP->unk84.flag14;
    if (equipped)
        total = total + SumBonus150(GetCategory5RecordInline((struct Item *)&gPlayerStats.unk84), 0xC);
    if (GetPlayerClass() == 3)
        total = total + gPlayerStats.skillBlock.skills[5].level * 20;
    return total;
}

s16 sub_08011200(void)
{
    s16 total = 0;
    u8 equipped;

    if (EQUIP->weapons[gPlayerStats.currentWeapon].flag14)
    {
        total += SumBonus153(GetWeaponRecordInline(WEAPON), 0xD);
        total += SumBonus150(GetExtraRecordInline((struct ItemExtra *)WEAPON), 0xD);
    }
    equipped = EQUIP->armor.flag14;
    if (equipped)
    {
        total += SumBonusF2(GetArmorRecordInline((struct Item *)&gPlayerStats.armor), 0xD);
        total += SumBonus150(GetExtraRecordInline((struct ItemExtra *)&gPlayerStats.armor), 0xD);
    }
    equipped = EQUIP->head.flag14;
    if (equipped)
    {
        total += SumBonusF2(GetHeadRecordInline((struct Item *)&gPlayerStats.head), 0xD);
        total += SumBonus150(GetExtraRecordInline((struct ItemExtra *)&gPlayerStats.head), 0xD);
    }
    equipped = EQUIP->unk84.flag14;
    if (equipped)
        total = total + SumBonus150(GetCategory5RecordInline((struct Item *)&gPlayerStats.unk84), 0xD);
    if (GetPlayerClass() == 2)
        total = total + gPlayerStats.skillBlock.skills[5].level * 20;
    return total;
}

s16 sub_08011600(void)
{
    s16 total = 0;
    u8 equipped;

    if (EQUIP->weapons[gPlayerStats.currentWeapon].flag14)
    {
        total += SumBonus153(GetWeaponRecordInline(WEAPON), 0xF);
        total += SumBonus150(GetExtraRecordInline((struct ItemExtra *)WEAPON), 0xF);
    }
    equipped = EQUIP->armor.flag14;
    if (equipped)
    {
        total += SumBonusF2(GetArmorRecordInline((struct Item *)&gPlayerStats.armor), 0xF);
        total += SumBonus150(GetExtraRecordInline((struct ItemExtra *)&gPlayerStats.armor), 0xF);
    }
    equipped = EQUIP->head.flag14;
    if (equipped)
    {
        total += SumBonusF2(GetHeadRecordInline((struct Item *)&gPlayerStats.head), 0xF);
        total += SumBonus150(GetExtraRecordInline((struct ItemExtra *)&gPlayerStats.head), 0xF);
    }
    equipped = EQUIP->unk84.flag14;
    if (equipped)
        total = total + SumBonus150(GetCategory5RecordInline((struct Item *)&gPlayerStats.unk84), 0xF);
    return total;
}
