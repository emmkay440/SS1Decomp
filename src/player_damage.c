#include "global.h"
#include "player.h"

bool32 IsAnyThreadWaitingOn(u32 event);
bool32 sub_08007544(void);
bool32 sub_08007604(void);
bool32 sub_08007638(void);
bool32 sub_080077C0(void);

// Takes the pending damage off hp. Returns TRUE if the player died.
// While sub_08007638() is set (and nothing waits on event 3000) the damage
// is capped so hp stays at 1.
bool32 ApplyPendingDamage(struct Player *player)
{
    if (player->state == 9 || sub_08007604() || sub_080077C0())
    {
        player->pendingDamage[0] = 0;
        player->pendingDamage[1] = 0;
    }
    if (!IsAnyThreadWaitingOn(3000) && sub_08007638())
    {
        if (player->hp - player->pendingDamage[0] - player->pendingDamage[1] <= 0)
        {
            player->pendingDamage[0] = player->hp - 1;
            player->pendingDamage[1] = 0;
        }
    }
    if (!sub_08007604() && !sub_08007544())
    {
        player->hp -= player->pendingDamage[0];
        player->hp -= player->pendingDamage[1];
        player->pendingDamage[0] = 0;
        player->pendingDamage[1] = 0;
        if ((player->hp & 0x8000) || player->hp == 0)
        {
            player->hp = 0;
            return TRUE;
        }
    }
    return FALSE;
}
