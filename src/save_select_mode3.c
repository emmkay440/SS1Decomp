#include "global.h"
#include "heap.h"

extern u8 gUnknown_03000838;
extern u8 gUnknown_03000839;
extern u8 gUnknown_0300083A;
extern u8 gUnknown_0300083B;
extern u8 gUnknown_0300083C;
extern u8 gUnknown_0300083D;
extern u16 gUnknown_0300083E;
extern void *gUnknown_0300084C;

void bzero(void *dest, u32 size);

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
