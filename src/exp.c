#include "global.h"
#include "player_stats.h"

u32 GetExpToNextLevel(void)
{
    u32 i = gPlayerStats.level - 1;

    return gExpTable[i] - gPlayerStats.exp;
}

// Returns TRUE on a level up (+4 stat points, +1 skill point).
bool32 AddExp(struct PlayerStats *stats, u32 amount)
{
    u32 level = stats->level;

    if (level < MAX_LEVEL)
    {
        stats->exp += amount;
        if (stats->exp >= gExpTable[level - 1])
        {
            stats->level = level + 1;
            stats->statPoints += 4;
            stats->skillBlock.points++;
            return TRUE;
        }
    }
    return FALSE;
}
