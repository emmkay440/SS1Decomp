#include "global.h"
#include "copy_queue.h"
#include "display.h"
#include "item.h"
#include "menu.h"
#include "sprite_obj.h"

extern u8 gUnknown_030004C8;       // menu page being drawn
extern u8 gUnknown_030004C9;
extern u8 gUnknown_030004CA;       // blink flag for the selected item
extern u8 gUnknown_030004CB;
extern void *gUnknown_03000500;
extern void *gUnknown_03000504;
extern void *gUnknown_03000508;
extern void *gUnknown_0300050C;
extern struct SpriteObj gUnknown_03000580;

struct Item *sub_08040BF8(void);
struct Item *sub_08040C04(u16 slot);
u16 *sub_08040C30(void);
struct Item *sub_08040C3C(void);
struct Item *sub_08040C48(void);
struct Item *sub_08040C98(void);
u8 sub_08040CAC(struct Item *item);
u8 sub_08040D98(void);
bool32 CanEquipItem(struct Item *item);
void sub_08043D48(void);
void sub_08045F28(u8 *dest);
bool32 sub_08045F50(void);
u8 sub_08045F84(void);
struct MenuSlot *sub_08046044(void);
u32 sub_080460BC(void);
void sub_08023048(s32 x, s32 y, struct Item *item, u32 d);
void sub_08026D98(s32 x, s32 y, u32 value, u32 d, u32 e);
void sub_0802706C(struct SpriteObj *obj, u32 a, u32 b, u16 c, u16 d, u8 e);
void sub_08041EB8(void);
void sub_08041F34(void);
void sub_08041FCC(void);
void sub_08042054(void);

// Scrolls BG3 on pages 1, 8 and 9; on page 5 reloads the storage page
// tilemap when the storage page changes.
void sub_08041D30(void)
{
    switch (gUnknown_030004C8)
    {
    case 1:
    case 8:
    case 9:
        gBgRegsBuffer[6] = 0;
        gBgRegsBuffer[7] = gUnknown_030004CB;
        gUnknown_030004CB++;
        break;
    }
    if (gUnknown_030004C8 == 5)
    {
        if (gUnknown_030004C9 != sub_08045F84())
        {
            gUnknown_030004C9 = sub_08045F84();
            switch (gUnknown_030004C9)
            {
            case 0:
                QueueCopy(gUnknown_03000500, (void *)(VRAM + 0xD000), 0x1000);
                break;
            case 1:
                QueueCopy(gUnknown_03000504, (void *)(VRAM + 0xD000), 0x1000);
                break;
            case 2:
                QueueCopy(gUnknown_03000508, (void *)(VRAM + 0xD000), 0x1000);
                break;
            case 3:
                QueueCopy(gUnknown_0300050C, (void *)(VRAM + 0xD000), 0x1000);
                break;
            }
        }
    }
}

// Draws the item icons of the current page and the held item, and toggles
// the blink flag.
void sub_08041DE8(void)
{
    u8 pos[2];
    u8 *p;
    u8 held;

    if (gUnknown_030004C8 != 6 && gUnknown_030004C8 != 8)
    {
        sub_08041EB8();
        if (gUnknown_030004C8 != 7)
        {
            sub_08043D48();
            sub_08041F34();
        }
        held = sub_080460BC();
        if (held != 0)
        {
            p = pos;
            sub_08045F28(p);
            if (held == 1)
                sub_08026B90(&gUnknown_03000580, pos[0] + 0x64, p[1], 0, 0);
            else
                sub_0802706C(&gUnknown_03000580, 0xEB, 0x70, 0, 0, 1);
            gBgRegsBuffer[2] = -sub_08046044()->unk0;
        }
        else
        {
            if (gUnknown_030004C8 != 7 && gUnknown_030004C8 != 1)
                sub_08042054();
        }
        if (gUnknown_030004C8 == 1)
            sub_08041FCC();
    }
    if (sub_08040D98())
        gUnknown_030004CA = 0;
    else
        gUnknown_030004CA ^= 1;
}

// Draws the 5x5 inventory (items that can't be equipped are drawn with 2).
void sub_08041EB8(void)
{
    struct Item *item = sub_08040BF8();
    struct Item *selected = sub_08040C98();
    u8 x, y;

    if (!sub_08045F50())
        selected = NULL;
    if (item != NULL)
    {
        for (y = 0; y < 5; y++)
        {
            for (x = 0; x < 5; x++)
            {
                if (selected != item || gUnknown_030004CA == 0)
                {
                    u32 flags;

                    if (CanEquipItem(item))
                        flags = 0;
                    else
                        flags = 2;
                    sub_08023048(x * 16 + 0x58, y * 16 + 0x1F, item++, flags);
                }
                else
                {
                    item++;
                }
            }
        }
    }
}

// Draws the three equipment slots.
void sub_08041F34(void)
{
    struct Item *item = sub_08040C3C();
    struct Item *selected = sub_08040C98();
    u32 flags;

    if (!sub_08045F50())
        selected = NULL;
    if (item->category != ITEM_CATEGORY_NONE && !CanEquipItem(item))
        flags = 2;
    else
        flags = 0;
    if (selected != item || gUnknown_030004CA == 0)
        sub_08023048(0x3C, 0x3F, item++, flags);
    else
        item++;
    if (item->category != ITEM_CATEGORY_NONE && !CanEquipItem(item))
        flags = 2;
    else
        flags = 0;
    if (selected != item)
        sub_08023048(0x3C, 0x5F, item++, flags);
    else
        item++;
    if (item != NULL && selected != item)
        sub_08023048(0xB, 0x57, item++, 0);
}

// Draws the three quick slots (1-based inventory indices) with their counts.
void sub_08041FCC(void)
{
    u16 *list = sub_08040C30();
    struct Item *item;
    u8 count;
    u8 i;

    sub_08040C98();
    sub_08045F50();
    if (list != NULL)
    {
        for (i = 0; i < 3; i++, list++)
        {
            if (*list != 0 && (item = sub_08040C04(*list - 1)) != NULL)
            {
                count = sub_08040CAC(item);
                if (count != 0)
                    sub_08026D98(i * 16 + 0xC4, i * 8 + 0x27, count, 0, 2);
                sub_08023048(i * 16 + 0xC4, i * 8 + 0x20, item, 0);
            }
        }
    }
}

// Draws the 3x5 list on the right (the current storage page on page 5).
void sub_08042054(void)
{
    struct Item *item = sub_08040C48();
    struct Item *selected = sub_08040C98();
    u8 x, y;

    if (!sub_08045F50())
        selected = NULL;
    if (gUnknown_030004C8 == 5)
        item += sub_08045F84() * 15;
    if (item != NULL)
    {
        for (y = 0; y < 5; y++)
        {
            for (x = 0; x < 3; x++)
            {
                if (selected != item || gUnknown_030004CA == 0)
                {
                    u32 flags;

                    if (CanEquipItem(item))
                        flags = 0;
                    else
                        flags = 2;
                    sub_08023048(x * 16 + 0xC0, y * 16 + 0x1F, item++, flags);
                }
                else
                {
                    item++;
                }
            }
        }
    }
}
