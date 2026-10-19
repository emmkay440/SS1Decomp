#include "global.h"
#include "display.h"
#include "save.h"
#include "sprite_obj.h"

extern u8 gUnknown_030005F0;             // save select mode
extern u8 gUnknown_030005F1;             // page: slots 0-3 or 4-7
extern u8 gUnknown_030005F5;             // selected slot
extern struct SaveSlotInfo *gUnknown_03000764;
extern struct SpriteObj gUnknown_03000628[4];   // one per class

u32 sub_08026C40(struct SpriteObj *obj, u16 anim, u16 *frame, u16 *timer, u32 loop);
void sub_08003518(u32 x, u32 y, u16 anim, u16 frame, u32 e, void *attr, u32 g, u32 h);

// Draws the characters of the four save slots on the page (a 2 x 2 grid),
// each with its color's palette. Only the selected one is animated. In
// some modes empty slots are skipped, in others only the selected one is
// drawn even when empty; mode 5 draws none.
void sub_080473AC(void)
{
    struct SaveSlotInfo *info;
    s32 x = 0;
    s16 y = 0;
    s16 offset;
    u8 attr[4];
    u8 i;
    s32 t;

    info = gUnknown_03000764;
    if (gUnknown_030005F1)
        info += 4;
    for (i = 0; i < 4; i++, info++)
    {
        if (i > 1)
            x = 0x78;
        if (i == 0 || i == 2)
            y = 0;
        else
            y += 0x40;
        switch (gUnknown_030005F0)
        {
        case 0:
        case 1:
        case 2:
        case 6:
        case 8:
        case 11:
        case 12:
            if (info->valid == 0)
                continue;
            break;
        case 3:
        case 4:
        case 7:
        case 9:
        case 10:
            if (info->valid == 0 && gUnknown_030005F1 * 4 + i != gUnknown_030005F5)
                continue;
            break;
        case 5:
            continue;
        }
        if (gUnknown_030005F5 == gUnknown_030005F1 * 4 + i)
        {
            sub_08026C40(&gUnknown_03000628[info->class], 8, &info->frame, &info->timer, 1);
        }
        else
        {
            info->frame = 0;
            info->timer = 0;
        }
        LoadPalette(i + 16, gUnknown_03000628[info->class].palettes + info->color * 32, 1);
        attr[0] = i;
        switch (info->class)
        {
        case 0:
            offset = 0;
            break;
        case 1:
            offset = 1;
            break;
        case 2:
            offset = 1;
            break;
        case 3:
            offset = 3;
            break;
        }
        // the assignment keeps 0x22 with the offset (y + offset + 0x22
        // gets reassociated)
        sub_08003518(x + 0x14, y + (t = offset + 0x22), 8, info->frame, 0, attr,
                     gUnknown_03000628[info->class].unk8, gUnknown_03000628[info->class].unk0);
    }
}
