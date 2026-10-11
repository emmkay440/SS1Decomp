#include "global.h"
#include "display.h"
#include "thread.h"

extern u8 gUnknown_03006880;       // menu page to open

void SetKeyRepeat(u16 delay, u16 rate);
void sub_08043E0C(void);
void sub_08043BD8(void);
void sub_0803F5E8(void);
void sub_0803F5C8(u8 value);
void sub_08022AB4(void);
void sub_08026C80(u32 slot);
void sub_08026CE4(u32 slot);
void sub_08026D0C(u32 slot);
void sub_08026D70(u32 slot);
bool32 sub_0800F298(void);
void sub_0800F3A0(u16 duration);
void sub_08041538(void);
bool32 sub_08016FA0(void);
void sub_08043EDC(void);
void sub_08044590(void);
u8 sub_08045F44(void);
void sub_08043CC8(void);

// The menu screen thread: sets the page up, runs the menu until it is
// closed (or sub_08016FA0() ends it), fades out and signals the opener.
void MenuScreen(void)
{
    gBgRegsBuffer[6] = 0;
    gBgRegsBuffer[7] = 0;
    SetKeyRepeat(8, 3);
    sub_08043E0C();
    sub_08043BD8();
    sub_0803F5E8();
    sub_0803F5C8(gUnknown_03006880);
    sub_08022AB4();
    if ((u8)(gUnknown_03006880 - 6) > 3)
        sub_08026C80(0);
    if (gUnknown_03006880 == 1)
        sub_08026D0C(0);
    while (!sub_0800F298())
        WaitFrame();
    sub_08041538();
    WaitFrame();
    while (!sub_08016FA0())
    {
        if (sub_0800F298())
        {
            sub_08043EDC();
            sub_08044590();
        }
        if (sub_08045F44())
            break;
        sub_08043CC8();
        WaitFrame();
    }
    while (!sub_0800F298())
    {
        sub_08043CC8();
        WaitFrame();
    }
    sub_0800F3A0(6);
    while (!sub_0800F298())
    {
        sub_08043CC8();
        WaitFrame();
    }
    gBgRegsBuffer[2] = 0;
    gBgRegsBuffer[6] = 0;
    gBgRegsBuffer[7] = 0;
    if ((u8)(gUnknown_03006880 - 6) > 3)
        sub_08026CE4(0);
    if (gUnknown_03006880 == 1)
        sub_08026D70(0);
    SetKeyRepeat(16, 8);
    SignalEvent(0x11201100);
}
