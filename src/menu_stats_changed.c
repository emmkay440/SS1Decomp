#include "global.h"
#include "menu.h"
#include "player_stats.h"

extern struct StatBlock *gMenuStatBlock;

void sub_08016E4C(void *dest);

extern struct SkillBlock *gMenuSkillBlock;

// TRUE if the menu changed the stat (slot type 7) or skill that `slot`
// points at. Another stat index returns nothing (as in the original).
u32 sub_0803F9D4(struct MenuSlotBytes *slot)
{
    struct StatBlock stats;
    u8 unused[12];
    struct SkillBlock skills;

    sub_08016E4C(unused);
    GetStatBlock(&stats);
    GetSkillBlock(&skills);
    if (slot->type == 7)
    {
        switch (slot->subSlot)
        {
        case 0:
            if ((s16)stats.str != (s16)gMenuStatBlock->str)
                return TRUE;
            return FALSE;
        case 1:
            if ((s16)stats.dex != (s16)gMenuStatBlock->dex)
                return TRUE;
            return FALSE;
        case 2:
            if ((s16)stats.int_ != (s16)gMenuStatBlock->int_)
                return TRUE;
            return FALSE;
        case 3:
            if ((s16)stats.vit != (s16)gMenuStatBlock->vit)
                return TRUE;
            return FALSE;
        }
    }
    else
    {
        if (skills.skills[slot->subSlot].unk2 != gMenuSkillBlock->skills[slot->subSlot].unk2
            || skills.skills[slot->subSlot].level != gMenuSkillBlock->skills[slot->subSlot].level)
            return TRUE;
        return FALSE;
    }
}

// TRUE if the menu's copy of the four stats differs from the real ones.
bool32 sub_0803FA9C(void)
{
    struct StatBlock stats;
    u8 unused[12];

    sub_08016E4C(unused);
    GetStatBlock(&stats);
    if ((s16)stats.str != (s16)gMenuStatBlock->str)
        return TRUE;
    if ((s16)stats.dex != (s16)gMenuStatBlock->dex)
        return TRUE;
    if ((s16)stats.int_ != (s16)gMenuStatBlock->int_)
        return TRUE;
    if ((s16)stats.vit != (s16)gMenuStatBlock->vit)
        return TRUE;
    return FALSE;
}
