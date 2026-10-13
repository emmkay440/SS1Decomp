#include "global.h"
#include "sound.h"
#include "sprite_obj.h"

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

extern u8 gUnknown_030008C9;       // screen offsets (save_select_mode5_scroll.c)
extern u8 gUnknown_030008CA;
extern struct SpriteObj gUnknown_030008D8;

s16 Random(void);
void sub_080044E4(u16 a, u16 b, u16 c, u16 d, u16 e, u16 f);
void sub_08003FA4(s32 x, s32 y, u32 c, u32 d, u32 e, void *f, u32 g, u32 h, u32 i);

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

// Runs the active entries: two frames of sub_080044E4(0x1F, ...) first
// (returning right after each), then 16 frames drawing sprite 1 or 2 (by
// kind) with a changing sub_080044E4 value, after which the entry becomes
// kind 3.
void sub_0804B3A4(void)
{
    struct Entry_sub_0804B2A8 *entry = gUnknown_030008D0;
    u8 i;

    for (i = 0; i < 10; i++, entry++)
    {
        if (entry->kind == 1 || entry->kind == 2)
        {
            if (entry->unk1 < 2)
            {
                entry->unk1++;
                sub_080044E4(0x1F, 0, 2, 0, 0, 0x10);
                return;
            }
            sub_080044E4(0, 8, 1, 0x12 - entry->unk1, 0x10, 0);
            if (entry->kind == 1)
                sub_08003FA4((s16)entry->timer + (s8)gUnknown_030008C9, (s8)gUnknown_030008CA + 0x50, 1, 0, 0,
                             gUnknown_030008D8.unk1C, gUnknown_030008D8.unk8, gUnknown_030008D8.unk0, 1);
            else
                sub_08003FA4((s16)entry->timer + (s8)gUnknown_030008C9, (s8)gUnknown_030008CA + 0x50, 2, 0, 0,
                             gUnknown_030008D8.unk1C, gUnknown_030008D8.unk8, gUnknown_030008D8.unk0, 1);
            entry->unk1++;
            if (entry->unk1 > 0x11)
            {
                entry->unk1 = 0;
                sub_080044E4(0, 8, 1, 0, 0x10, 0);
                entry->kind = 3;
            }
        }
    }
}
