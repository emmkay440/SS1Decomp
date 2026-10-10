#include "global.h"
#include "area_state.h"
#include "heap.h"
#include "thread.h"

extern struct Thread *gUnknownThreadPtr_030063E4;
extern struct Thread *gUnknownThreadPtr_030063EC;

void *sub_08001430(u32 size);
void sub_0801ECC4(void);
void sub_0801F160(void);
void sub_0801F4DC(void);
void sub_0801F9C8(void);
void sub_0801FE1C(void);
void sub_08020604(void);
void sub_08020ADC(void);
void sub_080201B0(void);

// Sends event 3000 once (unkAB remembers it) if `flag` is set.
void sub_08020F24(u32 flag)
{
    if (flag != 0 && gUnknown_030063D8->unkAB == 0)
    {
        SignalEvent(3000);
        gUnknown_030063D8->unkAB = 1;
    }
}

void sub_08020F54(void)
{
    u32 i;

    gUnknown_030063D8->unk9C &= ~2;
    gUnknown_030063D8->unk0 = NULL;
    gUnknown_030063D8->unk4 = NULL;
    gUnknown_030063D8->unk84 = 0;
    for (i = 0; i < 5; i++)
        gUnknown_030063D8->unkC[i] = 0;
}

// Threads started on fixed slots; most wait until the slot's previous
// thread has finished.

extern struct Thread *gUnknownThreadPtr_030063CC;
extern struct Thread *gUnknownThreadPtr_030063D0;
extern struct Thread *gUnknownThreadPtr_030063D4;
extern struct Thread *gUnknownThreadPtr_030063DC;
extern struct Thread *gUnknownThreadPtr_030063E0;
extern struct Thread *gUnknownThreadPtr_030063E8;
extern struct Thread *gUnknownThreadPtr_030063F0;
extern struct Thread *gUnknownThreadPtr_030063F4;
extern struct Thread *gUnknownThreadPtr_030063F8;
extern struct Thread *gUnknownThreadPtr_030063FC;
extern struct Thread *gUnknownThreadPtr_03006400;
extern struct Thread *gUnknownThreadPtr_03006404;
extern struct Thread *gUnknownThreadPtr_03006408;
extern struct Thread *gUnknownThreadPtr_0300640C;
extern struct Thread *gUnknownThreadPtr_03006410;
extern struct Thread *gUnknownThreadPtr_03006414;

void sub_080199B4(void);
void sub_08019C40(void);
void sub_0801AAC8(void);
void sub_0801AF3C(void);
void sub_0801B210(void);
void sub_0801C6B0(void);
void sub_0801CB88(void);
void sub_0801CC68(void);
void sub_0801CDE0(void);
void sub_0801CFB0(void);
void sub_0801D2C4(void);
void sub_0801D5D8(void);
void sub_0801D928(void);
void sub_0801DBC8(void);
void sub_0801E014(void);
void sub_0801E5C0(void);
void sub_0801EA78(void);
void sub_0802173C(void);

void sub_08020F94(void)
{
    gUnknownThreadPtr_03006408->entry = sub_0801B210;
    gUnknownThreadPtr_03006408->sp = (u8 *)(gUnknownThreadPtr_03006408->stack = Alloc(0x400)) + 0x3FC;
    gUnknownThreadPtr_03006408->priority = 0x46;
    gUnknownThreadPtr_03006408->onExit = NULL;
    CreateThread(gUnknownThreadPtr_03006408);
    gUnknownThreadPtr_030063D0->entry = sub_0801C6B0;
    gUnknownThreadPtr_030063D0->sp = (u8 *)(gUnknownThreadPtr_030063D0->stack = Alloc(0x800)) + 0x7FC;
    gUnknownThreadPtr_030063D0->priority = 0x46;
    gUnknownThreadPtr_030063D0->onExit = NULL;
    CreateThread(gUnknownThreadPtr_030063D0);
}

void sub_08021000(void)
{
    u8 *stack;

    gUnknownThreadPtr_030063F4->entry = sub_0801CB88;
    stack = Alloc(0x400);
    gUnknownThreadPtr_030063F4->stack = stack;
    gUnknownThreadPtr_030063F4->sp = stack + 0x3FC;
    gUnknownThreadPtr_030063F4->priority = 0x46;
    gUnknownThreadPtr_030063F4->onExit = NULL;
    CreateThread(gUnknownThreadPtr_030063F4);
}

void sub_0802103C(void)
{
    u8 *stack;

    gUnknownThreadPtr_030063F4->entry = sub_0801CC68;
    stack = Alloc(0x400);
    gUnknownThreadPtr_030063F4->stack = stack;
    gUnknownThreadPtr_030063F4->sp = stack + 0x3FC;
    gUnknownThreadPtr_030063F4->priority = 0x46;
    gUnknownThreadPtr_030063F4->onExit = NULL;
    CreateThread(gUnknownThreadPtr_030063F4);
}

void sub_08021078(void)
{
    u8 *stack;

    while (IsThreadInList(gUnknownThreadPtr_03006400))
        WaitFrame();
    gUnknownThreadPtr_03006400->entry = sub_0801AAC8;
    stack = Alloc(0x400);
    gUnknownThreadPtr_03006400->stack = stack;
    gUnknownThreadPtr_03006400->sp = stack + 0x3FC;
    gUnknownThreadPtr_03006400->priority = 0x56;
    gUnknownThreadPtr_03006400->onExit = NULL;
    CreateThread(gUnknownThreadPtr_03006400);
}

void sub_080210CC(void)
{
    u8 *stack;

    while (IsThreadInList(gUnknownThreadPtr_0300640C))
        WaitFrame();
    gUnknownThreadPtr_0300640C->entry = sub_080199B4;
    stack = Alloc(0x400);
    gUnknownThreadPtr_0300640C->stack = stack;
    gUnknownThreadPtr_0300640C->sp = stack + 0x3FC;
    gUnknownThreadPtr_0300640C->priority = 0x46;
    gUnknownThreadPtr_0300640C->onExit = sub_0802173C;
    CreateThread(gUnknownThreadPtr_0300640C, 0);
}

void sub_08021124(u32 a, u32 b)
{
    u8 *stack;

    while (IsThreadInList(gUnknownThreadPtr_03006410))
        WaitFrame();
    gUnknownThreadPtr_03006410->entry = sub_08019C40;
    stack = Alloc(0x400);
    gUnknownThreadPtr_03006410->stack = stack;
    gUnknownThreadPtr_03006410->sp = stack + 0x3FC;
    gUnknownThreadPtr_03006410->priority = 0x56;
    gUnknownThreadPtr_03006410->onExit = NULL;
    CreateThread(gUnknownThreadPtr_03006410, a, b);
}

void sub_08021180(void)
{
    u8 *stack;

    while (IsThreadInList(gUnknownThreadPtr_03006404))
        WaitFrame();
    gUnknownThreadPtr_03006404->entry = sub_0801AF3C;
    stack = sub_08001430(0x400);
    gUnknownThreadPtr_03006404->stack = stack;
    gUnknownThreadPtr_03006404->sp = stack + 0x3FC;
    gUnknownThreadPtr_03006404->priority = 0x46;
    gUnknownThreadPtr_03006404->onExit = NULL;
    CreateThread(gUnknownThreadPtr_03006404);
}

void sub_080211D4(void)
{
    u8 *stack;

    while (IsThreadInList(gUnknownThreadPtr_030063F0))
        WaitFrame();
    gUnknownThreadPtr_030063F0->entry = sub_0801CDE0;
    stack = Alloc(0x400);
    gUnknownThreadPtr_030063F0->stack = stack;
    gUnknownThreadPtr_030063F0->sp = stack + 0x3FC;
    gUnknownThreadPtr_030063F0->priority = 0x46;
    gUnknownThreadPtr_030063F0->onExit = NULL;
    CreateThread(gUnknownThreadPtr_030063F0);
}

void sub_08021228(void)
{
    u8 *stack;

    while (IsThreadInList(gUnknownThreadPtr_030063FC))
        WaitFrame();
    gUnknownThreadPtr_030063FC->entry = sub_0801CFB0;
    stack = Alloc(0x400);
    gUnknownThreadPtr_030063FC->stack = stack;
    gUnknownThreadPtr_030063FC->sp = stack + 0x3FC;
    gUnknownThreadPtr_030063FC->priority = 0x46;
    gUnknownThreadPtr_030063FC->onExit = NULL;
    CreateThread(gUnknownThreadPtr_030063FC);
}

void sub_0802127C(void)
{
    u8 *stack;

    while (IsThreadInList(gUnknownThreadPtr_030063DC))
        WaitFrame();
    gUnknownThreadPtr_030063DC->entry = sub_0801D2C4;
    stack = Alloc(0x400);
    gUnknownThreadPtr_030063DC->stack = stack;
    gUnknownThreadPtr_030063DC->sp = stack + 0x3FC;
    gUnknownThreadPtr_030063DC->priority = 0x46;
    gUnknownThreadPtr_030063DC->onExit = NULL;
    CreateThread(gUnknownThreadPtr_030063DC);
}

void sub_080212D0(void)
{
    u8 *stack;

    while (IsThreadInList(gUnknownThreadPtr_030063E0))
        WaitFrame();
    gUnknownThreadPtr_030063E0->entry = sub_0801D5D8;
    stack = Alloc(0x400);
    gUnknownThreadPtr_030063E0->stack = stack;
    gUnknownThreadPtr_030063E0->sp = stack + 0x3FC;
    gUnknownThreadPtr_030063E0->priority = 0x46;
    gUnknownThreadPtr_030063E0->onExit = NULL;
    CreateThread(gUnknownThreadPtr_030063E0);
}

void sub_08021324(void)
{
    u8 *stack;

    // waits for the thread in another slot
    while (IsThreadInList(gUnknownThreadPtr_030063E0))
        WaitFrame();
    gUnknownThreadPtr_030063CC->entry = sub_0801D928;
    stack = Alloc(0x400);
    gUnknownThreadPtr_030063CC->stack = stack;
    gUnknownThreadPtr_030063CC->sp = stack + 0x3FC;
    gUnknownThreadPtr_030063CC->priority = 0x46;
    gUnknownThreadPtr_030063CC->onExit = NULL;
    CreateThread(gUnknownThreadPtr_030063CC);
}

void sub_08021378(void)
{
    u8 *stack;

    while (IsThreadInList(gUnknownThreadPtr_030063F8))
        WaitFrame();
    gUnknownThreadPtr_030063F8->entry = sub_0801DBC8;
    stack = Alloc(0x400);
    gUnknownThreadPtr_030063F8->stack = stack;
    gUnknownThreadPtr_030063F8->sp = stack + 0x3FC;
    gUnknownThreadPtr_030063F8->priority = 0x46;
    gUnknownThreadPtr_030063F8->onExit = NULL;
    CreateThread(gUnknownThreadPtr_030063F8);
}

void sub_080213CC(void)
{
    u8 *stack;

    while (IsThreadInList(gUnknownThreadPtr_030063E8))
        WaitFrame();
    gUnknownThreadPtr_030063E8->entry = sub_0801E014;
    stack = Alloc(0x400);
    gUnknownThreadPtr_030063E8->stack = stack;
    gUnknownThreadPtr_030063E8->sp = stack + 0x3FC;
    gUnknownThreadPtr_030063E8->priority = 0x46;
    gUnknownThreadPtr_030063E8->onExit = NULL;
    CreateThread(gUnknownThreadPtr_030063E8);
}

void sub_08021420(void)
{
    u8 *stack;

    while (IsThreadInList(gUnknownThreadPtr_030063D4))
        WaitFrame();
    gUnknownThreadPtr_030063D4->entry = sub_0801E5C0;
    stack = Alloc(0x400);
    gUnknownThreadPtr_030063D4->stack = stack;
    gUnknownThreadPtr_030063D4->sp = stack + 0x3FC;
    gUnknownThreadPtr_030063D4->priority = 0x46;
    gUnknownThreadPtr_030063D4->onExit = NULL;
    CreateThread(gUnknownThreadPtr_030063D4);
}

void sub_08021474(void)
{
    u8 *stack;

    while (IsThreadInList(gUnknownThreadPtr_03006414))
        WaitFrame();
    gUnknownThreadPtr_03006414->entry = sub_0801EA78;
    stack = Alloc(0x400);
    gUnknownThreadPtr_03006414->stack = stack;
    gUnknownThreadPtr_03006414->sp = stack + 0x3FC;
    gUnknownThreadPtr_03006414->priority = 0x46;
    gUnknownThreadPtr_03006414->onExit = NULL;
    CreateThread(gUnknownThreadPtr_03006414);
}

void sub_080214C8(void)
{
    u8 *stack;

    gUnknownThreadPtr_030063EC->entry = sub_0801ECC4;
    stack = Alloc(0x400);
    gUnknownThreadPtr_030063EC->stack = stack;
    gUnknownThreadPtr_030063EC->sp = stack + 0x3FC;
    gUnknownThreadPtr_030063EC->priority = 70;
    gUnknownThreadPtr_030063EC->onExit = NULL;
    CreateThread(gUnknownThreadPtr_030063EC);
}

// Starts `func` on gUnknownThreadPtr_030063E4 unless that thread is running.
#define START_THREAD_030063E4(func)                                 \
{                                                                   \
    u8 *stack;                                                      \
                                                                    \
    if (!IsThreadInList(gUnknownThreadPtr_030063E4))                \
    {                                                               \
        gUnknownThreadPtr_030063E4->entry = func;                   \
        stack = sub_08001430(0x400);                                \
        gUnknownThreadPtr_030063E4->stack = stack;                  \
        gUnknownThreadPtr_030063E4->sp = stack + 0x3FC;             \
        gUnknownThreadPtr_030063E4->priority = 70;                  \
        gUnknownThreadPtr_030063E4->onExit = NULL;                  \
        CreateThread(gUnknownThreadPtr_030063E4);                   \
    }                                                               \
}

void sub_08021504(void)
{
    START_THREAD_030063E4(sub_0801F160);
}

void sub_08021548(void)
{
    START_THREAD_030063E4(sub_0801F4DC);
}

void sub_0802158C(void)
{
    START_THREAD_030063E4(sub_0801F9C8);
}

void sub_080215D0(void)
{
    START_THREAD_030063E4(sub_0801FE1C);
}

void sub_08021614(void)
{
    START_THREAD_030063E4(sub_08020604);
}

void sub_08021658(void)
{
    START_THREAD_030063E4(sub_08020ADC);
}

void sub_0802169C(void)
{
    START_THREAD_030063E4(sub_080201B0);
}
