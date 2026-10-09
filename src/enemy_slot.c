#include "global.h"
#include "enemy.h"

// First free enemy slot (0-4) in gActiveEnemyMask, or -1.
s32 sub_0800E934(void)
{
    s32 i;

    for (i = 0; i < 5; i++)
        if (!(gActiveEnemyMask & (1 << i)))
            return i;
    return -1;
}
