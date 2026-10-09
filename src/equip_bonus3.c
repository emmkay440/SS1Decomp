#include "global.h"
#include "equip_inline.h"

// Bonus 0xB total (see equip_bonus.c).

s16 sub_08011E54(void)
{
    s16 total = 0;
    u8 equipped;

    if (EQUIP->weapons[gPlayerStats.currentWeapon].flag14)
    {
        total += SumBonus153(GetWeaponRecordInline(WEAPON), 0xB);
        total += SumBonus150(GetExtraRecordInline((struct ItemExtra *)WEAPON), 0xB);
    }
    equipped = EQUIP->armor.flag14;
    if (equipped)
    {
        total += SumBonusF2(GetArmorRecordInline((struct Item *)&gPlayerStats.armor), 0xB);
        total += SumBonus150(GetExtraRecordInline((struct ItemExtra *)&gPlayerStats.armor), 0xB);
    }
    equipped = EQUIP->head.flag14;
    if (equipped)
    {
        total += SumBonusF2(GetHeadRecordInline((struct Item *)&gPlayerStats.head), 0xB);
        total += SumBonus150(GetExtraRecordInline((struct ItemExtra *)&gPlayerStats.head), 0xB);
    }
    equipped = EQUIP->unk84.flag14;
    if (equipped)
        total = total + SumBonus150(GetCategory5RecordInline((struct Item *)&gPlayerStats.unk84), 0xB);
    return total;
}
