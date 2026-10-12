#include "global.h"
#include "sound.h"
#include "sprite_obj.h"

// One of the 60 entries of this mode.
struct Entry_sub_0804A224
{
    u8 kind;           // 2 = drawn and aging, 5 = finished
    u8 age;
    u16 frame;
    u16 timer;
    s16 x;
    s16 y;
    u8 unkA[2];
};                     // size 12

extern u8 gUnknown_03000838;       // number of entries
extern u8 gUnknown_0300083C;
extern u16 gUnknown_0300083E;      // calls since the last entry was added
extern struct Entry_sub_0804A224 *gUnknown_0300084C;
extern s8 gUnknown_0300083A;       // screen shake offsets (save_select_mode3_scroll.c)
extern s8 gUnknown_0300083B;
extern struct SpriteObj gUnknown_03000850;

u32 sub_08026C40(struct SpriteObj *obj, u16 a, u16 *frame, u16 *timer, u32 loop);
void sub_08003FA4(s32 x, s32 y, u32 c, u32 d, u32 e, void *f, u32 g, u32 h, u32 i);

s16 Random(void);

// Adds a kind 2 entry (at most 60) with the two values, at random
// (Random() above `chance`) and not within 30 calls of the last one.
void sub_0804A224(u16 chance, u16 x, u16 y)
{
    struct Entry_sub_0804A224 entry;   // unused, but the original reserves its 12 bytes
    u8 i;
    s16 r;

    if (gUnknown_03000838 > 0x3B)
        return;
    i = 0;
    if (gUnknown_03000838 != 0)
    {
        // The original reads each entry's kind and does nothing with it.
        do
        {
            *(vu8 *)&gUnknown_0300084C[i].kind;
            i++;
        } while (i < gUnknown_03000838);
    }
    r = Random();
    gUnknown_0300083E++;
    if (r > (s16)chance && gUnknown_0300083E > 0x1E)
    {
        gUnknown_0300084C[gUnknown_03000838].kind = 2;
        gUnknown_0300084C[gUnknown_03000838].x = x;
        gUnknown_0300084C[gUnknown_03000838].y = y;
        gUnknown_0300084C[gUnknown_03000838].age = 0;
        gUnknown_03000838++;
        gUnknown_0300083E = 0;
        gUnknown_0300083C = 0x3C;
        PlaySE(0x22);
    }
}

// Animates and draws every kind 2 entry (two sprites each, drifting apart
// with age); after 60 frames the entry becomes kind 5.
void sub_0804A2EC(void)
{
    struct Entry_sub_0804A224 *entry = gUnknown_0300084C;
    u8 i;

    for (i = 0; i < 60; i++, entry++)
    {
        if (entry->kind == 2)
        {
            u32 offsetX = (u32)(entry->age * 3) >> 4;
            u32 offsetY = entry->age >> 2;

            sub_08026C40(&gUnknown_03000850, 1, &entry->frame, &entry->timer, 1);
            sub_08003FA4(entry->x - (s16)(offsetX - 0x40) + gUnknown_0300083A, entry->y + (s16)(offsetY - 0x1C) + gUnknown_0300083B,
                         1, entry->frame, 0,
                         gUnknown_03000850.unk1C, gUnknown_03000850.unk8, gUnknown_03000850.unk0, 1);
            sub_08003FA4(entry->x - (s16)(offsetX + 8) + gUnknown_0300083A, entry->y + (s16)(offsetY - 0x40) + gUnknown_0300083B,
                         1, entry->frame, 0,
                         gUnknown_03000850.unk1C, gUnknown_03000850.unk8, gUnknown_03000850.unk0, 1);
            entry->age++;
            if (entry->age > 60)
            {
                entry->kind = 5;
                entry->age = 0;
            }
        }
    }
}
