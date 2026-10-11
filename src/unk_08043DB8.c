#include "global.h"
#include "item.h"
#include "menu.h"

extern u8 gUnknown_030004CA;

u32 *sub_08040C24(void);
struct Item *sub_08040C98(void);
bool32 sub_08045F50(void);
void sub_08023048(s32 x, s32 y, u32 *item, u32 d);
u8 sub_0803F9D4(struct MenuSlotBytes *slot);

// Draws the three weapon slots' icons, skipping the selected one while
// gUnknown_030004CA is set.
void sub_08043D48(void)
{
    u32 *weapon = sub_08040C24();
    u32 *selected = (u32 *)sub_08040C98();
    u8 i;

    if (!sub_08045F50())
        selected = NULL;
    if (weapon != NULL)
    {
        for (i = 0; i < 3; i++)
        {
            if (selected != weapon || gUnknown_030004CA == 0)
                sub_08023048(0x2C - i * 16, i * 8 + 0x20, weapon++, 8);
            else
                weapon++;
        }
    }
}

// 0 if a == b, 1 if a > b, 2 if a < b.
// Signed version of sub_08043DB8. Only matches with int parameters narrowed
// into locals (s16 parameters put the result in the wrong register).
u32 sub_08043DA0(s32 a, s32 b)
{
    s32 x = (s16)a;
    s32 y = (s16)b;
    u32 result = 0;

    if (x != y)
    {
        result = 2;
        if (x > y)
            result = 1;
    }
    return result;
}

// 0 if a == b, 1 if a > b, 2 if a < b.
u32 sub_08043DB8(u16 a, u16 b)
{
    u32 result = 0;

    if (a != b)
    {
        result = 2;
        if (a > b)
            result = 1;
    }
    return result;
}

// 2 if sub_0803F9D4 accepts the slot (type, subSlot), else 0.
u32 sub_08043DD0(u8 type, u8 subSlot)
{
    struct MenuSlotBytes slot;

    slot.type = type;
    slot.subSlot = subSlot;
    if (sub_0803F9D4(&slot))
        return 2;
    return 0;
}

struct Unknown_030005E0_b
{
    u8 unk0;
    u8 unk1[0x7];
    u32 unk8;
    u32 unkC;
};

extern u8 gUnknown_030005B8;
extern u8 gUnknown_030005B9;
extern u8 gUnknown_030005BA;
extern u8 gUnknown_030005BB;
extern u8 gUnknown_030005BC;
extern u8 gUnknown_030005BD;
extern u8 gUnknown_030005BE;
extern u8 gUnknown_030005BF;
extern u8 gUnknown_030005C0;
extern u8 gUnknown_030005C1;
extern u16 gUnknown_030005C2;
extern u16 gUnknown_030005C4;
extern u8 gUnknown_030005C8[2];
extern u8 gUnknown_030005CC[2];
extern struct MenuSlotBytes gUnknown_030005D0;
extern struct MenuSlotBytes gUnknown_030005D4;
extern struct MenuSlotBytes gUnknown_030005D8;
extern struct MenuSlotBytes gUnknown_030005DC;
extern struct Unknown_030005E0_b gUnknown_030005E0;

void sub_08045304(struct MenuSlotBytes *slot);

// Resets the menu cursor state.
void sub_08043E0C(void)
{
    gUnknown_030005B8 = 0;
    gUnknown_030005B9 = 0;
    gUnknown_030005C1 = 0;
    gUnknown_030005BA = 0;
    gUnknown_030005BB = 0;
    gUnknown_030005BC = 0;
    gUnknown_030005C2 = 0;
    gUnknown_030005C4 = 0;
    gUnknown_030005BD = 1;
    gUnknown_030005C8[0] = 0;
    gUnknown_030005C8[1] = 0;
    gUnknown_030005BE = 0;
    gUnknown_030005C0 = 0;
    gUnknown_030005BF = 1;
    gUnknown_030005CC[1] = 0;
    gUnknown_030005CC[0] = 4;
    gUnknown_030005D0.type = 0;
    gUnknown_030005D0.subSlot = 0;
    gUnknown_030005D0.unk0 = 0;
    gUnknown_030005D0.unk1 = 0;
    gUnknown_030005D4.type = 0;
    gUnknown_030005D4.subSlot = 0;
    gUnknown_030005D4.unk0 = 0;
    gUnknown_030005D4.unk1 = 0;
    gUnknown_030005D8.type = 3;
    gUnknown_030005D8.subSlot = 12;
    sub_08045304(&gUnknown_030005D8);
    gUnknown_030005DC.type = 6;
    gUnknown_030005DC.subSlot = 4;
    sub_08045304(&gUnknown_030005DC);
    gUnknown_030005E0.unk0 = 0;
    gUnknown_030005E0.unk8 = 0;
    gUnknown_030005E0.unkC = 0;
}
