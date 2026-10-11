#include "global.h"
#include "sprite_obj.h"

extern u8 gUnknown_030005F0;
extern u8 gUnknown_030005F1;
extern u8 gUnknown_030005F3;
extern u8 gUnknown_030005F6;
extern u8 gUnknown_030005F8;
extern struct SpriteObj gUnknown_030006F8;

void sub_080473AC(void);
void sub_08047570(void);
void sub_08047780(void);

// Per-frame drawing of the save select screen. Outside state 5 it also
// draws an arrow that moves out 4 pixels and back over 20 frames.
// `offset` stays unset on the frame the counter wraps (as in the original).
void sub_080472FC(void)
{
    u8 offset;

    sub_080473AC();
    sub_08047570();
    sub_08047780();
    if (gUnknown_030005F0 != 5)
    {
        gUnknown_030005F3++;
        if (gUnknown_030005F3 < 4)
            offset = gUnknown_030005F3;
        else if (gUnknown_030005F3 < 20)
            offset = 4 - ((gUnknown_030005F3 - 4) >> 2);
        else
            gUnknown_030005F3 = 0;
        if (gUnknown_030005F1 == 0)
            sub_08026B90(&gUnknown_030006F8, offset + 0xE7, 0x49, 3, 1);
        else
            sub_08026B90(&gUnknown_030006F8, 4 - offset, 0x49, 3, 2);
    }
    if (gUnknown_030005F6 < 16)
        gUnknown_030005F6++;
    if (gUnknown_030005F8 == 1)
        gUnknown_030005F8 = 0;
}
