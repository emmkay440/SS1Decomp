#include "global.h"
#include "heap.h"
#include "save.h"

extern struct SaveSlotInfo *gUnknown_03000764;
extern u8 gUnknown_030005F0;
extern u8 gUnknown_030005F5;

bool32 sub_0802F374(struct SaveSlotInfo *info, u8 slot);

void sub_08048428(void)
{
    if (gUnknown_03000764 != NULL)
        Free(gUnknown_03000764);
}

bool32 sub_08048440(void)
{
    u8 state = gUnknown_030005F0;

    if (state != 10 && state != 12)
        return FALSE;
    return TRUE;
}

u8 sub_08048458(void)
{
    return gUnknown_030005F0;
}

void sub_08048464(void)
{
    if (gUnknown_03000764 != NULL)
        sub_0802F374(gUnknown_03000764, gUnknown_030005F5);
}
