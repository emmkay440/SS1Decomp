#include "global.h"
#include "item.h"
#include "menu.h"

extern u8 gMenuPage;

u8 CanEquipItem(struct Item *item);
u32 sub_08007544(void);
bool32 sub_08014EB4(struct Item *item);

#define ITEM_WORD(item) (*(u32 *)(item))
#define ITEM_EQUIP_MASK (ITEM_UNAPPRAISED | (7 << 4))  // category + unappraised

// TRUE if `item` may be put in `slot`. Slot types: 1 weapon, 2 equipment
// (subSlot 0 head, 1 body, 2 category 5, 3 a usable item), 3 and 5 take
// anything, 4 usable items that pass sub_08014EB4, 6 depends on the menu
// page. Weapons, armor and head gear must be appraised and equippable.
u8 CanPutItemInSlot(struct MenuSlot *slot, struct Item *item)
{
    u8 canEquip = CanEquipItem(item);

    switch (MENU_SLOT_TYPE(slot))
    {
    case 1:
        if ((ITEM_WORD(item) & ITEM_EQUIP_MASK) == (ITEM_CATEGORY_WEAPON << 4) && canEquip)
            return TRUE;
        break;
    case 2:
        if (MENU_SLOT_SUBSLOT(slot) == 0 && (ITEM_WORD(item) & ITEM_EQUIP_MASK) == (ITEM_CATEGORY_HEAD << 4) && canEquip)
            return TRUE;
        if (MENU_SLOT_SUBSLOT(slot) == 1 && (ITEM_WORD(item) & ITEM_EQUIP_MASK) == (ITEM_CATEGORY_ARMOR << 4) && canEquip)
            return TRUE;
        if (MENU_SLOT_SUBSLOT(slot) == 2 && (*(u16 *)item & 0x8070) == (ITEM_CATEGORY_5 << 4))
            return TRUE;
        if (MENU_SLOT_SUBSLOT(slot) == 3 && item->category == ITEM_CATEGORY_USABLE && !(item->id - 21 <= 5u))
        {
            if (sub_08007544() == 0)
                return TRUE;
            if (item->id != ITEM_ANGEL_WING)
                return TRUE;
        }
        break;
    case 3:
    case 5:
        return TRUE;
    case 4:
        if (item->category == ITEM_CATEGORY_USABLE && !(item->id - 21 <= 5u) && sub_08014EB4(item))
            return TRUE;
        break;
    case 6:
    {
        s32 page = gMenuPage;
        s32 first = 2;  // in a variable: gives `cmp #2; blt`, a literal `cmp #1; ble`

        if (page >= first)
        {
            if (page <= 4)
            {
                if (item->category != ITEM_CATEGORY_STACK && MENU_SLOT_SUBSLOT(slot) == 12)
                    return TRUE;
            }
            else if (page == 5)
            {
                return TRUE;
            }
        }
        break;
    }
    }
    return FALSE;
}
