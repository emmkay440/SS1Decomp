#include "global.h"
#include "item.h"

// MenuScreen keeps working copies of the player's items and writes them
// back with ApplyMenuChanges.

struct MenuSlot
{
    u8 unk0;
    u8 unk1;
    u8 type;          // CanPutItemInSlot: 1 weapon, 2 equipment, ...
    u8 subSlot;
};

extern u32 gMenuHeldCount;
extern void *gUnknown_03000494;
extern struct Item *gMenuInventory;
extern u32 *gMenuWeapons;
extern u32 *gMenuEquipment;
extern void *gUnknown_030004A4;
extern struct Item *gMenuSelectedItem;
extern struct MenuSlot gMenuSelectedSlot;

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
    gMenuSelectedSlot.type = 0;
    gMenuSelectedSlot.subSlot = 0;
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
