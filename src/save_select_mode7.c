#include "global.h"
#include "heap.h"

extern u16 gUnknown_03000950;
extern u16 gUnknown_03000952;
extern u16 gUnknown_03000954;
extern u16 gUnknown_03000956;
extern u16 gUnknown_03000958;
extern u16 gUnknown_0300095A;
extern void *gUnknown_0300095C;

void bzero(void *dest, u32 size);

void sub_0804C2E0(void)
{
    void **buf;

    gUnknown_03000956 = 0;
    gUnknown_03000958 = 0;
    gUnknown_0300095A = 0;
    gUnknown_03000950 = 0;
    gUnknown_03000952 = 0;
    gUnknown_03000954 = 0;
    buf = &gUnknown_0300095C;
    *buf = Alloc(0x3C0);
    bzero(*buf, 0x3C0);
}

// Cleanup for save-select mode 7 (sub_08048614)
void sub_0804C334(void)
{
    if (gUnknown_0300095C != NULL)
        Free(gUnknown_0300095C);
}

// Number of entries (60 of 16 bytes each, kind in the first byte) whose kind
// isn't 0 or 2.
struct Entry_sub_0804C34C
{
    u8 kind;
    u8 unk1[15];
};

u8 sub_0804C34C(void)
{
    u8 count = 0;
    u8 i;

    for (i = 0; i < 60; i++)
        if (((struct Entry_sub_0804C34C *)gUnknown_0300095C)[i].kind != 0 && ((struct Entry_sub_0804C34C *)gUnknown_0300095C)[i].kind != 2)
            count++;
    return count;
}
