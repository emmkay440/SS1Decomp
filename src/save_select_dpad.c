#include "global.h"
#include "save.h"
#include "save_select.h"
#include "sound.h"

extern u16 gKeysRepeat;
extern u8 gUnknown_030005F0;             // save select mode
extern u8 gUnknown_030005F1;             // page: slots 0-3 or 4-7
extern u8 gUnknown_030005F5;             // selected slot
extern u8 gUnknown_030005F6;
extern u8 gUnknown_030005F7;
extern u8 gUnknown_030005F8;
extern u16 gUnknown_03000604;
extern struct SaveSlotInfo *gUnknown_03000764;

void sub_08046F6C(u32 a);
void sub_08047F6C(void);
void sub_08047E78(void);

// Save select: the d-pad direction pressed this frame (gUnknown_03000604)
// and what it does in the current mode: mode 0 moves through the slots
// (two columns, left/right also turn the page), 3 and 4 change the new
// character's class and color, 5 moves the name entry cursor, 8 toggles
// the slot's unk4, the others pick yes/no (gUnknown_030005F7). Sound
// 0x62 when something changed.
void sub_080463F0(void)
{
    u8 slot;
    u8 page;
    u8 old;
    u32 oldCell;
    struct SaveSlotInfo *info;

    gUnknown_03000604 = 0;
    if (gKeysRepeat & DPAD_RIGHT)
        gUnknown_03000604 = DPAD_RIGHT;
    if (gKeysRepeat & DPAD_DOWN)
        gUnknown_03000604 = DPAD_DOWN;
    if (gKeysRepeat & DPAD_LEFT)
        gUnknown_03000604 = DPAD_LEFT;
    if (gKeysRepeat & DPAD_UP)
        gUnknown_03000604 = DPAD_UP;
    switch (gUnknown_030005F0)
    {
    case 0:
        slot = gUnknown_030005F5;
        page = gUnknown_030005F1;
        switch (gUnknown_03000604)
        {
        case DPAD_RIGHT:
            if (gUnknown_030005F1 == 0 && slot > 1)
            {
                gUnknown_030005F1 = page + 1;
                gUnknown_030005F5 += 2;
                gUnknown_030005F6 = 0;
                gUnknown_030005F8 = 1;
                sub_08046F6C(0);
            }
            else if (gUnknown_030005F5 - gUnknown_030005F1 * 4 <= 1)
            {
                gUnknown_030005F5 += 2;
            }
            break;
        case DPAD_LEFT:
            if (page != 0 && slot <= 5)
            {
                gUnknown_030005F1 = page - 1;
                gUnknown_030005F5 -= 2;
                gUnknown_030005F6 = 0;
                gUnknown_030005F8 = 1;
                sub_08046F6C(0);
            }
            else if (gUnknown_030005F5 - gUnknown_030005F1 * 4 > 1)
            {
                gUnknown_030005F5 -= 2;
            }
            break;
        case DPAD_DOWN:
            if (!(slot & 1))
                gUnknown_030005F5 = slot + 1;
            break;
        case DPAD_UP:
            if (slot & 1)
                gUnknown_030005F5 = slot - 1;
            break;
        }
        if (gUnknown_030005F5 != slot)
        {
            if (page == gUnknown_030005F1)
                gUnknown_030005F6 = 0;
            PlaySE(0x62);
        }
        break;
    case 8:
        old = gUnknown_03000764[gUnknown_030005F5].unk4;
        switch (gUnknown_03000604)
        {
        case DPAD_RIGHT:
            gUnknown_03000764[gUnknown_030005F5].unk4 = 1;
            gUnknown_030005F8 = 1;
            break;
        case DPAD_LEFT:
            gUnknown_03000764[gUnknown_030005F5].unk4 = 0;
            gUnknown_030005F8 = 1;
            break;
        }
        if (old != gUnknown_03000764[gUnknown_030005F5].unk4)
            PlaySE(0x62);
        break;
    case 3:
        info = &gUnknown_03000764[gUnknown_030005F5];
        old = info->class;
        switch (gUnknown_03000604)
        {
        case DPAD_RIGHT:
            if (old <= 2)
                info->class = old + 1;
            break;
        case DPAD_LEFT:
            if (old != 0)
                info->class = old - 1;
            break;
        }
        gUnknown_030005F8 = 1;
        if (old != info->class)
            PlaySE(0x62);
        break;
    case 4:
        info = &gUnknown_03000764[gUnknown_030005F5];
        old = info->color;
        switch (gUnknown_03000604)
        {
        case DPAD_RIGHT:
            if (old <= 2)
                info->color = old + 1;
            break;
        case DPAD_LEFT:
            if (old != 0)
                info->color = old - 1;
            break;
        }
        if (old != info->color)
            PlaySE(0x62);
        break;
    case 5:
        oldCell = *(u32 *)&gUnknown_03000600;
        sub_08047F6C();
        sub_08047E78();
        if ((oldCell & 0xFFFF) != gUnknown_03000600.raw)
            PlaySE(0x62);
        break;
    case 1:
    case 2:
    case 6:
    case 7:
        old = gUnknown_030005F7;
        switch (gUnknown_03000604)
        {
        case DPAD_RIGHT:
            gUnknown_030005F7 = 0;
            break;
        case DPAD_LEFT:
            gUnknown_030005F7 = 1;
            break;
        }
        if (old != gUnknown_030005F7)
            PlaySE(0x62);
        break;
    }
}
