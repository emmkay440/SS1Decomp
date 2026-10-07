#include "global.h"
#include "gba/flash_internal.h"
#include "save.h"

extern const u16 gKnownFlashIds[];
extern void (*gIntrTable[])(void);

u16 IdentifyFlash(void);
u16 SetFlashTimerIntr(u8 timerNum, void (**intrFunc)(void));
u32 VerifyFlashSector(u16 sectorNum, u8 *src);
void DisableInterrupts(void);
void EnableInterrupts(void);

void InitSaveFlash(void)
{
    const u16 *ids;
    u8 i;

    IdentifyFlash();
    ids = gKnownFlashIds;
    for (i = 0; i < 5; i++)
    {
        if (gFlash->ids.joined == *ids++)
            break;
    }
    // The table ends with 0: a chip that reads as 0 means there's no flash.
    if (i == 4)
        gSaveEnabled = FALSE;
    else
        gSaveEnabled = TRUE;

    if (gSaveEnabled)
        SetFlashTimerIntr(2, &gIntrTable[6]);
}

void ReadSaveSector(u16 sector, u32 offset, u8 *dest, u32 size)
{
    ReadFlash(sector, offset, dest, size);
}

u16 WriteSaveSector(u16 sector, u8 *src)
{
    u32 result;

    if (gSaveEnabled)
    {
        DisableInterrupts();
        result = ProgramFlashSector(sector, src);
        EnableInterrupts();
        return result;
    }
    return 1;
}

u32 VerifySaveSector(u16 sector, u8 *src)
{
    u32 result;

    if (!gSaveEnabled)
        result = 1;
    else
        result = VerifyFlashSector(sector, src);
    return result;
}
