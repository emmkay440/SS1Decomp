#include "global.h"
#include "heap.h"

void bzero(void *dest, u32 size);

extern u8 gUnknown_03000838;
extern u8 gUnknown_03000839;
extern u8 gUnknown_0300083A;
extern u8 gUnknown_0300083B;
extern u8 gUnknown_0300083C;
extern u8 gUnknown_0300083D;
extern u16 gUnknown_0300083E;
extern void *gUnknown_0300084C;

void sub_0804A3F4(void)
{
    void **buf;

    gUnknown_03000838 = 0;
    gUnknown_03000839 = 0;
    gUnknown_0300083A = 0;
    gUnknown_0300083B = 0;
    gUnknown_0300083C = 0;
    gUnknown_0300083E = 10;
    gUnknown_0300083D = 0;
    buf = &gUnknown_0300084C;
    *buf = Alloc(0x2D0);
    bzero(*buf, 0x2D0);
}

// Cleanup for save-select mode 3 (sub_08048614)
void sub_0804A450(void)
{
    if (gUnknown_0300084C != NULL)
        Free(gUnknown_0300084C);
}

// Number of entries (12 bytes each, kind in the first byte) whose kind
// isn't 0 or 5.
struct Entry_sub_0804A468
{
    u8 kind;
    u8 unk1[11];
};

u8 sub_0804A468(void)
{
    u8 count = 0;
    u8 i;

    for (i = 0; i < gUnknown_03000838; i++)
        if (((struct Entry_sub_0804A468 *)gUnknown_0300084C)[i].kind != 0 && ((struct Entry_sub_0804A468 *)gUnknown_0300084C)[i].kind != 5)
            count++;
    return count;
}
