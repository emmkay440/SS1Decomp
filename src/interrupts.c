#include "global.h"

// Interrupt and DISPSTAT control. Register changes are made outside
// VBlank/HBlank and with interrupts off.

extern u16 gIntrMasterEnable;   // mirror of REG_IME
extern u16 gIntrEnableMask;     // mirror of REG_IE
extern u16 gDispStat;           // mirror of REG_DISPSTAT
extern void *gHBlankEffectTable;
extern u16 gBgRegsBuffer[];

#define WAIT_NOT_IN_BLANK() while (REG_DISPSTAT & (DISPSTAT_VBLANK | DISPSTAT_HBLANK))

#define INTR_OFF() REG_IME = gIntrMasterEnable = FALSE
#define INTR_ON()  REG_IME = gIntrMasterEnable = TRUE

// Inlined copies of EnableIntr / DisableIntr / SetDispStatFlags.
static inline void EnableIntrInline(u16 flags)
{
    WAIT_NOT_IN_BLANK();
    INTR_OFF();
    gIntrEnableMask |= flags;
    REG_IE = gIntrEnableMask;
    WAIT_NOT_IN_BLANK();
    INTR_ON();
}

static inline void DisableIntrInline(u16 flags)
{
    WAIT_NOT_IN_BLANK();
    INTR_OFF();
    gIntrEnableMask &= ~flags;
    REG_IE = gIntrEnableMask;
    WAIT_NOT_IN_BLANK();
    INTR_ON();
}

static inline void SetDispStatFlagsInline(u16 flags)
{
    WAIT_NOT_IN_BLANK();
    INTR_OFF();
    gDispStat |= flags;
    REG_DISPSTAT = gDispStat;
    WAIT_NOT_IN_BLANK();
    INTR_ON();
}

static inline void ClearDispStatFlagsInline(u16 flags)
{
    gDispStat &= ~flags;
    REG_DISPSTAT = gDispStat;
}

static inline void SetVCountLineInline(u16 line)
{
    gDispStat = (gDispStat & 0xFF) | (line << 8);
    REG_DISPSTAT = gDispStat;
}

void InitBgRegsBuffer(void)
{
    DmaFill16(3, 0, gBgRegsBuffer, 4);
    gBgRegsBuffer[10] = 0x100;
    gBgRegsBuffer[8] = 0x100;
    gBgRegsBuffer[18] = 0x100;
    gBgRegsBuffer[16] = 0x100;
}

void EnableHBlankEffect(void *table)
{
    gHBlankEffectTable = table;
    EnableIntrInline(INTR_FLAG_HBLANK);
    SetDispStatFlagsInline(DISPSTAT_HBLANK_INTR);
}

void DisableHBlankEffect(void)
{
    DisableIntrInline(INTR_FLAG_HBLANK);
    ClearDispStatFlagsInline(DISPSTAT_HBLANK_INTR);
    gHBlankEffectTable = NULL;
}

// VCount interrupt at line 32.
void EnableVCountIntr(void)
{
    EnableIntrInline(INTR_FLAG_VCOUNT);
    SetDispStatFlagsInline(DISPSTAT_VCOUNT_INTR);
    SetVCountLineInline(32);
}

void InitIntrState(void)
{
    gIntrEnableMask = INTR_FLAG_GAMEPAK;
    gIntrMasterEnable = FALSE;
    gHBlankEffectTable = NULL;
}

void DisableInterrupts(void)
{
    WAIT_NOT_IN_BLANK();
    INTR_OFF();
}

void EnableInterrupts(void)
{
    WAIT_NOT_IN_BLANK();
    INTR_ON();
}

void EnableIntr(u16 flags)
{
    WAIT_NOT_IN_BLANK();
    INTR_OFF();
    gIntrEnableMask |= flags;
    REG_IE = gIntrEnableMask;
    WAIT_NOT_IN_BLANK();
    INTR_ON();
}

void DisableIntr(u16 flags)
{
    WAIT_NOT_IN_BLANK();
    INTR_OFF();
    gIntrEnableMask &= ~flags;
    REG_IE = gIntrEnableMask;
    WAIT_NOT_IN_BLANK();
    INTR_ON();
}

void SetDispStatFlags(u16 flags)
{
    WAIT_NOT_IN_BLANK();
    INTR_OFF();
    gDispStat |= flags;
    REG_DISPSTAT = gDispStat;
    WAIT_NOT_IN_BLANK();
    INTR_ON();
}

void ClearDispStatFlags(u16 flags)
{
    gDispStat &= ~flags;
    REG_DISPSTAT = gDispStat;
}
