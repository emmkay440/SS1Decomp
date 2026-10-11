#include "global.h"
#include "queue.h"

u32 sub_08001F98(void);

// Queues kind 10 with four packed values (8, 16, 1 and 3 bits).
bool32 sub_080274BC(u32 type, u32 arg, u32 unk20, u32 a, u32 b, u32 c, u32 d)
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
    entry->unk20 = unk20;
    entry->type = type;
    entry->unk4.f.kind = 10;
    entry->unk4.o.unk4 = a;
    entry->unk4.o.unk12 = b;
    entry->unk4.o.unk28 = c;
    entry->unk4.o.unk29 = d;
    return TRUE;
}

extern u32 gUnknown_030066E0;      // next id for kind 15 entries

// Queues a field item (*data is its item word and more). With `flag` set
// the entry is kind 9 and keeps `type`; otherwise it is kind 15 and gets the
// next id from gUnknown_030066E0. (What the two kinds mean is unknown.)
bool32 SpawnFieldItem(u32 type, u32 arg, u32 unk20, u32 *data, u32 flag)
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
        entry->arg = arg;
        entry->unk20 = unk20;
        entry->unk4.raw = *data;
        if (flag)
        {
            entry->type = type;
            entry->unk4.f.kind = 9;
        }
        else
        {
            entry->type = gUnknown_030066E0++;
            entry->unk4.f.kind = 15;
        }
    }
    return TRUE;
}
