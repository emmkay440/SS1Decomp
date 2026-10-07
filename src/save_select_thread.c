#include "global.h"
#include "heap.h"
#include "thread.h"
#include "display.h"

extern void *gUnknown_03000608;
extern void *gUnknown_0300060C;
extern void *gUnknown_03000610;
extern struct Thread gUnknownThread_030068F0;
extern u8 gUnknown_03006918;
extern u8 gUnknown_03000768;

void sub_080486A4(void);
void sub_080487B8(u8 arg);
void sub_080486C8(void);
void sub_08048740(void);
void sub_08048F64(void);
void sub_080496B4(void);
void sub_08049E08(void);
void sub_0804A450(void);
void sub_0804ABC0(void);
void sub_0804B514(void);
void sub_0804BB9C(void);
void sub_0804C334(void);
void sub_0804C9C0(void);
void sub_080485E0(void);
void sub_08048608(void);
void sub_08048614(void);

void sub_0804855C(void)
{
    if (gUnknown_03000608 != NULL)
    {
        Free(gUnknown_03000608);
        gUnknown_03000608 = NULL;
    }
    if (gUnknown_0300060C != NULL)
    {
        Free(gUnknown_0300060C);
        gUnknown_0300060C = NULL;
    }
    if (gUnknown_03000610 != NULL)
    {
        Free(gUnknown_03000610);
        gUnknown_03000610 = NULL;
    }
}

void sub_080485A0(void)
{
    u8 *stack = Alloc(0x400);

    gUnknownThread_030068F0.entry = sub_080485E0;
    gUnknownThread_030068F0.sp = stack + 0x3FC;
    gUnknownThread_030068F0.stack = stack;
    gUnknownThread_030068F0.priority = 50;
    gUnknownThread_030068F0.prev = NULL;
    gUnknownThread_030068F0.next = NULL;
    gUnknownThread_030068F0.onExit = sub_08048608;
    CreateThread(&gUnknownThread_030068F0, 0);
}

void sub_080485E0(void)
{
    sub_080486A4();
    sub_080487B8(gUnknown_03006918);
    sub_080486C8();
    sub_08048740();
    SignalEvent(0x11201100);
}

void sub_08048608(void)
{
    sub_08048614();
}

void sub_08048614(void)
{
    switch (gUnknown_03000768)
    {
    case 0:
        sub_08048F64();
        break;
    case 1:
        sub_080496B4();
        break;
    case 2:
        sub_08049E08();
        break;
    case 3:
        sub_0804A450();
        break;
    case 4:
        sub_0804ABC0();
        break;
    case 5:
        sub_0804B514();
        break;
    case 6:
        sub_0804BB9C();
        break;
    case 7:
        sub_0804C334();
        break;
    case 8:
        sub_0804C9C0();
        break;
    }
    gBgRegsBuffer[6] = 0;
    gBgRegsBuffer[7] = 0;
    gBgRegsBuffer[4] = 0;
    gBgRegsBuffer[5] = 0;
    gBgRegsBuffer[2] = 0;
    gBgRegsBuffer[3] = 0;
    gBgRegsBuffer[0] = 0;
    gBgRegsBuffer[1] = 0;
}
