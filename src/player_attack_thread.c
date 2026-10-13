#include "global.h"
#include "player.h"
#include "thread.h"

// The player object (Player.unkD0) as this function accesses it: the word
// at +4 through byte and word loads.
struct PlayerObj
{
    u32 unk0;
    u32 state:4;
    u32 layer:6;
    u32 kind:2;        // sub_080102C4() of the player's console
    u32 hits:3;        // extra repeats
    u32 unk15:8;       // low byte of sub_0802C174(2)
    u32 unk23:9;
};

#define PLAYER_OBJ(player) ((struct PlayerObj *)(player)->unkD0)

u32 sub_080102C4(void);
u16 sub_0802C174(u16 range);
void sub_0802D49C(u32 who, u32 arg);

// Thread started by sub_0800C09C for a player whose object is in state 5
// (`kind` is 1 or 2): calls sub_0802D49C, then, each time the player's
// unk76 becomes nonzero while the object stays in state 5, does it again
// (up to `hits` more times, never for kind 2). On the player's own console
// each repeat refreshes the object's kind and unk15, puts the player back
// in state 5 and counts unk7C up. Afterwards waits for unk76 or the end of
// state 5, then up to 10 more frames of state 5, and puts the player in
// state 0 (own console, unless the object is in state 7).
// (What the states and unk76 mean isn't known; probably an attack combo.)
void sub_0800BF50(u32 playerId, u16 kind)
{
    struct Player *player = &gPlayers[playerId];
    u32 count = PLAYER_OBJ(player)->hits;
    u32 n;
    u32 i;

    count++;
    if (PLAYER_OBJ(player)->state == 5)
        sub_0802D49C(player->facing, kind);
    n = 0;
    while (PLAYER_OBJ(player)->state == 5)
    {
        if (player->unk76 != 0)
        {
            if (kind == 2)
                break;
            if (GetMultiplayerId() == playerId)
            {
                PLAYER_OBJ(player)->kind = sub_080102C4();
                PLAYER_OBJ(player)->unk15 = sub_0802C174(2);
                player->state = 5;
                player->unk7C++;
            }
            WaitFrame();
            WaitFrame();
            player->unk72 = 0;
            player->unk76 = 0;
            player->unk74 = 0;
            sub_0802D49C(player->facing, kind);
            n++;
            if (n >= count)
                break;
        }
        WaitFrame();
    }
    while (player->unk76 == 0 && PLAYER_OBJ(player)->state == 5)
    {
        if (GetMultiplayerId() == playerId)
            player->state = 5;
        WaitFrame();
    }
    for (i = 0; i < 10 && PLAYER_OBJ(player)->state == 5; i++)
        WaitFrame();
    if (GetMultiplayerId() == playerId && PLAYER_OBJ(player)->state != 7)
        player->state = 0;
    player->unk12 = 0;
    player->unk14 = 0;
}
