#include "global.h"
#include "heap.h"
#include "player.h"
#include "thread.h"

// See player_skill_threads.c; this one also has a class-3 entry.
extern struct Thread gUnknownThreads_030044E0[];
extern struct Player gPlayers[MAX_PLAYERS];

u32 GetMultiplayerId(void);
u32 sub_080102C4(void);
void sub_0800BE2C(void);
void sub_0800C304(void);
void sub_0800C374(void);

void sub_0800BE8C(void)
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
    case 3:
        gUnknownThreads_030044E0[me].entry = sub_0800BE2C;
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
