#include "global.h"
#include "enemy.h"

// Returns TRUE if the enemy died.
bool32 ApplyEnemyDamage(struct Enemy *enemy)
{
    enemy->hp -= enemy->pendingDamage;
    enemy->pendingDamage = 0;
    if ((enemy->hp & 0x8000) || enemy->hp == 0)
    {
        enemy->state = ENEMY_STATE_DEAD;
        enemy->hp = 0;
        return TRUE;
    }
    return FALSE;
}
