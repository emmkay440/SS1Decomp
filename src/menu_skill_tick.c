#include "global.h"
#include "menu.h"
#include "player_stats.h"
#include "sound.h"

extern struct SkillBlock *gMenuSkillBlock;
extern struct MenuSlotBytes gMenuSelectedSlot;
extern u8 gUnknown_0300047A;

void sub_08016DC0(void);

extern struct StatBlock *gMenuStatBlock;
extern s8 gUnknown_030004C0;

u8 sub_0803FAFC(u8 stat);
void sub_080413F4(void);

// Puts one point into the stat or skill at `slot`. FALSE if there are no
// points left or it can't go higher (a skill stops at level 5). A skill
// whose pending points pass its level starts the level-up countdown.
bool32 sub_0803FC00(struct MenuSlotBytes *slot)
{
    if (slot->type == 7)
    {
        if (gMenuStatBlock->statPoints != 0 && !sub_0803FAFC(slot->subSlot))
        {
            gMenuStatBlock->statPoints--;
            switch (slot->subSlot)
            {
            case 0:
                gMenuStatBlock->str++;
                break;
            case 1:
                gMenuStatBlock->dex++;
                break;
            case 2:
                gMenuStatBlock->int_++;
                break;
            case 3:
                gMenuStatBlock->vit++;
                break;
            }
        }
        else
        {
            return FALSE;
        }
    }
    else
    {
        if (gMenuSkillBlock->skills[slot->subSlot].level <= 4 && gMenuSkillBlock->points != 0)
        {
            gMenuSkillBlock->points--;
            gMenuSkillBlock->skills[slot->subSlot].unk2++;
            if (gMenuSkillBlock->skills[slot->subSlot].level < gMenuSkillBlock->skills[slot->subSlot].unk2)
            {
                PlaySE(0x25);
                gUnknown_0300047A = 0x4B;
                gUnknown_030004C0 = slot->subSlot;
                gMenuSelectedSlot.subSlot = slot->subSlot;
            }
            else
            {
                sub_080413F4();
            }
        }
        else
        {
            return FALSE;
        }
    }
    return TRUE;
}

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
