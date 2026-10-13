#include "global.h"

// One of this mode's entries.
struct Entry_sub_0804AA10
{
    u8 kind;           // 1 when added; 0 and 2 don't count as active
    u8 unk1;
    u8 unk2;
    u8 unk3[5];
    s16 x;
    s16 y;
};                     // size 12

extern u8 gUnknown_03000888;       // number of entries (wraps to 0 at 100)
extern struct Entry_sub_0804AA10 *gUnknown_0300088C;

s16 Random(void);
int abs(int x);

// Number of entries whose kind isn't 0 or 2 (it also restarts the entry
// count at 100).
static inline u8 CountActive(void)
{
    u8 active;
    u8 i;

    if (gUnknown_03000888 > 99)
        gUnknown_03000888 = 0;
    active = 0;
    for (i = 0; i < gUnknown_03000888; i++)
    {
        if (gUnknown_0300088C[i].kind != 0 && gUnknown_0300088C[i].kind != 2)
            active++;
    }
    return active;
}

// Adds an entry at a random x at the top (Random() above `chance`, and
// fewer than 20 active).
void sub_0804AA10(u16 chance)
{
    struct Entry_sub_0804AA10 entry;   // unused, but the original reserves its 12 bytes
    u8 active = CountActive();

    if (abs(Random()) > (s16)chance && active < 20)
    {
        gUnknown_0300088C[gUnknown_03000888].kind = 1;
        gUnknown_0300088C[gUnknown_03000888].x = abs(Random()) % 240;
        gUnknown_0300088C[gUnknown_03000888].y = 0;
        // Both outcomes are the same in the original.
        if (Random() > 0)
            gUnknown_0300088C[gUnknown_03000888].unk1 = 2;
        else
            gUnknown_0300088C[gUnknown_03000888].unk1 = 2;
        gUnknown_0300088C[gUnknown_03000888].unk2 = abs(Random()) % 4;
        gUnknown_03000888++;
    }
}
