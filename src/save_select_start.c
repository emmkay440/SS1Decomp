#include "global.h"
#include "display.h"
#include "heap.h"
#include "save.h"
#include "save_select.h"
#include "sound.h"
#include "thread.h"

extern struct Thread gSaveSelectThread;

extern u32 gUnknown_030031A8;

void SaveSelectThread(void);
void sub_08048428(void);
void sub_0804632C(void);
void sub_08002B58(void);
void sub_08007490(u32 arg);
bool32 sub_0800F298(void);
void sub_08022AB4(void);
void sub_08046338(void);
void sub_080463F0(void);
void sub_080466A8(void);
void sub_08046D90(void);
void sub_080472FC(void);
u8 sub_08048440(void);
u8 sub_08048458(void);
void sub_08048464(void);
void sub_0804855C(void);

void SaveSelectThread(void)
{
    sub_08046338();
    sub_08046D90();
    sub_08022AB4();
    DisplayOn();
    PlaySE(0x6F);

    while (TRUE)
    {
        if (sub_08048458() == 0)
            sub_0800F298();
        if (sub_0800F298())
        {
            sub_080463F0();
            sub_080466A8();
        }
        sub_080472FC();
        if (sub_08048440())
            break;
        WaitFrame();
        sub_0804855C();
    }

    StopSE(0x6F);
    // state 12 (one of the two that end the loop): leave save select? (guess)
    if (sub_08048458() == 12)
    {
        SignalEvent(0x14);
        DisplayOff();
        return;
    }
    sub_08048464();
    switch (gUnknown_030031A8)
    {
    case 0:
        sub_08007490(0);
        break;
    case 1:
        sub_08002B58();
        break;
    }
}

void StartSaveSelect(void)
{
    u8 *stack = Alloc(0x400);

    gSaveSelectThread.entry = SaveSelectThread;
    gSaveSelectThread.sp = stack + 0x3FC;
    gSaveSelectThread.stack = stack;
    gSaveSelectThread.priority = 50;
    gSaveSelectThread.prev = NULL;
    gSaveSelectThread.next = NULL;
    gSaveSelectThread.onExit = sub_0804632C;
    CreateThread(&gSaveSelectThread, 0);
}

// onExit of the save select thread
void sub_0804632C(void)
{
    sub_08048428();
}

extern u8 gUnknown_030005F0;
extern u8 gUnknown_030005F1;
extern u8 gUnknown_030005F2;
extern u8 gUnknown_030005F3;
extern u8 gUnknown_030005F4;
extern u8 gUnknown_030005F5;
extern u8 gUnknown_030005F6;
extern u8 gUnknown_030005F7;
extern u8 gUnknown_030005F8;
extern u16 gUnknown_03000604;
extern u16 gUnknown_03000606;
extern void *gUnknown_03000608;
extern void *gUnknown_0300060C;
extern void *gUnknown_03000610;
extern struct SaveSlotInfo *gUnknown_03000764;

void sub_080484F0(void);
void bzero(void *dest, u32 size);

// Resets the save select screen's state and loads the info of all slots.
void sub_08046338(void)
{
    gUnknown_030005F0 = 0;
    gUnknown_030005F1 = 0;
    gUnknown_030005F2 = 2;
    gUnknown_030005F4 = 0;
    gUnknown_030005F5 = 0;
    gUnknown_03000604 = 0;
    gUnknown_03000606 = 0;
    gUnknown_030005F7 = 1;
    gUnknown_03000608 = NULL;
    gUnknown_0300060C = NULL;
    gUnknown_03000610 = NULL;
    gUnknown_030005FC.x = 0;
    gUnknown_030005FC.y = 0;
    gUnknown_03000600.c.column = 0;
    gUnknown_03000600.c.row = 0;
    gUnknown_030005F6 = 0;
    gUnknown_030005F3 = 0;
    gUnknown_030005F8 = 0;
    sub_080484F0();
    gUnknown_03000764 = Alloc(NUM_SAVE_SLOTS * sizeof(struct SaveSlotInfo));
    bzero(gUnknown_03000764, NUM_SAVE_SLOTS * sizeof(struct SaveSlotInfo));
    LoadSaveSlotInfo(gUnknown_03000764);
}
