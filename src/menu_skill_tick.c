#include "global.h"
#include "menu.h"
#include "player_stats.h"

extern struct SkillBlock *gMenuSkillBlock;
extern struct MenuSlotBytes gMenuSelectedSlot;
extern u8 gUnknown_0300047A;

void sub_08016DC0(void);

// Counts gUnknown_0300047A down; when it reaches 0, raises the selected
// skill by one level in the menu's copy and recomputes the derived stats.
// Returns FALSE if the counter wasn't running.
bool32 sub_0803FCD8(void)
{
    struct SkillBlock skills;

    if (gUnknown_0300047A != 0)
    {
        if (--gUnknown_0300047A == 0)
        {
            gMenuSkillBlock->skills[gMenuSelectedSlot.subSlot].level++;
            gMenuSkillBlock->skills[gMenuSelectedSlot.subSlot].unk2 = 0;
            GetSkillBlock(&skills);
            SetSkillBlock(gMenuSkillBlock);
            sub_08016DC0();
            SetSkillBlock(&skills);
        }
        return TRUE;
    }
    return FALSE;
}
