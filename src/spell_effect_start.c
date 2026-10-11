#include "global.h"
#include "heap.h"
#include "thread.h"

// Arguments of a spell effect thread (sub_080298C0), one per pool slot.
struct SpellEffectArgs
{
    s16 x;            // pixels
    s16 y;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 slot;
};

extern vu32 gUnknown_03006800;                    // in-use mask of the pool
extern struct Thread *gUnknown_03006790;          // pool of 32 threads
extern struct SpellEffectArgs *gUnknown_03006808; // their arguments

void sub_080298C0(void);

// Starts a spell effect thread at (x, y) (fixed point) in a free slot.
void StartSpellEffect(s32 x, s32 y, u32 c, u16 d, u16 e)
{
    struct SpellEffectArgs *args;
    u32 i = 0;

    while (gUnknown_03006800 & (1 << i))
    {
        if (++i > 31)
            return;
    }
    if (i > 31)
        return;
    args = &gUnknown_03006808[i];
    args->x = x >> 12;
    args->y = y >> 12;
    args->unk8 = c;
    args->slot = i;
    args->unk4 = d;
    args->unk6 = e;
    gUnknown_03006790[i].priority = 0x34;
    gUnknown_03006790[i].stack = sub_08001430(0x400);
    gUnknown_03006790[i].entry = sub_080298C0;
    gUnknown_03006790[i].sp = (u8 *)gUnknown_03006790[i].stack + 0x3FC;
    gUnknown_03006790[i].onExit = NULL;
    CreateThread(&gUnknown_03006790[i], args);
    gUnknown_03006800 |= 1 << i;
}
