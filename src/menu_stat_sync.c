#include "global.h"
#include "player_stats.h"

extern struct StatBlock *gMenuStatBlock;
extern u16 gMenuSavedStatPoints;

// Copies what can change while the menu is open (EXP, level, unkA-unkE)
// into the menu's stat block and adds stat points gained since it opened.
struct StatBlock *sub_0803FE1C(void)
{
    struct StatBlock stats;

    GetStatBlock(&stats);
    gMenuStatBlock->exp = stats.exp;
    gMenuStatBlock->level = stats.level;
    gMenuStatBlock->unkA = stats.unkA;
    gMenuStatBlock->unkC = stats.unkC;
    gMenuStatBlock->unkE = stats.unkE;
    if (gMenuSavedStatPoints != stats.statPoints)
    {
        gMenuStatBlock->statPoints += stats.statPoints - gMenuSavedStatPoints;
        gMenuSavedStatPoints = stats.statPoints;
    }
    return gMenuStatBlock;
}
