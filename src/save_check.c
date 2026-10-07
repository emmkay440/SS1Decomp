#include "global.h"
#include <string.h>
#include "heap.h"
#include "player_stats.h"
#include "save.h"



// Loads slot `slot` into gPlayerStats. An empty slot starts a new character
// with the class, color and name chosen on the save select screen.
u8 CalcSaveChecksum(u8 *buf)
{
    u8 sum;

    SAVE_CHECKSUM(buf, sum);
    return ~sum;
}

bool32 IsSaveSlotValid(u8 slot)
{
    u8 *buf = Alloc(0x280);
    u8 *checksum;
    u8 sum;
    u8 expected;

    ReadSaveSector(slot, 0, buf, 0x280);
    checksum = &buf[SAVE_DATA_SIZE];
    SAVE_CHECKSUM(buf, sum);
    expected = ~sum;
    if (*checksum != expected)
    {
        Free(buf);
        return FALSE;
    }
    Free(buf);
    return TRUE;
}

bool32 LoadSaveSlot(u8 slot)
{
    u8 *buf = Alloc(SAVE_SECTOR_SIZE);
    u8 *checksum;
    u8 sum;
    u8 expected;

    ReadSaveSector(slot, 0, buf, SAVE_SECTOR_SIZE);
    checksum = &buf[SAVE_DATA_SIZE];
    SAVE_CHECKSUM(buf, sum);
    expected = ~sum;
    if (*checksum != expected)
    {
        Free(buf);
        return FALSE;
    }
    memcpy(&gPlayerStats, buf, SAVE_DATA_SIZE);
    Free(buf);
    return TRUE;
}

