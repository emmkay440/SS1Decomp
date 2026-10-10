#include "global.h"
#include "heap.h"

void bzero(void *dest, u32 size);

extern u8 gUnknown_030007F0;
extern u8 gUnknown_030007F1;
extern u32 *gUnknown_030007F4;
extern void *gUnknown_030007F8;

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

// Number of entries (16 bytes each, kind in the first byte) whose kind
// isn't 0 or 3.
struct Entry_sub_08049E30
{
    u8 kind;
    u8 unk1[15];
};

u8 sub_08049E30(void)
{
    u8 count = 0;
    u8 i;

    for (i = 0; i < gUnknown_030007F0; i++)
        if (((struct Entry_sub_08049E30 *)gUnknown_030007F8)[i].kind != 0 && ((struct Entry_sub_08049E30 *)gUnknown_030007F8)[i].kind != 3)
            count++;
    return count;
}
