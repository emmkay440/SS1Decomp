#include "global.h"
#include "display.h"
#include "sound.h"
#include "thread.h"

void sub_08002B58(void);                                   /* extern */
void sub_08007490(u32 arg);                                /* extern */
bool32 sub_0800F298(void);                                 /* extern */
void sub_08022AB4(void);                                   /* extern */
void sub_08046338(void);                                   /* extern */
void sub_080463F0(void);                                   /* extern */
void sub_080466A8(void);                                   /* extern */
void sub_08046D90(void);                                   /* extern */
void sub_080472FC(void);                                   /* extern */
bool32 sub_08048440(void);                                 /* extern */
u8 sub_08048458(void);                                  /* extern */
void sub_08048464(void);                                   /* extern */
void sub_0804855C(void);                                   /* extern */
extern u32 gUnknown_030031A8;

void SaveSelectThread(void) {
    sub_08046338();
    sub_08046D90();
    sub_08022AB4();
    DisplayOn();
    PlaySE(0x6FU);

    while (1) {
        if ((sub_08048458() << 0x18) == 0) {
            sub_0800F298();
        }
        if (sub_0800F298() != 0) {
            sub_080463F0();
            sub_080466A8();
        }
        sub_080472FC();
        if ((sub_08048440() << 0x18) != 0) {
            break;
        }
        WaitFrame();
        sub_0804855C();
    }

    StopSE(0x6FU);
    if (sub_08048458() == 0xC) {
        SignalEvent(0x14U);
        DisplayOff();
        return;
    }
    sub_08048464();
    switch (gUnknown_030031A8) {
    case 0:
        sub_08007490(0);
        return;
    case 1:
        sub_08002B58();
        return;
    }
}
