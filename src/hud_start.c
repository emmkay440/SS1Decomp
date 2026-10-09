#include "global.h"
#include "heap.h"
#include "thread.h"

extern struct Thread gHudThread;

void HudThread(void);

void StartHudThread(u32 arg)
{
    gHudThread.priority = 0x34;
    gHudThread.stack = Alloc(0x400);
    gHudThread.entry = HudThread;
    gHudThread.sp = (u8 *)gHudThread.stack + 0x3FC;
    gHudThread.onExit = NULL;
    CreateThread(&gHudThread, arg);
}
