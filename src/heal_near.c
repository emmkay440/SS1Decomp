#include "global.h"
#include "player.h"

// What Player.unkD0 points to, as far as this function reads it.
struct PlayerUnkD0
{
    u16 unk0_0:7;
    u16 x:9;
    u16 unk2_0:3;
    u16 y:9;
} __attribute__((packed, aligned(2)));

// Adds amount to the local player's HP (capped at maxHp) if it is alive
// and close to player id's unkD0 position (always, if id is the local
// player).
void sub_08016C34(u32 id, s32 amount)
{
    struct Player *player = &gPlayers[GetMultiplayerId()];
    struct Player *other = &gPlayers[id];
    s16 x = (player->x << 1) >> 16;
    s16 y = (player->y << 1) >> 16;
    struct PlayerUnkD0 *pos = other->unkD0;
    s16 otherX = pos->x;
    s16 otherY = pos->y;
    s32 d;

    // The distances reuse x and otherY.
    d = x - otherX;
    if (d < 0)
        d = -d;
    x = d;
    d = y - otherY;
    if (d < 0)
        d = -d;
    otherY = d;

    if (player == other)
    {
        if (player->hp > 0)
            player->hp += amount;
    }
    else
    {
        if (x <= 13 && otherY <= 9 && player->hp > 0)
            player->hp += amount;
    }
    if (player->hp > player->maxHp)
        player->hp = player->maxHp;
}
