#include "global.h"
#include "player_stats.h"

u32 sub_080102C4(void);
u16 sub_08016EDC(void);

// TRUE if the skill picked for the player's class (sub_080102C4, or
// sub_08016EDC for class 1) has at least one point. Skill numbers are
// 1-based; 0 = none.
bool32 sub_08016CE0(void)
{
    u32 skill;

    switch ((u8)(gPlayerStats.classAndColor >> 2))
    {
    case 0:
    case 2:
    case 3:
        skill = sub_080102C4();
        if (skill != 0)
        {
            if (gPlayerStats.skillBlock.skills[skill - 1].level != 0)
                return TRUE;
            return FALSE;
        }
        break;
    case 1:
        skill = sub_08016EDC();
        if (skill != 0 && gPlayerStats.skillBlock.skills[skill - 1].level != 0)
            return TRUE;
        break;
    }
    return FALSE;
}
