#include "global.h"
#include "heap.h"
#include "queue.h"

extern u32 gUnknown_030066E0;
extern u32 gUnknown_03006788;
extern u8 gUnknown_03006718[4];

u32 sub_08001F98(void);
void sub_080292DC(void);

// Allocates and clears the queue (only when sub_08001F98() is nonzero).
void sub_08027280(void)
{
    struct Unknown_03006720 *entry;
    u32 i;

    if (sub_08001F98())
    {
        gUnknown_03006720 = Alloc(QUEUE_SIZE * sizeof(struct Unknown_03006720));
        entry = gUnknown_03006720;
        for (i = 0; i < QUEUE_SIZE; i++, entry++)
        {
            entry->unkA = 0;
            entry->unk8 = 0;
            entry->arg = 0;
            entry->unk20 = 0;
            entry->type = 0;
            entry->unk4.f.kind = 0;
            entry->unk4.f.value = 0;
        }
        gUnknown_03006758 = 0;
        gUnknown_030066E0 = 0;
        gUnknown_03006788 = 1;
        for (i = 0; i < 4; i++)
            gUnknown_03006718[i] = 0;
        sub_080292DC();
    }
}

// Queues kind 3 for player `who` with two small values.
bool32 sub_08027318(u32 type, u32 arg, u32 unk20, u32 who, u32 a, u32 b)
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
    entry->unk4.k.kind = 3;
    entry->unk4.k.who = who;
    entry->unk4.n.unk8 = a;
    entry->unk4.n.unk14 = b;
    return TRUE;
}
