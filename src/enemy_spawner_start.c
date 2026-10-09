#include "global.h"
#include "heap.h"
#include "thread.h"

extern struct Thread *gSpawnerThreads;

void EnemySpawnerThread(void);

// Waits for spawner slot `slot` to be free, then starts EnemySpawnerThread
// on it.
void StartEnemySpawner(u32 slot, u32 arg)
{
    while (IsThreadInList(&gSpawnerThreads[slot]))
        WaitFrame();
    gSpawnerThreads[slot].entry = EnemySpawnerThread;
    gSpawnerThreads[slot].stack = Alloc(0x800);
    gSpawnerThreads[slot].sp = (u8 *)gSpawnerThreads[slot].stack + 0x7FC;
    gSpawnerThreads[slot].priority = 0x46;
    gSpawnerThreads[slot].onExit = NULL;
    CreateThread(&gSpawnerThreads[slot], slot, arg);
}
