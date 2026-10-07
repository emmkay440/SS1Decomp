#include "global.h"
#include "heap.h"
#include "thread.h"

extern struct Thread gCharacterMenuThread;
extern struct Thread gUnknownThread_030064E0;
extern struct Thread gUnknownThread_030066B0;

void *sub_08001430(u32 size);
void CharacterMenuThread(void);
void sub_08025940(void);
void sub_080260E8(void);
void sub_08003518(u32 a, u32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);

void StartCharacterMenu(void)
{
    u8 *stack;

    gCharacterMenuThread.priority = 52;
    stack = sub_08001430(0x800);
    gCharacterMenuThread.stack = stack;
    gCharacterMenuThread.entry = CharacterMenuThread;
    gCharacterMenuThread.sp = stack + 0x7FC;
    gCharacterMenuThread.onExit = NULL;
    CreateThread(&gCharacterMenuThread);
}

void sub_08026FD0(void)
{
    u8 *stack;

    if (!IsThreadInList(&gUnknownThread_030064E0))
    {
        gUnknownThread_030064E0.priority = 60;
        stack = sub_08001430(0x200);
        gUnknownThread_030064E0.stack = stack;
        gUnknownThread_030064E0.entry = sub_08025940;
        gUnknownThread_030064E0.sp = stack + 0x1FC;
        gUnknownThread_030064E0.onExit = NULL;
        CreateThread(&gUnknownThread_030064E0);
    }
}

void sub_08027010(void)
{
    u8 *stack;

    if (!IsThreadInList(&gUnknownThread_030066B0))
    {
        gUnknownThread_030066B0.priority = 60;
        stack = Alloc(0x200);
        gUnknownThread_030066B0.stack = stack;
        gUnknownThread_030066B0.entry = sub_080260E8;
        gUnknownThread_030066B0.sp = stack + 0x1FC;
        gUnknownThread_030066B0.onExit = NULL;
        CreateThread(&gUnknownThread_030066B0);
    }
}

bool32 sub_08027050(void)
{
    if (IsThreadInList(&gCharacterMenuThread))
        return TRUE;
    return FALSE;
}

struct Unknown_0802706C
{
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u8 unkC[0x10];
    u8 unk1C[4];
};

void sub_0802706C(struct Unknown_0802706C *p, u32 a, u32 b, u16 c, u16 d, u8 e)
{
    sub_08003518(a, b, c, d, e, p->unk1C, p->unk8, p->unk0);
}
