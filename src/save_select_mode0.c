#include "global.h"
#include "heap.h"

extern u8 gUnknown_03000770;
extern void *gUnknown_03000774;

void bzero(void *dest, u32 size);

void sub_08048F38(void)
{
    void **buf;

    gUnknown_03000770 = 0;
    buf = &gUnknown_03000774;
    *buf = Alloc(0x640);
    bzero(*buf, 0x640);
}

// Cleanup for save-select mode 0 (sub_08048614)
void sub_08048F64(void)
{
    if (gUnknown_03000774 != NULL)
        Free(gUnknown_03000774);
}
