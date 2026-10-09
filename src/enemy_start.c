#include "global.h"
#include "enemy.h"
#include "heap.h"
#include "thread.h"

extern struct Thread gEnemyThreads[];   // one per enemy slot (name is a guess)

s32 sub_0800E934(void);
void sub_080364C0(void);

// Takes a free enemy slot and starts sub_080364C0 for it; FALSE if there's
// no free slot.
bool32 sub_08036D28(void)
{
    s32 slot = sub_0800E934();
    struct Enemy *enemy;

    if (slot < 0)
        return FALSE;
    gActiveEnemyMask |= 1 << slot;
    enemy = &gEnemies[slot];
    enemy->slot = slot;
    enemy->unk2C = slot << 24;
    gEnemyThreads[slot].entry = sub_080364C0;
    gEnemyThreads[slot].stack = Alloc(0x800);
    gEnemyThreads[slot].sp = (u8 *)gEnemyThreads[slot].stack + 0x7FC;
    gEnemyThreads[slot].priority = 0x3C;
    gEnemyThreads[slot].prev = NULL;
    gEnemyThreads[slot].next = NULL;
    CreateThread(&gEnemyThreads[slot], enemy);
    return TRUE;
}
