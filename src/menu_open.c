#include "global.h"
#include "display.h"
#include "map.h"
#include "thread.h"

void sub_0800F3A0(u16 duration);
bool32 sub_0800F298(void);
u32 sub_08007544(void);
void sub_08007520(void);
void sub_08007530(void);
void StartMenuScreen(u32 arg);   // really u8; this file passed it unnarrowed

// Fades out, opens the menu screen `arg` and waits until it closes, then
// signals the event that brings the map back.
void sub_0801B17C(u32 arg)
{
    sub_0800F3A0(6);
    while (!sub_0800F298())
        WaitFrame();
    if (sub_08007544())
        gMapLayer_03003C00.flags |= 0xC;
    else
        gMapLayer_03003910.flags |= 0xC;
    WaitFrame();
    WaitFrame();
    gBgRegsBuffer[1] = 0;
    gBgRegsBuffer[0] = 0;
    gBgRegsBuffer[3] = 0;
    gBgRegsBuffer[2] = 0;
    gBgRegsBuffer[5] = 0;
    gBgRegsBuffer[4] = 0;
    gBgRegsBuffer[7] = 0;
    gBgRegsBuffer[6] = 0;
    StartMenuScreen(arg);
    sub_08007520();
    WaitEvent(0x11201100);
    sub_08007530();
    if (sub_08007544())
        SignalEvent(0x514C9);
    else
        SignalEvent(0x514C8);
}
