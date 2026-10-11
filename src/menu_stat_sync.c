#include "global.h"
#include "player_stats.h"

extern struct StatBlock *gMenuStatBlock;
extern u16 gMenuSavedStatPoints;

#include "menu.h"

extern struct SkillBlock *gMenuSkillBlock;
extern struct MenuSlotBytes gMenuSelectedSlot;

u8 sub_0803F9D4(struct MenuSlotBytes *slot);

// Takes back one point the menu put into the stat or skill at `slot`.
// FALSE if there is nothing to take back.
bool32 sub_0803FD3C(struct MenuSlotBytes *slot)
{
    if (!sub_0803F9D4(slot))
        return FALSE;
    if (slot->type == 7)
    {
        switch (slot->subSlot)
        {
        case 0:
            gMenuStatBlock->str--;
            break;
        case 1:
            gMenuStatBlock->dex--;
            break;
        case 2:
            gMenuStatBlock->int_--;
            break;
        case 3:
            gMenuStatBlock->vit--;
            break;
        }
        gMenuStatBlock->statPoints++;
    }
    else
    {
        if (gMenuSkillBlock->skills[slot->subSlot].unk2 == 0
            && gMenuSkillBlock->skills[slot->subSlot].level == 0)
            return FALSE;
        gMenuSkillBlock->points++;
        if (gMenuSkillBlock->skills[slot->subSlot].unk2 != 0)
        {
            gMenuSkillBlock->skills[slot->subSlot].unk2--;
        }
        else
        {
            gMenuSkillBlock->skills[slot->subSlot].level--;
            gMenuSkillBlock->skills[slot->subSlot].unk2 = gMenuSkillBlock->skills[slot->subSlot].level;
            gMenuSelectedSlot.subSlot = slot->subSlot;
        }
    }
    return TRUE;
}

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
