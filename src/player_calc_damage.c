#include "global.h"
#include "enemy.h"
#include "player.h"
#include "sound.h"

s16 Random(void);
int abs(int x);

// Damage of an enemy's hit on a player, at least 1. `stats` is the enemy's
// block of u16 values from unk64 on: [5] is its attack, the byte at +0x23
// the element of the attack (0 none, 1-3).
// One time in 31 the hit ignores defense: attack / 2 (the random part
// added to it is always 0: a value below 16 divided by 64).
// Otherwise base = (attack - DEF / 2) / 2 and damage = base + base *
// (0..15) / 32, or 1 if base isn't positive.
// An element scales the damage by (110 - resistance) / 60 and sets the
// player's status to it; for element 2 only with a chance of (70 -
// resistance) in 100 (sound 0x29), else the status is cleared.
u16 CalcDamageToPlayer(struct Enemy *enemy, struct Player *player)
{
    u16 *stats = &enemy->unk64;
    u16 damage;
    u8 element;

    if ((s16)((u16)Random() % 31) == 1)
    {
        s16 roll = Random();
        u16 attack = stats[5];

        damage = (attack >> 1) + ((attack * roll) & 0xF) / 64;
    }
    else
    {
        u16 roll = Random();
        s16 base = (stats[5] - player->defense / 2) / 2;

        if (base <= 0)
            damage = 1;
        else
            damage = base + (roll & 0xF) * base / 32;
    }
    element = ((u8 *)stats)[0x23];
    switch (element)
    {
    case 1:
        damage = (s16)damage * (110 - player->resist[0]) / 60;
        player->status = element;
        break;
    case 2:
        damage = (s16)damage * (110 - player->resist[1]) / 60;
        if ((s16)(70 - (u16)player->resist[1]) > abs(Random()) % 100)
        {
            player->status = element;
            PlaySE(0x29);
        }
        else
        {
            player->status = 0;
        }
        break;
    case 3:
        damage = (s16)damage * (110 - player->resist[2]) / 60;
        player->status = element;
        break;
    }
    if ((s16)damage <= 0)
        damage = 1;
    return damage;
}
