#include "global.h"
#include "item.h"
#include "menu.h"
#include "player_stats.h"
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
extern u32 gMenuHeldCount;
extern u8 gUnknown_03000479;
extern u32 gUnknown_03000488;

struct MenuHeld
{
    u8 unk0;
    u8 unk1[0x7];
    u32 unk8;
    u32 count; // +0xC
};

void ApplyMenuChanges(void);
void sub_0804096C(void);
void sub_08040EC0(void);
void sub_08016DC0(void);
u8 CanSwapItems(struct MenuSlot *slot, struct Item *item);
u8 CanPutItemInSlot(struct MenuSlot *slot, struct Item *item);
u32 sub_0804134C(struct Item *item);
void AppraiseItem(struct Item *item);
bool32 sub_080414C8(void);
bool32 sub_08014EB4(struct Item *item);
bool32 DropItem(u32 item);
u8 UseItem(struct Item *item);
u32 sub_08007544(void);
bool32 sub_08007638(void);
void bzero(void *dest, u32 size);

#define MAX_STACK 100000
#define SEL ((struct MenuSlotBytes *)&gMenuSelectedSlot)
#define SLOT ((struct MenuSlotBytes *)slot)

// Copy of the gold count in src/menu_items.c.
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

// Drops the held item (gMenuSelectedItem, picked up from gMenuSelectedSlot)
// on `slot`: swaps or merges it with the item there, moves quick slot
// entries along, or uses it (slot 0x302) or throws it away (type 5).
// Returns what happened for the caller's switch (0 failed, 1 moved, 2 sell,
// 3/9 buy, 5 dropped, 6/7 used, 10 appraised, 11/13 equipment changed;
// the meanings are guesses from the sounds and the calls made).
u8 sub_080402B4(struct MenuSlot *slot, struct MenuHeld *held)
{
    u8 unused[28]; // stack space the original reserves but never uses
    u8 result = 1;
    struct Item *list;
    bool32 equip;
    struct Item *sel;
    u32 raw;
    u32 count;
    u8 *record;
    u8 i;
    u8 used;
    u32 id;

    if (slot->pos == gMenuSelectedSlot.pos)
    {
        sub_08040C54();
        if ((u8)(SLOT->type - 1) <= 1)
            PlaySE(0x80);
        else
            PlaySE(0x5E);
        return result;
    }
    list = NULL;
    equip = FALSE;
    switch (SLOT->type)
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
    if (SLOT->type == 4)
        goto quick_slot;
    list += SLOT->subSlot;
    if (list->category != 0)
    {
        if (!CanSwapItems(slot, list))
            goto fail;
        for (i = 0; i <= 2; i++)
        {
            if (SEL->type == 3 && SLOT->type == 3)
            {
                if (gUnknown_03000494[i] == SEL->subSlot + 1)
                    gUnknown_03000494[i] = SLOT->subSlot + 1;
                else if (gUnknown_03000494[i] == SLOT->subSlot + 1)
                    gUnknown_03000494[i] = SEL->subSlot + 1;
            }
        }
        if (gMenuPage == 5 && SEL->type != 6 && SLOT->type == 6)
        {
            sub_0804096C();
            ApplyMenuChanges();
        }
        if ((*(u16 *)gMenuSelectedItem & 0x3FF0) == 0x610 && sub_0804134C(list))
        {
            AppraiseItem(list);
            bzero(gMenuSelectedItem, sizeof(struct Item));
            result = 10;
            goto done;
        }
        sel = gMenuSelectedItem;
        if (sel->category == ITEM_CATEGORY_STACK && list->category == ITEM_CATEGORY_STACK)
        {
            count = list->count;
            if (count + held->count > MAX_STACK)
            {
                count = MAX_STACK - count;
                list->count = MAX_STACK;
                sel->count -= count;
                held->count -= count;
                gMenuHeldCount = held->count;
                goto fail;
            }
            list->count = count + held->count;
            if (gUnknown_03000479)
            {
                sel->count -= held->count;
                goto done;
            }
            bzero(sel, sizeof(struct Item));
            goto done;
        }
        raw = *(u32 *)gMenuSelectedItem;
        *(u32 *)gMenuSelectedItem = *(u32 *)list;
        *(u32 *)list = raw;
        goto done;
    }
    else
    {
        if (!CanPutItemInSlot(slot, gMenuSelectedItem))
            goto fail;
        for (i = 0; i <= 2; i++)
        {
            if (SEL->type == 3 && SLOT->type == 3)
            {
                if (gUnknown_03000494[i] == SEL->subSlot + 1)
                    gUnknown_03000494[i] = SLOT->subSlot + 1;
            }
        }
        if (gMenuPage == 5 && SEL->type != 6 && SLOT->type == 6)
        {
            sub_0804096C();
            ApplyMenuChanges();
        }
        if ((u8)(gMenuPage - 2) <= 2
         && (SLOT->type == 3 || SLOT->type == 1 || SLOT->type == 2)
         && SEL->type == 6)
        {
            result = 3;
            if (SEL->subSlot > 8 && (u8)(gMenuPage - 2) <= 2)
                result = 9;
            return result;
        }
        if (gMenuPage != 5 && slot->pos == 0xC06)
        {
            if (SEL->type == 1
             || (SEL->type == 2 && SEL->subSlot <= 2))
            {
                if (!sub_080414C8())
                    goto fail;
            }
            return 2;
        }
        if (gMenuSelectedItem->category == ITEM_CATEGORY_STACK && gUnknown_03000479)
        {
            gMenuSelectedItem->count -= held->count;
            *list = *gMenuSelectedItem;
            list->count = held->count;
            if (SLOT->type != 5)
                goto done;
            DropItem(*(u32 *)list);
            result = 5;
            bzero(list, sizeof(struct Item));
            goto done;
        }
        if (SLOT->type == 5)
        {
            record = GetCategory5Record(gMenuSelectedItem);
            if (record != NULL && record[0x156] != 0)
                ((u8 *)gMenuSelectedItem)[2] = 0;
            DropItem(*(u32 *)gMenuSelectedItem);
            result = 5;
            sub_08040EC0();
            goto done;
        }
        if (slot->pos != 0x302)
        {
            raw = *(u32 *)gMenuSelectedItem;
            *(u32 *)gMenuSelectedItem = *(u32 *)list;
            *(u32 *)list = raw;
            goto done;
        }
        if (!(sub_08007544() && gMenuSelectedItem->id == 6)
         && !(gMenuSelectedItem->id == 6 && sub_08007638()))
        {
            used = UseItem(gMenuSelectedItem);
            id = gMenuSelectedItem->id;
            result = 7;
            if (id != 6)
                result = 6;
            if (used)
            {
                sub_0804096C();
                sub_08040EC0();
            }
            goto done;
        }
        PlaySE(0x61);
        return 1;
    }

quick_slot:
    for (i = 0; i <= 2; i++)
    {
        if (gUnknown_03000494[i] != 0
         && gMenuInventory[gUnknown_03000494[i] - 1].id == gMenuSelectedItem->id)
            goto fail;
    }
    if (gUnknown_03000494[SLOT->subSlot] != 0)
    {
        list = &gMenuInventory[gUnknown_03000494[SLOT->subSlot] - 1];
        if (list->category == 0)
            goto done;
        if (!CanSwapItems(slot, list))
            goto fail;
        gUnknown_03000494[SLOT->subSlot] = SEL->subSlot + 1;
    }
    else
    {
        if (!sub_08014EB4(gMenuSelectedItem))
            goto fail;
        gUnknown_03000494[SLOT->subSlot] = SEL->subSlot + 1;
    }

done:
    ApplyMenuChanges();
    sub_08016DC0();
    record = GetCategory5Record(gMenuSelectedItem);
    if (record != NULL && record[0x156] != 0)
        ((u8 *)gMenuSelectedItem)[2] = 0;
    if (result == 1 && SLOT->type == 1 && gPlayerStats.currentWeapon != SLOT->subSlot)
        result = 13;
    sub_08040C54();
    gUnknown_03000488 = CountListGold();
    if (result == 1 || result == 11 || result == 13)
    {
        if (!equip)
        {
            PlaySE(0x5E);
        }
        else
        {
            PlaySE(0x80);
            if (result != 13)
                result = 11;
        }
    }
    else if (result == 5)
    {
        PlaySE(0x60);
    }
    else if (result == 10)
    {
        PlaySE(0x80);
    }
    return result;

fail:
    PlaySE(0x61);
    return 0;
}
