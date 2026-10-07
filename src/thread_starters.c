#include "global.h"
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
