#include "global.h"
#include "item.h"
#include "menu.h"

// MenuScreen keeps working copies of the player's items and writes them
// back with ApplyMenuChanges.

extern u32 gMenuHeldCount;
extern void *gUnknown_03000494;
extern struct Item *gMenuInventory;
extern u32 *gMenuWeapons;
extern u32 *gMenuEquipment;
extern void *gUnknown_030004A4;
extern struct Item *gMenuSelectedItem;
extern struct MenuSlot gMenuSelectedSlot;

extern u8 gUnknown_03000479;

u8 CanPutItemInSlot(struct MenuSlot *slot, struct Item *item);

// Same as CanSwapItems (src/menu_stats.c), inlined into sub_08040B2C.
static inline u8 CanSwapInline(struct MenuSlot *slot, struct Item *item)
{
    if (!CanPutItemInSlot(slot, gMenuSelectedItem))
        return FALSE;
    if (!CanPutItemInSlot(&gMenuSelectedSlot, item))
        return FALSE;
    if (gMenuSelectedItem->category == ITEM_CATEGORY_STACK && item->category != ITEM_CATEGORY_STACK
     && gUnknown_03000479)
        return FALSE;
    return TRUE;
}

// TRUE if the held item can be put down on `slot` (swapping with what is
// there, if anything).
bool32 sub_08040B2C(struct MenuSlot *slot)
{
    struct Item *item;

    if (gMenuSelectedItem == NULL)
        return FALSE;
    item = NULL;
    switch (MENU_SLOT_TYPE(slot))
    {
    case 1:
        item = (struct Item *)gMenuWeapons;
        break;
    case 2:
        item = (struct Item *)gMenuEquipment;
        break;
    case 3:
        item = gMenuInventory;
        break;
    case 6:
        item = (struct Item *)gUnknown_030004A4;
        break;
    }
    if (MENU_SLOT_TYPE(slot) == 4)
        return FALSE;
    item = &item[MENU_SLOT_SUBSLOT(slot)];
    if (item->category != ITEM_CATEGORY_NONE)
    {
        if (CanSwapInline(slot, item))
            return TRUE;
    }
    else
    {
        if (CanPutItemInSlot(slot, gMenuSelectedItem))
            return TRUE;
    }
    return FALSE;
}

struct Item *sub_08040BF8(void)
{
    return gMenuInventory;
}

struct Item *sub_08040C04(u16 slot)
{
    if (gMenuInventory != NULL && slot <= 24)
        return &gMenuInventory[slot];
    return NULL;
}

u32 *sub_08040C24(void)
{
    return gMenuWeapons;
}

void *sub_08040C30(void)
{
    return gUnknown_03000494;
}

u32 *sub_08040C3C(void)
{
    return gMenuEquipment;
}

void *sub_08040C48(void)
{
    return gUnknown_030004A4;
}

// Note: this adds gMenuHeldCount to the selected item *after* clearing the
// pointer, so it writes to address 0 (a bug in the original).
void sub_08040C54(void)
{
    gMenuSelectedSlot.unk0 = 0;
    gMenuSelectedSlot.unk1 = 0;
    MENU_SLOT_TYPE(&gMenuSelectedSlot) = 0;
    MENU_SLOT_SUBSLOT(&gMenuSelectedSlot) = 0;
    gMenuSelectedItem = NULL;
    if (gMenuHeldCount != 0)
        gMenuSelectedItem->count += gMenuHeldCount;
    gMenuHeldCount = 0;
}

struct Item *sub_08040C98(void)
{
    return gMenuSelectedItem;
}

struct MenuSlot *sub_08040CA4(void)
{
    return &gMenuSelectedSlot;
}
