#include "global.h"
#include "heap.h"

extern u8 gUnknown_030007B0;
extern u8 gUnknown_030007B1;
extern u8 gUnknown_030007B2;
extern void *gUnknown_030007B4;

void bzero(void *dest, u32 size);

void sub_08049678(void)
{
    void **buf;

    gUnknown_030007B0 = 0;
    gUnknown_030007B1 = 0;
    gUnknown_030007B2 = 0;
    buf = &gUnknown_030007B4;
    *buf = Alloc(0x4B0);
    bzero(*buf, 0x4B0);
}

// Cleanup for save-select mode 1 (sub_08048614)
void sub_080496B4(void)
{
    if (gUnknown_030007B4 != NULL)
        Free(gUnknown_030007B4);
}
