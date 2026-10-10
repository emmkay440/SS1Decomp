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

// Turns on layers (DISPCNT bits 8-12) and windows (bits 13-15).
void EnableDisplayLayers(u16 layers, u16 windows, u16 apply)
{
    u32 value = layers & 0x1F00;
    u32 mask;

    value |= gDispCnt.raw;
    mask = windows & 0xE000;
    mask |= value;
    gDispCnt.raw = mask;
    if (apply)
        REG_DISPCNT = mask;
}
