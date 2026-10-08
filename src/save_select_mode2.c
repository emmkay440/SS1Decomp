#include "global.h"
#include "heap.h"

extern u8 gUnknown_030007F0;
extern u8 gUnknown_030007F1;
extern u32 *gUnknown_030007F4;
extern void *gUnknown_030007F8;

void bzero(void *dest, u32 size);

void sub_08049DBC(void)
{
    void **buf;

    gUnknown_030007F0 = 0;
    gUnknown_030007F1 = 0;
    gUnknown_030007F4 = Alloc(0x144);
    // first word: the register the table is written to (an HBlank scroll table?)
    gUnknown_030007F4[0] = REG_ADDR_BG3HOFS;
    buf = &gUnknown_030007F8;
    *buf = Alloc(0x3C0);
    bzero(*buf, 0x3C0);
}

// Cleanup for save-select mode 2 (sub_08048614)
void sub_08049E08(void)
{
    if (gUnknown_030007F4 != NULL)
        Free(gUnknown_030007F4);
    if (gUnknown_030007F8 != NULL)
        Free(gUnknown_030007F8);
}
