#include "global.h"
#include "player_stats.h"

extern struct StatBlock *gMenuStatBlock;

void sub_08016E4C(void *dest);

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
