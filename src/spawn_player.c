#include "global.h"
#include "map.h"
#include "player.h"
#include "player_stats.h"
#include "thread.h"

// Where the player starts in an area, as far as SpawnPlayer reads it.
struct SpawnPoint
{
    u8 unk0[0x18];
    u16 x;             // +0x18 in tiles
    u16 y;             // +0x1A
};

// What Player.unkD0 points to: the position in pixels.
struct PlayerPixelPos
{
    u16 unk0_0:4;
    u16 x:12;
    u16 y:12;
    u16 unk2_12:4;
} __attribute__((packed, aligned(2)));

void sub_080191FC(struct Player *player, u32 arg);
void sub_08021000(void);
void sub_08007554(void);

// Puts the player at the area's start with full HP and SP, drops the
// category 7 items from the inventory and starts the field threads.
void SpawnPlayer(struct Player *player, struct SpawnPoint *spawn)
{
    u32 i;

    sub_080191FC(player, 1);
    player->layer = 0;
    player->x = spawn->x << 15;
    player->y = (spawn->y + 2) << 15;
    ((struct PlayerPixelPos *)player->unkD0)->x = player->x >> 12;
    ((struct PlayerPixelPos *)player->unkD0)->y = player->y >> 12;
    player->state = 0;
    player->pendingDamage[0] = 0;
    player->pendingDamage[1] = 0;
    player->unk0A = 4;
    gMapLayer_03003C00.originX = 0;
    gMapLayer_03003C00.originY = ((struct PlayerPixelPos *)player->unkD0)->y;
    player->hp = player->maxHp;
    player->sp = player->maxSp;
    for (i = 0; i < INVENTORY_SIZE; i++)
    {
        if (gPlayerStats.inventory[i].category == 7)
            gPlayerStats.inventory[i].category = 0;
    }
    for (i = 0; i < 3; i++)
        player->unk1C[i] = 0;
    sub_08021000();
    gMapLayer_03003910.flags |= 0xC;
    SignalEvent(0x514C9);
    sub_08007554();
}
