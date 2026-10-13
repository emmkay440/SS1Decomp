#include "global.h"
#include "sound.h"

// One of this mode's entries.
struct Entry_sub_0804B2A8
{
    u8 kind;           // 1 or 2 when added; 0 and 3 don't count as active
    u8 unk1;
    u16 timer;
};                     // size 4

extern u8 gUnknown_030008C8;       // number of entries
extern u8 gUnknown_030008CB;
extern struct Entry_sub_0804B2A8 *gUnknown_030008D0;

s16 Random(void);

// When no entry is active, adds one at random (Random() above `chance`):
// kind 1 or 2, with a timer of 30 or 180 plus up to 29.
void sub_0804B2A8(u16 chance)
{
    u8 active = 0;
    u8 i;

    for (i = 0; i < gUnknown_030008C8; i++)
    {
        if (gUnknown_030008D0[i].kind != 0 && gUnknown_030008D0[i].kind != 3)
            active++;
    }
    if (Random() > (s16)chance && active == 0)
    {
        gUnknown_030008CB = 30;
        PlaySE(0x77);
        if (Random() > 0)
            gUnknown_030008D0[gUnknown_030008C8].kind = 1;
        else
            gUnknown_030008D0[gUnknown_030008C8].kind = 2;
        if (Random() > 0)
            gUnknown_030008D0[gUnknown_030008C8].timer = 30;
        else
            gUnknown_030008D0[gUnknown_030008C8].timer = 180;
        gUnknown_030008D0[gUnknown_030008C8].timer += (u16)Random() % 30;
        gUnknown_030008D0[gUnknown_030008C8].unk1 = 0;
        gUnknown_030008C8++;
    }
}
