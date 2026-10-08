#include "global.h"
#include "player_stats.h"

struct PlayerStats *GetPlayerStats(void)
{
    return &gPlayerStats;
}
