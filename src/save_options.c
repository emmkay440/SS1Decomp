#include "global.h"
#include "heap.h"
#include "player_stats.h"
#include "save.h"

// Zeroes the slot (the checksum byte too, so it reads as empty); retries
// until the write works.
bool32 EraseSaveSlot(u8 slot)
{
    u8 *buf = Alloc(0x280);
    u8 *p = buf;
    u32 i;

    for (i = 0; i < 0x280; i++)
        *p++ = 0;
    buf[SAVE_DATA_SIZE] = 0;
    while (WriteSaveSector(slot, buf) != 0)
        ;
    Free(buf);
    return TRUE;
}

void GetOptions(struct Options *dest)
{
    *dest = gPlayerStats.options;
}

void SetOptions(const struct Options *src)
{
    gPlayerStats.options = *src;
}
