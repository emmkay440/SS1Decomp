#include "global.h"
#include "enemy.h"
#include "heap.h"
#include "thread.h"

extern struct Thread *gUnknown_03005DA0;   // 16 threads, gUnknown_03005DD4 marks the running ones
extern u16 gUnknown_03005DD4;
extern void *gUnknown_03004998;
extern struct Thread gEnemyThreads[];

void sub_0802F100(u32 slot);

// Kills the area's threads and enemy threads and frees their buffers.
void sub_0800C46C(void)
{
    u16 i;

    for (i = 0; i < 16; i++)
        if ((gUnknown_03005DD4 >> i) & 1)
            KillThread(&gUnknown_03005DA0[i]);
    for (i = 0; i < 5; i++)
    {
        if (gActiveEnemyMask & (1 << i))
            KillThread(&gEnemyThreads[i]);
        sub_0802F100(i);
    }
    Free(gUnknown_03005DA0);
    Free(gEnemies);
    Free(gUnknown_03004998);
    gUnknown_03005DA0 = NULL;
    gEnemies = NULL;
    gUnknown_03004998 = NULL;
}
