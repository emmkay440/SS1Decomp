#include "global.h"
#include "queue.h"
#include "thread.h"

u32 sub_08001F64(void);

// Same as sub_080294F4 (src/unk_080292D0.c), inlined here.
static inline struct Unknown_03006720 *FindQueueEntry(u32 kind)
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

// Marks the first pending kind 2 entry as handled (unkA bit 2), signals the
// queue event and returns the next pending one, if any. When
// sub_08001F64() is 0 it only signals the event.
struct Unknown_03006720 *sub_08028F6C(void)
{
    struct Unknown_03006720 *entry;

    if (sub_08001F64())
    {
        entry = FindQueueEntry(2);
        if (entry != NULL)
        {
            entry->unkA |= 4;
            SignalEvent(QUEUE_EVENT);
        }
        entry = FindQueueEntry(2);
    }
    else
    {
        SignalEvent(QUEUE_EVENT);
        entry = NULL;
    }
    return entry;
}

u32 sub_08001F98(void);

// The push functions return TRUE without queuing anything when
// sub_08001F98() is 0, and FALSE when the queue is full.

bool32 sub_0802901C(void)
{
    struct Unknown_03006720 *entry;

    if (!sub_08001F98())
        return TRUE;
    if (gUnknown_03006758 >= QUEUE_SIZE)
        return FALSE;
    entry = &gUnknown_03006720[gUnknown_03006758];
    gUnknown_03006758++;
    entry->unkA = 1;
    entry->unk8 = 0;
    entry->unk4.f.kind = 0;
    return TRUE;
}

bool32 sub_08029068(u32 value)
{
    struct Unknown_03006720 *entry;

    if (!sub_08001F98())
        return TRUE;
    if (gUnknown_03006758 >= QUEUE_SIZE)
        return FALSE;
    entry = &gUnknown_03006720[gUnknown_03006758];
    gUnknown_03006758++;
    entry->unkA = 1;
    entry->unk8 = 0;
    entry->unk4.f.kind = 5;
    entry->unk4.f.value = value;
    return TRUE;
}

bool32 sub_080290C4(u32 type, u32 arg, u32 *data)
{
    struct Unknown_03006720 *entry;

    if (sub_08001F98())
    {
        if (gUnknown_03006758 >= QUEUE_SIZE)
            return FALSE;
        entry = &gUnknown_03006720[gUnknown_03006758];
        gUnknown_03006758++;
        entry->unkA = 1;
        entry->unk8 = 0;
        entry->type = type;
        entry->arg = arg;
        if (data != NULL)
            entry->unk4.raw = *data;
        else
            entry->unk4.raw = 0;
        entry->unk4.f.kind = 7;
    }
    return TRUE;
}

bool32 sub_0802913C(u32 type, u32 arg, u32 *data)
{
    struct Unknown_03006720 *entry;

    if (!sub_08001F98())
        return TRUE;
    if (gUnknown_03006758 >= QUEUE_SIZE)
        return FALSE;
    entry = &gUnknown_03006720[gUnknown_03006758];
    gUnknown_03006758++;
    entry->unkA = 1;
    entry->unk8 = 0;
    entry->arg = arg;
    entry->type = type;
    entry->unk4.raw = *data;
    entry->unk4.f.kind = 6;
    return TRUE;
}

// Queues kind 2 and waits for the queue event.
bool32 sub_080291B0(u32 value)
{
    struct Unknown_03006720 *entry;

    if (!sub_08001F98())
        return TRUE;
    if (gUnknown_03006758 >= QUEUE_SIZE)
        return FALSE;
    entry = &gUnknown_03006720[gUnknown_03006758];
    gUnknown_03006758++;
    entry->unkA = 1;
    entry->unk8 = 0;
    entry->unk4.f.kind = 2;
    entry->unk4.f.value = value;
    gUnknown_030066E8 = 0;
    WaitEvent(QUEUE_EVENT);
    return TRUE;
}

bool32 sub_08029220(u32 value)
{
    if (sub_08001F98())
    {
        gUnknown_0300671C = value;
        gUnknown_030066E8 = 0;
        WaitEvent(QUEUE_EVENT);
    }
    return TRUE;
}

bool32 sub_08029250(void)
{
    bool32 result;

    if (sub_08001F98())
        result = IsAnyThreadWaitingOn(QUEUE_EVENT);
    else
        result = FALSE;
    return result;
}

// Queues kind 12 with `value` in the upper half of the kind byte and three
// more bytes.
bool32 sub_08029270(u32 value, u8 a, u8 b, u8 c)
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
    entry->unk4.k.kind = 12;
    entry->unk4.k.who = value;
    entry->unk4.bytes[1] = a;
    entry->unk4.bytes[2] = b;
    entry->unk4.bytes[3] = c;
    return TRUE;
}
