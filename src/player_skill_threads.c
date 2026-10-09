#include "global.h"
#include "heap.h"
#include "player.h"
#include "thread.h"

// One thread per player at gUnknownThreads_030044E0 (skill/attack
// effects? sub_080102C4 picks the entry).
extern struct Thread gUnknownThreads_030044E0[];
extern struct Player gPlayers[MAX_PLAYERS];

u32 GetMultiplayerId(void);
u32 sub_080102C4(void);
void sub_0800BF50(void);
void sub_0800C304(void);
void sub_0800C374(void);

struct PlayerObjC
{
    u8 unk0[5];
    u8 unk5_0:2;
    u8 kind:2;          // 1 or 2 start sub_0800BF50
    u8 unk5_4:4;
};

// Both cases set the same entry; written as in sub_0800C140 (separate
// cases, setup after the switch) to match.
void sub_0800C09C(u32 player)
{
    if (IsThreadInList(&gUnknownThreads_030044E0[player]))
        return;
    switch (((struct PlayerObjC *)gPlayers[player].unkD0)->kind)
    {
    case 1:
        gUnknownThreads_030044E0[player].entry = sub_0800BF50;
        break;
    case 2:
        gUnknownThreads_030044E0[player].entry = sub_0800BF50;
        break;
    default:
        return;
    }
    gUnknownThreads_030044E0[player].priority = 0x34;
    gUnknownThreads_030044E0[player].stack = Alloc(0x400);
    gUnknownThreads_030044E0[player].sp = (u8 *)gUnknownThreads_030044E0[player].stack + 0x3FC;
    gUnknownThreads_030044E0[player].onExit = NULL;
    CreateThread(&gUnknownThreads_030044E0[player], player,
                 ((struct PlayerObjC *)gPlayers[player].unkD0)->kind);
}

void sub_0800C140(void)
{
    u32 me = GetMultiplayerId();

    if (IsThreadInList(&gUnknownThreads_030044E0[me]))
    {
        gPlayers[me].state = 0;
        return;
    }
    switch (sub_080102C4())
    {
    case 1:
        gUnknownThreads_030044E0[me].entry = sub_0800C304;
        break;
    case 2:
        gUnknownThreads_030044E0[me].entry = sub_0800C374;
        break;
    default:
        return;
    }
    gUnknownThreads_030044E0[me].priority = 0x34;
    gUnknownThreads_030044E0[me].stack = Alloc(0x400);
    gUnknownThreads_030044E0[me].sp = (u8 *)gUnknownThreads_030044E0[me].stack + 0x3FC;
    gUnknownThreads_030044E0[me].onExit = NULL;
    CreateThread(&gUnknownThreads_030044E0[me]);
}
