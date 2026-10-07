#ifndef GUARD_SAVE_H
#define GUARD_SAVE_H

#include "player_stats.h"

// Save slots. Each flash sector holds one gPlayerStats (SAVE_DATA_SIZE
// bytes) followed by a checksum byte: ~(sum of the bytes).

#define NUM_SAVE_SLOTS 8
#define SAVE_SECTOR_SIZE 0x1000

// One entry per slot for the save select screen (LoadSaveSlotInfo).
struct SaveSlotInfo
{
    u8 valid;
    u8 class;
    u8 color;
    u8 level;
    u8 unk4;          // not set by LoadSaveSlotInfo for valid slots
    u8 unk5;          // gPlayerStats +0x270 bit 9
    u8 unk6;
    u8 unk7;
    u16 str;
    u16 vit;
    u16 int_;
    u16 dex;
    u16 attack;
    u16 defense;
    u16 name[16];
    u8 unk34[0x4];
};                    // size 0x38

extern bool8 gSaveEnabled;

void InitSaveFlash(void);
void ReadSaveSector(u16 sector, u32 offset, u8 *dest, u32 size);
u16 WriteSaveSector(u16 sector, u8 *src);
u32 VerifySaveSector(u16 sector, u8 *src);

u32 SaveGame(void);
bool32 LoadSaveSlotInfo(struct SaveSlotInfo *info);
bool32 EraseSaveSlot(u8 slot);
void GetOptions(struct Options *dest);
void SetOptions(const struct Options *src);

#endif // GUARD_SAVE_H
