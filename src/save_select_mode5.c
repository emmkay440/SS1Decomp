#include "global.h"
#include "heap.h"

void bzero(void *dest, u32 size);

extern u8 gUnknown_030008C8;
extern u8 gUnknown_030008C9;
extern u8 gUnknown_030008CA;
extern u8 gUnknown_030008CB;
extern u8 gUnknown_030008CC;
extern void *gUnknown_030008D0;

void sub_0804B4CC(void)
{
    void **buf;

    gUnknown_030008C8 = 0;
    gUnknown_030008C9 = 0;
    gUnknown_030008CA = 0;
    gUnknown_030008CB = 0;
    gUnknown_030008CC = 0;
    buf = &gUnknown_030008D0;
    *buf = Alloc(0x28);
    bzero(*buf, 0x28);
}

// Cleanup for save-select mode 5 (sub_08048614)
void sub_0804B514(void)
{
    if (gUnknown_030008D0 != NULL)
        Free(gUnknown_030008D0);
}
