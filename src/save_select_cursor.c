#include "global.h"
#include "save.h"
#include "save_select.h"
#include "sprite_obj.h"

extern u8 gUnknown_030005F0;             // save select mode
extern u8 gUnknown_030005F1;             // page: slots 0-3 or 4-7
extern u8 gUnknown_030005F5;             // selected slot
extern struct SaveSlotInfo *gUnknown_03000764;
extern u16 gUnknown_03000614[3];         // animation frames
extern u16 gUnknown_0300061C[3];         // and timers
extern struct SpriteObj gUnknown_030006F8;
extern struct SpriteObj gUnknown_03000730;

bool32 sub_0800F298(void);
u8 sub_0804851C(void);   // bool32 in src; read as a byte here
void sub_0804837C(void);
u32 sub_08026C40(struct SpriteObj *obj, u16 anim, u16 *frame, u16 *timer, u32 loop);
void sub_080039C8(u32 x, u32 y, u16 anim, u16 frame, u32 e, void *f, u32 g, u32 h,
                  u32 i, u32 j, u32 k, u32 l);

// Draws the save select cursor and the arrows of the current mode next to
// the selected slot: in modes 3 and 4 the arrows for changing the class or
// the color (none at the ends), in mode 5 the name entry cursor and the END
// button (bouncing when it is selected).
void sub_08047570(void)
{
    struct SaveSlotInfo *info;
    s32 x;
    s32 y;

    if (gUnknown_030005F1 == 0)
        x = gUnknown_030005F5 > 1 ? 0x78 : 0;
    else
        x = gUnknown_030005F5 > 5 ? 0x78 : 0;
    y = (gUnknown_030005F5 % 2) << 6;
    sub_08026C40(&gUnknown_030006F8, 0x15, &gUnknown_03000614[2], &gUnknown_0300061C[2], 1);
    switch (gUnknown_030005F0)
    {
    case 0:
        if (sub_0800F298())
            sub_080039C8(x + 0x3C, y + 0x1A, 0x15, gUnknown_03000614[2], 1, gUnknown_030006F8.palettes,
                         gUnknown_030006F8.unk8, gUnknown_030006F8.unk0, 0xFF, 0xFF, 0, 1);
        break;
    case 3:
        info = &gUnknown_03000764[gUnknown_030005F5];
        if (info->class != 0)
            sub_08026B90(&gUnknown_030006F8, x + 4, y + 0x1A, 3, 2);
        if (info->class != 3)
            sub_08026B90(&gUnknown_030006F8, x + 0x1E, y + 0x1A, 3, 1);
        break;
    case 4:
        info = &gUnknown_03000764[gUnknown_030005F5];
        if (info->color != 0)
            sub_08026B90(&gUnknown_030006F8, x + 4, y + 0x1A, 3, 2);
        if (info->color != 3)
            sub_08026B90(&gUnknown_030006F8, x + 0x1E, y + 0x1A, 3, 1);
        break;
    case 5:
        sub_08026B90(&gUnknown_030006F8, gUnknown_030005FC.x, gUnknown_030005FC.y, 11, 0);
        if (sub_0804851C())
            sub_08026C40(&gUnknown_03000730, 4, &gUnknown_03000614[0], &gUnknown_0300061C[0], 1);
        if (gUnknown_03000600.raw == 0x60C && sub_0804851C())
            sub_08026BC4(&gUnknown_03000730, 0xE4, 0x94, 4, gUnknown_03000614[0]);
        else
            sub_08026B90(&gUnknown_03000730, 0xE4, 0x94, 4, gUnknown_03000614[0]);
        break;
    case 6:
    case 7:
        sub_0804837C();
        break;
    case 1:
    case 2:
        sub_0804837C();
        break;
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
        break;
    }
}
