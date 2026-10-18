#include "global.h"
#include "copy_queue.h"
#include "display.h"
#include "heap.h"
#include "m4a.h"
#include "thread.h"

extern void (*gIntrTable[])(void);
extern void (*const gIntrTableTemplate[14])(void);
extern u8 gIntrMainRam[0x800];
extern struct Thread gMainThread;
extern struct OamData gOamBuffer[];

void IntrMain(void);
void InitIntrState(void);
void DisableInterrupts(void);
void EnableInterrupts(void);
void EnableIntr(u16 flags);
void InitBgRegsBuffer(void);
void InitVBlankState(void);
void SeedRandom(s32 seed);
void SetKeyRepeat(u16 delay, u16 rate);
void RunThreads(struct Thread *thread);
void GameMain(void);

void AgbMain(void)
{
    REG_WAITCNT = 0x4014;
    RegisterRamReset(0xE0);
    CpuFill32(0, (void *)EWRAM_START, 0x40000);
    CpuFill32(0, (void *)IWRAM_START, 0x7C00);
    CpuFill32(0, (void *)VRAM, 0x18000);
    CpuFill32(0xA0, (void *)OAM, 0x400);
    CpuFill32(0, (void *)PLTT, 0x400);
    CpuFill32(0xA0, gOamBuffer, 0x400);
    CpuFill32(0, gPaletteBuffer, 0x400);
    InitIntrState();
    DisableInterrupts();
    gPaletteBufferQueued = 0;
    DisplayOff();
    CpuCopy32(gIntrTableTemplate, gIntrTable, sizeof(gIntrTableTemplate));
    CpuCopy32(IntrMain, gIntrMainRam, sizeof(gIntrMainRam));
    INTR_VECTOR = gIntrMainRam;
    InitHeap();
    InitBgRegsBuffer();
    InitCopyQueue();
    InitVBlankState();
    SeedRandom(0x1234);
    EnableInterrupts();
    EnableIntr(INTR_FLAG_VBLANK);
    SetKeyRepeat(0x10, 8);
    m4aSoundInit();
    m4aSoundVSyncOff();
    gMainThread.next = NULL;
    gMainThread.priority = 0;
    gMainThread.entry = GameMain;
    gMainThread.stack = Alloc(0x400);
    gMainThread.sp = (u8 *)gMainThread.stack + 0x3FC;
    gMainThread.onExit = NULL;
    RunThreads(&gMainThread);
}
