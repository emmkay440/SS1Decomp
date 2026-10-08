#include "global.h"
#include "heap.h"

extern u8 gUnknown_03000888;
extern u8 gUnknown_03000889;
extern u8 gUnknown_0300088A;
extern u8 gUnknown_0300088B;
extern void *gUnknown_0300088C;

void bzero(void *dest, u32 size);

void sub_0804AB7C(void)
{
    void **buf;

    gUnknown_03000888 = 0;
    gUnknown_03000889 = 0;
    gUnknown_0300088A = 0;
    gUnknown_0300088B = 0;
    buf = &gUnknown_0300088C;
    *buf = Alloc(0x4B0);
    bzero(*buf, 0x4B0);
}

// Cleanup for save-select mode 4 (sub_08048614)
void sub_0804ABC0(void)
{
    if (gUnknown_0300088C != NULL)
        Free(gUnknown_0300088C);
}
