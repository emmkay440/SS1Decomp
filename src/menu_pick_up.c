#include "global.h"
#include "item.h"
#include "menu.h"
#include "sound.h"

extern u8 gMenuPage;
extern struct Item *gMenuInventory;
extern struct Item *gMenuWeapons;
extern struct Item *gMenuEquipment;
extern u16 *gUnknown_03000494;
extern struct Item *gUnknown_030004A4;
extern struct Item *gUnknown_030004A8;
extern struct Item *gMenuSelectedItem;
extern struct MenuSlot gMenuSelectedSlot;

s32 sub_08040DB0(struct Item *item);
void ApplyMenuChanges(void);

// Copies of the gold counts in src/menu_items.c.
static inline u32 CountInventoryGold(void)
{
    struct Item *p;
    u32 total;
    u8 x, y;

    total = 0;
    p = gMenuInventory;
    for (y = 0; y < 5; y++)
    {
        for (x = 0; x < 5; x++)
        {
            if (p->category == ITEM_CATEGORY_STACK)
                total += p->count;
            p++;
        }
    }
    return total;
}

static inline u32 CountListGold(void)
{
    struct Item *p;
    u32 total;
    u8 x, y;

    if (gMenuPage != 5)
        p = gUnknown_030004A8;
    else
        p = gUnknown_030004A4;
    total = 0;
    for (y = 0; y < 20; y++)
    {
        for (x = 0; x < 3; x++)
        {
            if (p->category == ITEM_CATEGORY_STACK)
                total += p->count;
            p++;
        }
    }
    return total;
}

// Picks up the item on `slot` (it becomes gMenuSelectedItem) and plays the
// matching sound; returns TRUE if there was one. Type 4 (quick slots)
// clears the entry instead. On type 6 outside page 5 the player needs
// enough gold for the item (sub_08040DB0), else sound 0x61. Slot 0x302
// and type 5 can't be picked up.
bool32 sub_08040120(struct MenuSlot *slot)
{
    struct Item *list;
    bool32 equip = FALSE;
    u32 type;

    switch (MENU_SLOT_TYPE(slot))
    {
    case 1:
        list = gMenuWeapons;
        equip = TRUE;
        break;
    case 2:
        list = gMenuEquipment;
        equip = TRUE;
        break;
    case 3:
        list = gMenuInventory;
        break;
    case 6:
        list = gUnknown_030004A4;
        break;
    }
    type = MENU_SLOT_TYPE(slot);
    if (type == 5)
        return FALSE;
    if (slot->pos == 0x302)
        return FALSE;
    if (type != 4)
    {
        if (type == 6 && gMenuPage != 5)
        {
            u32 gold = CountInventoryGold() + CountListGold();
            u32 index = MENU_SLOT_SUBSLOT(slot);
            if (gold < sub_08040DB0(&list[index]))
            {
                PlaySE(0x61);
                return FALSE;
            }
        }
        {
            // Integer address math: `&list[i]` puts the base first in the add.
            struct Item *item = (struct Item *)(MENU_SLOT_SUBSLOT(slot) * sizeof(struct Item) + (u32)list);

            if (item->category != 0)
            {
                gMenuSelectedSlot = *slot;
                gMenuSelectedItem = item;
                if (item->category == ITEM_CATEGORY_STACK)
                    PlaySE(0x63);
                else if (!equip)
                    PlaySE(0x5E);
                else
                    PlaySE(0x80);
                return TRUE;
            }
        }
    }
    else
    {
        if (gUnknown_03000494[MENU_SLOT_SUBSLOT(slot)] != 0)
        {
            gUnknown_03000494[MENU_SLOT_SUBSLOT(slot)] = 0;
            ApplyMenuChanges();
        }
    }
    return FALSE;
}
