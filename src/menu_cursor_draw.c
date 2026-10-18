#include "global.h"
#include "item.h"
#include "menu.h"
#include "sprite_obj.h"

struct Unknown_030005E0
{
    u8 unk0;
    u8 digits[6];
    u8 unk7[0x5];
    u32 unkC;
};

// What sub_0804152C returns (mode 9).
struct MenuToggles
{
    u32 bit0:1;
    u32 bit1:1;
};

extern u8 gUnknown_030004C8;             // menu mode
extern struct SpriteObj gUnknown_03000510;
extern u16 gUnknown_030004D0[10];        // animation frames
extern u16 gUnknown_030004E8[10];        // animation timers

void sub_08045F28(u8 *dest);
u8 sub_08045F90(struct Unknown_030005E0 *dest);
u8 sub_08045114(u32 *price);
u8 sub_080451B8(u32 *price);
void sub_08042790(u8 x, u8 y, u32 value, u8 d, u8 e);
u8 sub_080460BC(void);
u8 sub_08045F78(void);
u32 sub_08040900(struct Item *item);
u32 sub_08040D08(void);
u32 sub_08040D44(void);
u8 IsItemUnappraised(struct Item *item);
bool32 CanEquipItem(struct Item *item);
u8 GetCurrentWeaponIndex(void);
u8 EquipItem(struct Item *item, u8 slot);
void ApplyMenuChanges(void);
void sub_08042614(void);
void sub_08003FA4(s32 x, s32 y, u32 c, u32 d, u32 e, void *f, u32 g, u32 h, u32 i);
u16 sub_08041074(void);
u8 sub_0803FAFC(u8 stat);
u8 sub_0803F9D4(struct MenuSlotBytes *slot);
u8 sub_08041294(void);
struct MenuToggles *sub_0804152C(void);
void sub_08023048(s32 x, s32 y, struct Item *item, u32 d);
u32 sub_08026C40(struct SpriteObj *obj, u16 a, u16 *frame, u16 *timer, u32 loop);
u8 sub_080460F8(void);
struct MenuSlot *sub_08046004(void);
struct Item *sub_0804087C(struct MenuSlot *slot);
struct Item *sub_08040C98(void);
bool32 sub_08045F50(void);
void sub_08042FF8(void);
void sub_08016DC0(void);

// Menu cursor and the values shown next to it (count, price, ...); equips
// the item under the cursor when sub_080460F8 says so. Modes 7-9 draw
// their own extras (appraisal price, stat arrows, the mode 9 toggles).
void sub_080420EC(void)
{
    struct Unknown_030005E0 count;
    struct { u8 x; u8 y; } pos;
    u32 price;
    struct Item *item;
    struct MenuSlotBytes *slot;
    struct MenuToggles *toggles;
    u32 bit;
    u8 r;
    u8 c;
    u8 w;
    u8 a;
    u32 b;
    u8 n;
    s32 off;
    s32 y;

    sub_08045F28(&pos.x);
    if ((u8)(gUnknown_030004C8 - 8) > 1)
    {
        sub_08026C40(&gUnknown_03000510, 0xF, &gUnknown_030004D0[5], &gUnknown_030004E8[5], 1);
        sub_08026B90(&gUnknown_03000510, 0xB2, 0x10, 0xF, gUnknown_030004D0[5]);
    }
    if (sub_080460BC() == 1)
        return;
    if ((u8)(gUnknown_030004C8 - 7) > 2)
    {
        if ((a = sub_08045F90(&count)) != 0)
        {
            sub_08042790(pos.x, pos.y, count.unkC, 0, 6 - count.unk0);
        }
        else if ((b = sub_08045114(&price)) != 0)
        {
            if (b == 1)
                sub_08042790(pos.x, pos.y, price, 0, a);
            else
                sub_08042790(pos.x, pos.y, price, 1, a);
        }
        else if ((c = sub_080451B8(&price)) != 0)
        {
            if (c == 1)
                sub_08042790(pos.x, pos.y, price, 2, 7);
            else
                sub_08042790(pos.x, pos.y, price, 0, b);
        }
        else if ((b = sub_08045F50()) == 0)
        {
            item = sub_0804087C(sub_08046004());
            if (item->category == 7)
                sub_08042790(pos.x, pos.y, item->count, 0, b);
        }
        if (sub_08045F50())
            item = sub_08040C98();
        else
            item = sub_0804087C(sub_08046004());
        if (((u32)(item->category - 2) <= 3 && CanEquipItem(item)) || item->category == 1)
        {
            w = GetCurrentWeaponIndex();
            if (sub_080460F8() && EquipItem(item, w))
            {
                sub_08042FF8();
                ApplyMenuChanges();
                sub_08016DC0();
            }
        }
        if (sub_08045F50())
        {
            sub_08026B90(&gUnknown_03000510, pos.x, pos.y - 4, 0xB, 1);
            item = sub_08040C98();
            if (CanEquipItem(item))
                sub_08023048(pos.x, pos.y - 4, item, 0);
            else
                sub_08023048(pos.x, pos.y - 4, item, 2);
        }
        else
        {
            sub_08026B90(&gUnknown_03000510, pos.x, pos.y, 0xB, 0);
        }
        return;
    }
    if (gUnknown_030004C8 == 7
     && (sub_08045F78() == 0 || sub_08045F78() == 3 || sub_08045F78() == 0x10))
    {
        item = sub_0804087C(sub_08046004());
        if ((r = IsItemUnappraised(item)) != 0)
        {
            price = sub_08040900(item);
            if (sub_08040D08() + sub_08040D44() >= price)
                sub_08042790(pos.x, pos.y, price, 0, 0);
            else
                sub_08042790(pos.x, pos.y, price, 1, 0);
            sub_08026BC4(&gUnknown_03000510, pos.x, pos.y, 9, 0);
        }
        else
        {
            sub_08026B90(&gUnknown_03000510, pos.x, pos.y, 9, r);
        }
        return;
    }
    if (gUnknown_030004C8 == 8)
    {
        sub_08042614();
        slot = (struct MenuSlotBytes *)sub_08046004();
        switch (sub_08045F78())
        {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
            break;
        case 6:
        case 7:
            sub_08003FA4(0x3A, slot->subSlot * 16 + 0x37, 0x16, 0, 0, gUnknown_03000510.unk1C,
                         gUnknown_03000510.unk8, gUnknown_03000510.unk0, 1);
            if (sub_08041074() && !sub_0803FAFC(slot->subSlot))
                sub_08026B90(&gUnknown_03000510, 0x70, slot->subSlot * 16 + 0x38, 3, 1);
            if (sub_0803F9D4(slot))
                sub_08026B90(&gUnknown_03000510, 0x58, slot->subSlot * 16 + 0x38, 3, 2);
            break;
        case 8:
        case 9:
            sub_08003FA4(0x82, slot->subSlot * 8 + 0x37, 0x16, 1, 0, gUnknown_03000510.unk1C,
                         gUnknown_03000510.unk8, gUnknown_03000510.unk0, 1);
            if ((n = sub_08041294()) != 0)
            {
                sub_08026C40(&gUnknown_03000510, 0xE, &gUnknown_030004D0[4], &gUnknown_030004E8[4], 1);
                y = slot->subSlot * 8;
                off = ((0x4B - n) >> 2) - 0x40;
                sub_08026B90(&gUnknown_03000510, 0xD4, y - off, 0xE, gUnknown_030004D0[4]);
            }
            break;
        }
        return;
    }
    if (gUnknown_030004C8 == 9)
    {
        toggles = sub_0804152C();
        if ((bit = toggles->bit0) != 0)
        {
            sub_08026C40(&gUnknown_03000510, 0x1A, &gUnknown_030004D0[6], &gUnknown_030004E8[6], 1);
            sub_08026B90(&gUnknown_03000510, 0x88, 0x28, 0x1A, gUnknown_030004D0[6]);
            sub_08026B90(&gUnknown_03000510, 0xB8, 0x28, 0x1C, 1);
        }
        else
        {
            sub_08026C40(&gUnknown_03000510, 0x1B, &gUnknown_030004D0[6], &gUnknown_030004E8[6], 1);
            sub_08026B90(&gUnknown_03000510, 0xB8, 0x28, 0x1B, gUnknown_030004D0[6]);
            sub_08026B90(&gUnknown_03000510, 0x88, 0x28, 0x1C, bit);
        }
        if (!toggles->bit1)
        {
            sub_08026C40(&gUnknown_03000510, 0x17, &gUnknown_030004D0[7], &gUnknown_030004E8[7], 1);
            sub_08026B90(&gUnknown_03000510, 0x80, 0x40, 0x17, gUnknown_030004D0[7]);
            sub_08026B90(&gUnknown_03000510, 0xB8, 0x40, 0x19, 1);
        }
        else
        {
            sub_08026C40(&gUnknown_03000510, 0x18, &gUnknown_030004D0[7], &gUnknown_030004E8[7], 1);
            sub_08026B90(&gUnknown_03000510, 0xB8, 0x40, 0x18, gUnknown_030004D0[7]);
            sub_08026B90(&gUnknown_03000510, 0x80, 0x40, 0x19, 0);
        }
        sub_08026B90(&gUnknown_03000510, pos.x, pos.y, 0xB, 0);
    }
}
