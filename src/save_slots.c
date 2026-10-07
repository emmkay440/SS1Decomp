#include "global.h"
#include "heap.h"
#include "player.h"
#include "player_stats.h"
#include "save.h"

#include <string.h>
void sub_0800B1B0(void);
void sub_08007484(void);
void sub_08007680(void);
void sub_0801516C(void);
u8 sub_0801702C(void);
u8 sub_0801705C(void);
void sub_0801574C(struct Player *player);
void sub_08016270(struct Player *player);
void sub_08016DC0(void);


// Loads slot `slot` into gPlayerStats. An empty slot starts a new character
// with the class, color and name chosen on the save select screen.
bool32 sub_0802F374(struct SaveSlotInfo *info, u8 slot)
{
    u8 *buf;
    u8 sum;
    u32 i;

    sub_0800B1B0();
    sub_08007484();
    buf = Alloc(SAVE_SECTOR_SIZE);
    ReadSaveSector(slot, 0, buf, SAVE_SECTOR_SIZE);
    SAVE_CHECKSUM(buf, sum);
    if (buf[SAVE_DATA_SIZE] != (u8)~sum)
    {
        Free(buf);
        gPlayerStats.classAndColor = (info[slot].class << 2) | (info[slot].color & 3);
        gPlayerStats.saveSlot = slot;
        for (i = 0; i < 16; i++)
            gPlayerStats.name[i] = info[slot].name[i];
        gPlayerStats.options.bgm = TRUE;
        gPlayerStats.options.windowR = 7;
        gPlayerStats.options.windowG = 11;
        gPlayerStats.options.windowB = 16;
        gPlayerStats.options.controls = 0;
        sub_0801516C();
    }
    else
    {
        memcpy(&gPlayerStats, buf, SAVE_DATA_SIZE);
        Free(buf);
        if (info[slot].unk4)
            sub_08007680();
    }
    return TRUE;
}

u8 CalcSaveChecksum(u8 *buf)
{
    u8 sum;

    SAVE_CHECKSUM(buf, sum);
    return ~sum;
}

bool32 IsSaveSlotValid(u8 slot)
{
    u8 *buf = Alloc(0x280);
    u8 sum;

    ReadSaveSector(slot, 0, buf, 0x280);
    SAVE_CHECKSUM(buf, sum);
    if (buf[SAVE_DATA_SIZE] == (u8)~sum)
    {
        Free(buf);
        return TRUE;
    }
    Free(buf);
    return FALSE;
}

bool32 LoadSaveSlot(u8 slot)
{
    u8 *buf = Alloc(SAVE_SECTOR_SIZE);
    u8 sum;

    ReadSaveSector(slot, 0, buf, SAVE_SECTOR_SIZE);
    SAVE_CHECKSUM(buf, sum);
    if (buf[SAVE_DATA_SIZE] == (u8)~sum)
    {
        memcpy(&gPlayerStats, buf, SAVE_DATA_SIZE);
        Free(buf);
        return TRUE;
    }
    Free(buf);
    return FALSE;
}

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
