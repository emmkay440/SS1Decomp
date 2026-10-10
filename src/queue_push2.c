#include "global.h"
#include "queue.h"

u32 sub_08001F98(void);

// Queues kind 1 with `value` unless the queue already holds one.
bool32 sub_08027700(u32 value)
{
    struct Unknown_03006720 *entry;
    u32 count;
    u32 i;

    if (sub_08001F98())
    {
        if (gUnknown_03006758 >= QUEUE_SIZE)
            return FALSE;
        entry = gUnknown_03006720;
        count = 0;
        for (i = 0; i < gUnknown_03006758; i++, entry++)
        {
            if (entry->unkA != 0)
            {
                u32 kind = entry->unk4.k.kind;

                if (kind == 1 && entry->unk4.f.value == value)
                    count++;
            }
        }
        if (count == 0)
        {
            entry = &gUnknown_03006720[gUnknown_03006758];
            gUnknown_03006758++;
            entry->unk8 = 0;
            entry->unkA = 1;
            entry->unk4.f.kind = 1;
            entry->unk4.f.value = value;
        }
    }
    return TRUE;
}

// Queues kind 11 for player `who` (as a bit) with three small values.
bool32 sub_08027790(u32 who, u32 a, u32 b, u32 c)
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
    entry->unk4.k.kind = 11;
    entry->unk4.k.who = 1 << who;
    entry->unk4.m.unk8 = a;
    entry->unk4.m.unk12 = b;
    entry->unk4.m.unk20 = c;
    return TRUE;
}
