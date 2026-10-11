#include "global.h"
#include "heap.h"
#include "item.h"
#include "player_stats.h"
#include "data_record.h"

extern u32 gUnknown_03003D08;
extern struct Item *gUnknown_030063AC;
extern struct Item *gUnknown_030063B8;
extern struct Item *gUnknown_030063A8;
extern u32 gUnknown_030063B4;
extern u32 gUnknown_030063BC;

u32 sub_080074F0(void);
void sub_08013CE4(void);
void sub_08014CB8(void);

void sub_08013AF8(u16 *src)
{
    u16 i;

    for (i = 0; i < 3; i++, src++)
    {
        u16 value = *src;
        gPlayerStats.unk66[i] = value;
    }
}

// Record 14:(class * 8 + number of bits 2-7 set in gUnknown_03003D08).
// It has three lists (counts at +0..+2, offsets at +4, +8, +0xC); returns
// list `which` in *list and its count.
u8 sub_08013B20(u32 which, u8 **list)
{
    u32 key = GetPlayerClass() * 8;
    u32 count = 0;
    u32 i;
    u32 *record;

    i = 2;
    for (; i < 8; i++)
    {
        if (gUnknown_03003D08 & (1 << i))
            count++;
    }
    key += count;
    key |= 0xE0000;
    record = GetDataRecord(key);
    switch (which)
    {
    case 0:
        *list = (u8 *)(record[1] + (u32)record);
        return ((u8 *)record)[0];
    case 1:
        *list = (u8 *)(record[2] + (u32)record);
        return ((u8 *)record)[1];
    case 2:
        *list = (u8 *)(record[3] + (u32)record);
        return ((u8 *)record)[2];
    default:
        *list = NULL;
        return 0;
    }
}

// Copies one of the three 12-item lists: the shared copy while
// sub_080074F0() is true, else the one in gPlayerStats.
// `src` stays unset for another `which` (as in the original).
// The body only matches inside a do/while(0), so it was probably a macro
// (found by decomp-permuter).
void sub_08013B94(u32 which, struct Item *dest)
{
    u32 i;
    struct Item *src;
    struct Item *d;

    do
    {
    switch (which)
    {
    case 0:
        if (sub_080074F0())
            src = gUnknown_030063AC;
        else
            src = gPlayerStats.unk1DC[0];
        break;
    case 1:
        if (sub_080074F0())
            src = gUnknown_030063B8;
        else
            src = gPlayerStats.unk1DC[1];
        break;
    case 2:
        if (sub_080074F0())
            src = gUnknown_030063A8;
        else
            src = gPlayerStats.unk1DC[2];
        break;
    }
    for (i = 0, d = dest; i < 12; i++)
        *d++ = *src++;
    } while (0);
}

// A storage slot (slot 0 for an out-of-range index). Nothing calls it.
struct Item GetStorageSlot(u32 slot)
{
    if (slot > 59)
        slot = 0;
    return gPlayerStats.storage[slot];
}
