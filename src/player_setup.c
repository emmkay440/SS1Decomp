#include "global.h"
#include "enemy.h"
#include "heap.h"
#include "player.h"
#include "player_stats.h"
#include "thread.h"

extern struct Thread gPlayerThreads[MAX_PLAYERS];  // (guess)
extern u8 gUnknown_03004030[0x480];                // the local player's thread stack

void *sub_08001E78(u32 id);
void sub_080077D0(void);
// Both take a struct Player * (src/stats.c), but this file passed the
// struct by value: r0-r3 get its first 16 bytes and the rest is copied to
// the stack. The callees read r0 as the pointer, so the original had this
// bug too.
void sub_0801574C(struct Player player);
void sub_08016270(struct Player player);

// Sets up player `id`: its PlayerInfo link entry, the unk1C / unk20 /
// unkC8 buffers and its thread (sub_080077D0, priority 49 with a static
// stack for the local player, 50 with an allocated one for the others).
// The local player also gets gPlayerStats and its stats recomputed.
void sub_0800AF90(u16 id)
{
    u8 *stack;
    struct Player *player;
    u32 i;

    gPlayers[id].unkD0 = sub_08001E78(id);
    gPlayers[id].facing = id;
    if (id != GetMultiplayerId())
    {
        gPlayers[id].state = 10;
        gPlayerThreads[id].priority = 50;
        stack = Alloc(0x480);
        gPlayerThreads[id].stack = stack;
        gPlayers[id].unkC8 = NULL;
        gPlayers[id].unkC4 = NULL;
    }
    else
    {
        gPlayers[id].stats = &gPlayerStats;
        gPlayers[id].state = 0;
        gPlayerThreads[id].priority = 49;
        stack = gUnknown_03004030;
        gPlayerThreads[id].stack = NULL;
        gPlayers[id].unkC8 = Alloc(5 * sizeof(struct Enemy));
        gPlayers[id].unkC4 = Alloc(10);
    }
    gPlayers[id].unk1C = Alloc(6);
    gPlayers[id].unk20 = Alloc(3 * sizeof(struct PlayerStatusRec));
    for (i = 0; i < 5; i++)
        gPlayers[id].unkC8[i].slot |= 0xFFFF;
    for (i = 0; i < 3; i++)
    {
        gPlayers[id].unk1C[i] = 0;
        gPlayers[id].unk20[i].unk0[0] = 0;
        gPlayers[id].unk20[i].unk0[1] = 0;
        gPlayers[id].unk20[i].unk0[2] = 0;
        gPlayers[id].unk20[i].unk0[3] = 0;
        gPlayers[id].unk20[i].unk0[4] = 0;
        gPlayers[id].unk20[i].unk0[5] = 0;
        gPlayers[id].unk20[i].unk0[6] = 0;
        gPlayers[id].unk20[i].unk0[7] = 0;
        gPlayers[id].unk24[i] = 0;
    }
    player = &gPlayers[id];
    player->unkC2 = 0;
    if (id == GetMultiplayerId())
    {
        sub_0801574C(*player);
        sub_08016270(*player);
    }
    gPlayerThreads[id].entry = sub_080077D0;
    gPlayerThreads[id].sp = stack + 0x47C;
    gPlayerThreads[id].onExit = NULL;
    CreateThread(&gPlayerThreads[id], player);
}
