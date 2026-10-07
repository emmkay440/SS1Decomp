#include "global.h"
#include "sound.h"
#include "display.h"

void SetDispStatFlags(u16 flags);
void ClearDispStatFlags(u16 flags);

void DisplayOn(void)
{
    SetDispStatFlags(8);
    gDispCnt.bits.forcedBlank = FALSE;
    REG_DISPCNT = gDispCnt.raw;
    EnableSoundVSync();
}

void DisplayOff(void)
{
    ClearDispStatFlags(0x18);
    gDispCnt.bits.forcedBlank = TRUE;
    REG_DISPCNT = gDispCnt.raw;
    DisableSoundVSync();
}

void SetBgMode(u16 mode, u16 apply)
{
    gDispCnt.bits.mode = mode;
    if (apply)
        REG_DISPCNT = gDispCnt.raw;
}
