#include "global.h"
#include "menu.h"

extern u8 gUnknown_030005B8;
extern u8 gUnknown_030005B9;
extern u8 gUnknown_030005BB;
extern u8 gUnknown_030005BF;
extern u8 gUnknown_030005C0;
extern u8 gUnknown_030005CC[2];
extern struct MenuSlot gUnknown_030005D0;
extern struct MenuSlot gUnknown_030005D4;

void sub_08040DA4(u32 arg);

struct MenuSlot *sub_08046004(void)
{
    if (gUnknown_030005B9 == 8)
        return &gUnknown_030005D4;
    if (gUnknown_030005D4.pos == gUnknown_030005D0.pos)
        return &gUnknown_030005D4;
    if (gUnknown_030005CC[1] < (gUnknown_030005CC[0] >> 1))
        return &gUnknown_030005D4;
    return &gUnknown_030005D0;
}

struct MenuSlot *sub_08046044(void)
{
    return &gUnknown_030005D4;
}

void sub_0804604C(void)
{
    struct MenuSlot *slot = sub_08040CA4();

    gUnknown_030005D0 = *slot;
    if (gUnknown_030005B9 == 5 && MENU_SLOT_TYPE(&gUnknown_030005D0) == 6)
        MENU_SLOT_SUBSLOT(&gUnknown_030005D0) = MENU_SLOT_SUBSLOT(&gUnknown_030005D0) % 15 + gUnknown_030005BB * 15;
    sub_08040C54();
    sub_08040DA4(0);
    gUnknown_030005B8 = 0;
}

bool32 sub_080460A0(void)
{
    if (gUnknown_030005D4.pos != gUnknown_030005D0.pos)
        return FALSE;
    return TRUE;
}

u32 sub_080460BC(void)
{
    if (gUnknown_030005B9 == 7)
    {
        u8 state = gUnknown_030005B8;

        if (state == 0 || state == 15 || state == 3 || state == 16)
            return 2;
    }
    if ((u8)(gUnknown_030005B8 - 11) <= 4)
        return 1;
    return 0;
}

u8 sub_080460F8(void)
{
    return gUnknown_030005BF;
}

u32 sub_08046104(u32 value)
{
    gUnknown_030005BF = 1;
    return value;
}

u32 sub_08046110(u32 value)
{
    gUnknown_030005BF = 0;
    return value;
}

u8 sub_0804611C(void)
{
    return gUnknown_030005C0;
}
