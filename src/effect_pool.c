#include "global.h"
#include "heap.h"
#include "thread.h"

// A pool of 32 threads (gUnknown_030063C0) with an in-use mask
// (gUnknown_030063C4); the spawners take the first free slot and pass the
// position (fixed point >> 12) and the slot to the new thread. Effects or
// projectiles? (guess)

extern struct Thread *gUnknown_030063C0;
extern vu32 gUnknown_030063C4;  // volatile: the free-slot loop re-reads it (threads clear their bit?)

u16 Random(void);
void sub_08017E50(void);
void sub_08017F54(void);
void sub_08018058(void);
void sub_08018600(void);
void sub_08017D88(void);
void sub_08018148(void);

void sub_08018254(void)
{
    gUnknown_030063C0 = Alloc(32 * sizeof(struct Thread));
    gUnknown_030063C4 = 0;
}

void sub_08018278(void)
{
    Free(gUnknown_030063C0);
    gUnknown_030063C0 = NULL;
}

void sub_08018290(s32 x, s32 y)
{
    u32 i = 0;
    struct Thread *thread;
    u8 *stack;

    while (gUnknown_030063C4 & (1 << i))
    {
        if (++i > 31)
            return;
    }
    if (i > 31)
        return;
    thread = &gUnknown_030063C0[i];
    thread->entry = sub_08017E50;
    stack = Alloc(0x200);
    thread->stack = stack;
    thread->sp = stack + 0x1FC;
    thread->priority = 0x46;
    thread->onExit = NULL;
    CreateThread(thread, (x >> 12) | ((y >> 12) << 16), i);
    gUnknown_030063C4 |= 1 << i;
}

void sub_08018314(s32 x, s32 y)
{
    u32 i = 0;
    struct Thread *thread;
    u8 *stack;

    while (gUnknown_030063C4 & (1 << i))
    {
        if (++i > 31)
            return;
    }
    if (i > 31)
        return;
    thread = &gUnknown_030063C0[i];
    thread->entry = sub_08017F54;
    stack = Alloc(0x200);
    thread->stack = stack;
    thread->sp = stack + 0x1FC;
    thread->priority = 0x46;
    thread->onExit = NULL;
    CreateThread(thread, (x >> 12) | ((y >> 12) << 16), i);
    gUnknown_030063C4 |= 1 << i;
}

void sub_08018398(s32 x, s32 y)
{
    u32 i = 0;
    struct Thread *thread;
    u8 *stack;

    while (gUnknown_030063C4 & (1 << i))
    {
        if (++i > 31)
            return;
    }
    if (i > 31)
        return;
    thread = &gUnknown_030063C0[i];
    thread->entry = sub_08018058;
    stack = Alloc(0x200);
    thread->stack = stack;
    thread->sp = stack + 0x1FC;
    thread->priority = 0x46;
    thread->onExit = NULL;
    CreateThread(thread, (x >> 12) | ((y >> 12) << 16), i);
    gUnknown_030063C4 |= 1 << i;
}

// TRUE with a chance of (a + 10) * 125 / (a + b + 20) percent.
bool32 sub_0801841C(s16 a, s16 b)
{
    s16 chance = (a + 10) * 125 / (a + b + 20);
    s32 r = (s16)Random();
    u16 roll;

    if (r < 0)
        r = -r;
    roll = (u16)r % 100u;
    if (chance >= roll)
        return TRUE;
    return FALSE;
}

void sub_08018474(s32 x, s32 y)
{
    u32 i = 0;
    struct Thread *thread;
    u8 *stack;

    while (gUnknown_030063C4 & (1 << i))
    {
        if (++i > 31)
            return;
    }
    if (i > 31)
        return;
    thread = &gUnknown_030063C0[i];
    thread->entry = sub_08018600;
    stack = Alloc(0x200);
    thread->stack = stack;
    thread->sp = stack + 0x1FC;
    thread->priority = 0x46;
    thread->onExit = NULL;
    CreateThread(thread, (x >> 12) | ((y >> 12) << 16), i);
    gUnknown_030063C4 |= 1 << i;
}

void sub_080184F8(s32 x, s32 y)
{
    u32 i = 0;
    struct Thread *thread;
    u8 *stack;

    while (gUnknown_030063C4 & (1 << i))
    {
        if (++i > 31)
            return;
    }
    if (i > 31)
        return;
    thread = &gUnknown_030063C0[i];
    thread->entry = sub_08017D88;
    stack = Alloc(0x200);
    thread->stack = stack;
    thread->sp = stack + 0x1FC;
    thread->priority = 0x46;
    thread->onExit = NULL;
    CreateThread(thread, (x >> 12) | ((y >> 12) << 16), i);
    gUnknown_030063C4 |= 1 << i;
}

void sub_0801857C(s32 x, s32 y)
{
    u32 i = 0;
    struct Thread *thread;
    u8 *stack;

    while (gUnknown_030063C4 & (1 << i))
    {
        if (++i > 31)
            return;
    }
    if (i > 31)
        return;
    thread = &gUnknown_030063C0[i];
    thread->entry = sub_08018148;
    stack = Alloc(0x200);
    thread->stack = stack;
    thread->sp = stack + 0x1FC;
    thread->priority = 0x46;
    thread->onExit = NULL;
    CreateThread(thread, (x >> 12) | ((y >> 12) << 16), i);
    gUnknown_030063C4 |= 1 << i;
}
