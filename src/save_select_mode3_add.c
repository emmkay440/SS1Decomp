#include "global.h"
#include "sound.h"

struct Entry_sub_0804A224
{
    u8 kind;
    u8 unk1;
    u8 unk2[4];
    u16 unk6;
    u16 unk8;
    u8 unkA[2];
};                     // size 12

extern u8 gUnknown_03000838;       // number of entries
extern u8 gUnknown_0300083C;
extern u16 gUnknown_0300083E;      // calls since the last entry was added
extern struct Entry_sub_0804A224 *gUnknown_0300084C;

s16 Random(void);

// Adds a kind 2 entry (at most 60) with the two values, at random
// (Random() above `chance`) and not within 30 calls of the last one.
void sub_0804A224(u16 chance, u16 unk6, u16 unk8)
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
        gUnknown_0300084C[gUnknown_03000838].unk6 = unk6;
        gUnknown_0300084C[gUnknown_03000838].unk8 = unk8;
        gUnknown_0300084C[gUnknown_03000838].unk1 = 0;
        gUnknown_03000838++;
        gUnknown_0300083E = 0;
        gUnknown_0300083C = 0x3C;
        PlaySE(0x22);
    }
}
