#include "global.h"
#include "area_state.h"
#include "heap.h"
#include "queue.h"
#include "thread.h"

// Two threads (gUnknownThread_03006730 / _030066F0) that share a queue of
// 12-byte entries (gUnknown_03006720, gUnknown_03006758 of them), and a
// third thread (gUnknownThread_03006760).

extern struct Thread gUnknownThread_03006730;
extern struct Thread gUnknownThread_030066F0;
extern struct Thread gUnknownThread_03006760;

void sub_08027A90(void);
void sub_08027E40(void);
void sub_08028DB0(void);
void sub_08029468(void);

void sub_080292D0(void)
{
    gUnknown_030066E8 = 0;
}

void sub_080292DC(void)
{
    gUnknownThread_03006730.entry = sub_08027A90;
    gUnknownThread_03006730.stack = Alloc(0x400);
    gUnknownThread_03006730.sp = (u8 *)gUnknownThread_03006730.stack + 0x3FC;
    gUnknownThread_03006730.priority = 0x65;
    gUnknownThread_03006730.onExit = sub_08029468;
    CreateThread(&gUnknownThread_03006730);
    gUnknownThread_030066F0.entry = sub_08027E40;
    gUnknownThread_030066F0.stack = Alloc(0x400);
    gUnknownThread_030066F0.sp = (u8 *)gUnknownThread_030066F0.stack + 0x3FC;
    gUnknownThread_030066F0.priority = 0x65;
    gUnknownThread_030066F0.onExit = sub_08029468;
    CreateThread(&gUnknownThread_030066F0);
}

void sub_0802934C(u32 *flag, u8 arg)
{
    while (IsThreadInList(&gUnknownThread_03006760))
        WaitFrame();
    gUnknown_030063D8->unkDA = 0;
    *flag = 1;
    gUnknown_030066E8 = 1;
    gUnknownThread_03006760.entry = sub_08028DB0;
    gUnknownThread_03006760.stack = Alloc(0x400);
    gUnknownThread_03006760.sp = (u8 *)gUnknownThread_03006760.stack + 0x3FC;
    gUnknownThread_03006760.priority = 0x65;
    gUnknownThread_03006760.onExit = NULL;
    CreateThread(&gUnknownThread_03006760, flag, arg);
}

// Drops the first queue entry.
void sub_080293B4(void)
{
    u32 i;

    if ((s32)--gUnknown_03006758 < 0)
        gUnknown_03006758 = 0;
    for (i = 0; i < gUnknown_03006758; i++)
        gUnknown_03006720[i] = gUnknown_03006720[i + 1];
    gUnknown_03006720[i].unkA = 0;
}

// Waits until the queue has held at most one entry for 60 frames, then
// stops both queue threads.
void sub_08029418(void)
{
    u32 frames = 0;
    u32 count;

    do
    {
        count = gUnknown_03006758;
        frames++;
        if (count > 1)
            frames = 0;
        WaitFrame();
    } while (frames < 60);
    if (IsThreadInList(&gUnknownThread_03006730))
        KillThread(&gUnknownThread_03006730);
    if (IsThreadInList(&gUnknownThread_030066F0))
        KillThread(&gUnknownThread_030066F0);
}

// onExit of both queue threads
void sub_08029468(void)
{
    if (gUnknown_03006720 != NULL)
    {
        Free(gUnknown_03006720);
        gUnknown_03006720 = NULL;
    }
}

u32 sub_08001F98(void);

// Queues kind 14 with `who` in the upper half of the kind byte.
bool32 sub_08029484(u32 who, u32 type, u32 value)
{
    struct Unknown_03006720 *entry;

    if (!sub_08001F98())
        return TRUE;
    if (gUnknown_03006758 >= QUEUE_SIZE)
        return FALSE;
    entry = &gUnknown_03006720[gUnknown_03006758];
    gUnknown_03006758++;
    entry->unk8 = 0;
    entry->unkA = 1;
    entry->unk4.f.kind = 14;
    entry->unk4.k.who = who;
    entry->type = type;
    entry->unk4.bytes[1] = value;
    return TRUE;
}

// The first entry if its unkA has bit 0 set, else NULL. Nothing calls it.
struct Unknown_03006720 *sub_080294D8(void)
{
    struct Unknown_03006720 *entry = gUnknown_03006720;

    if (entry->unkA & 1)
        return entry;
    return NULL;
}

// The first entry of the given kind with unkA bits 0, 1 or 3 set and bit 2
// clear, or NULL.
struct Unknown_03006720 *sub_080294F4(u32 kind)
{
    struct Unknown_03006720 *entry = gUnknown_03006720;
    u32 i;

    for (i = 0; i < gUnknown_03006758; i++, entry++)
    {
        if ((entry->unkA & 0xB) && !(entry->unkA & 4) && entry->unk4.f.kind == kind)
            return entry;
    }
    return NULL;
}

// Like sub_080294D8, for bit 1. Nothing calls it.
struct Unknown_03006720 *sub_08029544(void)
{
    struct Unknown_03006720 *entry = gUnknown_03006720;

    if (entry->unkA & 2)
        return entry;
    return NULL;
}
