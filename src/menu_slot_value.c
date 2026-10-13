#include "global.h"
#include "menu.h"
#include "sprite_obj.h"

extern u8 gUnknown_030004C8;       // menu page being drawn
extern struct SpriteObj gUnknown_03000510;

struct MenuSlotBytes *sub_08046044(void);
u8 sub_080460A0(void);
void sub_08026D98(s32 x, s32 y, u32 value, u32 d, u32 e);

// Draws a number next to the selected slot with sprite frame 10 behind
// it. The offset depends on where the slot is so that it stays on screen.
void sub_08042790(u8 x, u8 y, u32 value, u8 d, u8 e)
{
    struct MenuSlotBytes *slot;
    s8 dx;
    s8 dy;

    if (!sub_080460A0())
        return;
    dx = 0;
    dy = 25;
    slot = sub_08046044();
    switch (slot->type)
    {
    case 3:
        if (slot->subSlot > 19)
            dy = -13;
        break;
    case 6:
        if ((slot->subSlot + 1) % 3 == 0 || (slot->subSlot == 12 && gUnknown_030004C8 != 5))
            dx = -9;
        // Compared in each branch: with a shared variable the compiler
        // reuses the first read instead of loading subSlot again.
        if (gUnknown_030004C8 != 5)
        {
            if (slot->subSlot > 11)
                dy = -13;
        }
        else
        {
            if ((u8)(slot->subSlot % 15u) > 11)
                dy = -13;
        }
        break;
    case 2:
        if (slot->subSlot == 2)
            dx = 14;
        if (slot->subSlot != 0)
            dy = -13;
        break;
    case 1:
        if (slot->subSlot == 2)
            dx = 14;
        break;
    }
    sub_08026D98(x + (dx + 7), y + dy, value, d, 6);
    sub_08026B90(&gUnknown_03000510, x + dx, y + dy, 10, e);
}
