#include "global.h"
#include "copy_queue.h"
#include "display.h"
#include "m4a.h"

extern u16 gDispStat;
extern void *gHBlankEffectTable;
extern u32 gSoundVSyncEnabled;
extern u32 gVBlankUpdatePending;
extern u32 gUnknown_03002D60;
extern u32 gFrameCounter;
extern u8 gOamBuffer[];
extern u16 gPaletteBufferQueued;

void sub_0800449C(void);
u16 Random(void);
void UpdateInput(void);
void SignalEvent(u32 event);
void VBlankIntrWait(void);

static inline void ClearDispStatFlagsInline(u16 flags)
{
    gDispStat &= ~flags;
    REG_DISPSTAT = gDispStat;
}


void SetVCountLine(u8 line)
{
    gDispStat = (u8)gDispStat | (line << 8);
    REG_DISPSTAT = gDispStat;
}

void sub_08000F98(void)
{
    ClearDispStatFlagsInline(4);
}

void VCountIntr(void)
{
    if (gSoundVSyncEnabled)
        m4aSoundMain();
    REG_IF |= INTR_FLAG_VCOUNT;
    INTR_CHECK |= INTR_FLAG_VCOUNT;
}

// Called once per frame by the main loop.
void FrameUpdate(void)
{
    u16 line;

    sub_0800449C();
    // Burn Random() calls until scanline 100.
    for (line = *(u16 *)REG_ADDR_VCOUNT; line < 100; line++)
    {
        u16 vcount;

        Random();
        vcount = *(u16 *)REG_ADDR_VCOUNT;
        if (vcount > line)
            line = vcount;
    }
    gVBlankUpdatePending = TRUE;
    if (!gDispCnt.bits.forcedBlank)
    {
        VBlankIntrWait();
        gFrameCounter++;
    }
    CpuFastFill(0xA0, gOamBuffer, OAM_SIZE);
    UpdateInput();
    SignalEvent(1);
    QueueCopy(gOamBuffer, (void *)OAM, OAM_SIZE);
    gPaletteBufferQueued = 0;
}

void InitVBlankState(void)
{
    gUnknown_03002D60 = 0;
    gVBlankUpdatePending = FALSE;
}

void VBlankIntr(void)
{
    if (gSoundVSyncEnabled)
    {
        REG_IME = 0;
        m4aSoundVSync();
        REG_IME = 1;
    }
    if (gVBlankUpdatePending)
    {
        CopyBgRegsBuffer();
        ProcessCopyQueue();
        gVBlankUpdatePending = FALSE;
    }
    if (gSoundVSyncEnabled)
        m4aSoundMain();
    REG_IF |= INTR_FLAG_VBLANK;
    INTR_CHECK |= INTR_FLAG_VBLANK;
}

// Stores the flag and returns it as 0/1. Nothing calls it directly.
// (The store is in both branches; that's how the ROM has it.)
bool32 sub_080010F4(u32 value)
{
    if (value == 0)
    {
        gUnknown_03002D60 = value;
        return FALSE;
    }
    else
    {
        gUnknown_03002D60 = value;
        return TRUE;
    }
}
