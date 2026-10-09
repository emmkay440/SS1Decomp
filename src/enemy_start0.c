#include "global.h"
#include "enemy.h"
#include "heap.h"
#include "thread.h"

extern struct Thread gEnemyThreads[];

// sub_0800E934, inlined
static inline s32 FindFreeEnemySlotInline(void)
{
    s32 i;

    for (i = 0; i < 5; i++)
        if (!(gActiveEnemyMask & (1 << i)))
            return i;
    return -1;
}

// Like sub_08036D28 (enemy_start.c), with the entry given: takes a free
// enemy slot and starts `entry` for it; FALSE if there's none.
bool32 sub_0800C720(void (*entry)(void))
{
    s32 slot = FindFreeEnemySlotInline();
    struct Enemy *enemy;

    if (slot < 0)
        return FALSE;
    gActiveEnemyMask |= 1 << slot;
    enemy = &gEnemies[slot];
    enemy->slot = slot;
    enemy->unk2C = slot << 24;
    gEnemyThreads[slot].entry = entry;
    gEnemyThreads[slot].stack = Alloc(0x800);
    gEnemyThreads[slot].sp = (u8 *)gEnemyThreads[slot].stack + 0x7FC;
    gEnemyThreads[slot].priority = 0x3C;
    gEnemyThreads[slot].prev = NULL;
    gEnemyThreads[slot].next = NULL;
    gEnemyThreads[slot].onExit = NULL;
    CreateThread(&gEnemyThreads[slot], enemy);
    return TRUE;
}
