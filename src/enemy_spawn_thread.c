#include "global.h"
#include "enemy.h"
#include "heap.h"
#include "thread.h"

// What a spawn thread is started with (copied into gUnknown_03004998).
struct SpawnRecord
{
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;          // bits 14-21: enemy type; 0 = no uniqueness check
};                     // size 16

extern struct Thread *gUnknown_03005DA0;       // 16 threads
extern u16 gUnknown_03005DD4;                  // which of them run
extern struct SpawnRecord *gUnknown_03004998;  // their records

void sub_0800EAD8(void);

// Starts a sub_0800EAD8 thread for the record in a free slot. Returns 0,
// -1 if all 16 slots are taken, or -2 if the record's enemy type is
// already active or being started.
s32 sub_0800C7D4(struct SpawnRecord *record)
{
    u16 slot = 0;
    u32 type;
    s32 bits;
    s32 one;
    u32 i;
    struct Enemy *enemy;

    bits = gUnknown_03005DD4;
    one = 1;
    while (bits & one)
    {
        if (++slot > 15)
            return -1;
        bits = gUnknown_03005DD4 >> slot;
    }
    if (slot > 15)
        return -1;
    gUnknown_03004998[slot] = *record;
    type = (u8)(gUnknown_03004998[slot].unkC >> 14);
    if (type != 0)
    {
        enemy = gEnemies;
        for (i = 0; i < MAX_ENEMIES; i++, enemy++)
        {
            if ((gActiveEnemyMask & (1 << i)) && enemy->type == type)
                goto taken;
        }
        for (i = 0; i < 16; i++)
        {
            if (((gUnknown_03005DD4 >> i) & 1) && (gUnknown_03004998[i].unkC << 10) >> 24 == type)
                goto taken;
        }
    }
    if (0)
    {
    taken:
        return -2;
    }
    gUnknown_03005DA0[slot].entry = sub_0800EAD8;
    gUnknown_03005DA0[slot].stack = Alloc(0x200);
    gUnknown_03005DA0[slot].sp = (u8 *)gUnknown_03005DA0[slot].stack + 0x1FC;
    gUnknown_03005DA0[slot].priority = ((record->unkC << 10) >> 24) + 0x96;
    gUnknown_03005DA0[slot].prev = NULL;
    gUnknown_03005DA0[slot].next = NULL;
    gUnknown_03005DA0[slot].onExit = NULL;
    CreateThread(&gUnknown_03005DA0[slot], slot);
    gUnknown_03005DD4 |= 1 << slot;
    return 0;
}
