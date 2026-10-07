#include "global.h"
#include "player.h"
#include "player_stats.h"

struct EnemyExpInfo
{
    u16 level;
    u16 exp;
};

// EXP for defeating an enemy. Enemies below the player's level give less
// (min 1); each id 11 in the player's unk1C list (an equipped item?)
// doubles it.
s32 CalcExpGain(struct PlayerStats *stats, struct EnemyExpInfo *enemy)
{
    u32 id = GetMultiplayerId();
    u16 enemyLevel = enemy->level;
    s32 level = stats->level;
    s32 exp = enemy->exp;
    u16 *ids;
    s32 i;

    if (level > enemyLevel)
    {
        s32 t = level - 10;
        exp = (enemyLevel - t) * exp / 10;
        if (exp <= 0)
            exp = 1;
    }
    ids = *(&gPlayers[id].unk1C);
    for (i = 2; i >= 0; i--)
    {
        if (*ids == 11)
            exp <<= 1;
        ids++;
    }
    return exp;
}
