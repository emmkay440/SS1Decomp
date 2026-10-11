#include "global.h"
#include "heap.h"
#include "player.h"
#include "thread.h"

// Allocation of the per-character effect thread pools (started by
// src/item_use_effect.c and others): gUnknown_030067C0 / gUnknown_030067D0
// hold 16 threads per character, gUnknown_03006790 and gUnknown_03006804
// 32 shared ones.

extern vu32 gUnknown_030067F0[4];
extern struct Thread *gUnknown_030067C0[4];
extern vu32 gUnknown_030067A0[];
extern struct Thread *gUnknown_030067D0[];
extern vu32 gUnknown_03006800;
extern struct Thread *gUnknown_03006790;
extern void *gUnknown_03006808;
extern u32 gUnknown_030067B4;
extern struct Thread *gUnknown_03006804;

struct Unknown_080FBB84
{
    u32 unk0;
    u16 cost[6];
};

extern const struct Unknown_080FBB84 gUnknown_080FBB84[];

s16 sub_0801076C(void);

void sub_0802DC18(void);
void sub_0802E224(void);
void sub_0802E824(void);

// Starts one of three effect threads for character `who` in a free slot of
// its second pool. The thread gets (who, arg << 16 | slot).
void sub_0802EEA8(u32 who, u32 kind, u32 arg)
{
    u32 i = 0;

    while (gUnknown_030067A0[who] & (1 << i))
    {
        if (++i > 15)
            return;
    }
    if (i > 15)
        return;
    gUnknown_030067D0[who][i].priority = 0x34;
    switch (kind)
    {
    case 0:
        gUnknown_030067D0[who][i].entry = sub_0802DC18;
        break;
    case 1:
        gUnknown_030067D0[who][i].entry = sub_0802E224;
        break;
    case 2:
        gUnknown_030067D0[who][i].entry = sub_0802E824;
        break;
    }
    gUnknown_030067D0[who][i].stack = Alloc(0x400);
    gUnknown_030067D0[who][i].sp = (u8 *)gUnknown_030067D0[who][i].stack + 0x3FC;
    gUnknown_030067D0[who][i].onExit = NULL;
    CreateThread(&gUnknown_030067D0[who][i], who, (arg << 16) | i);
    gUnknown_030067A0[who] |= 1 << i;
}

void sub_0802EF7C(u32 who)
{
    struct Thread **shared;
    void **buffer;

    gUnknown_030067F0[who] = 0;
    gUnknown_03006800 = 0;
    gUnknown_030067C0[who] = Alloc(16 * sizeof(struct Thread));
    if (who == 0)
    {
        shared = &gUnknown_03006790;
        *shared = Alloc(32 * sizeof(struct Thread));
        buffer = &gUnknown_03006808;
        *buffer = Alloc(0x180);
    }
}

// Waits for the pools' first threads to finish and frees them.
void sub_0802EFD4(u32 who)
{
    if (gUnknown_030067C0[who] != NULL)
        while (IsThreadInList(gUnknown_030067C0[who]))
            WaitFrame();
    Free(gUnknown_030067C0[who]);
    gUnknown_030067C0[who] = NULL;
    if (gUnknown_03006790 != NULL)
        while (IsThreadInList(gUnknown_03006790))
            WaitFrame();
    Free(gUnknown_03006790);
    Free(gUnknown_03006808);
    gUnknown_03006790 = NULL;
    gUnknown_03006808 = NULL;
}

// SP cost check: the table cost for (kind, level), plus the bonus 0x14
// total when level isn't 0. Returns cost + 1 if the local player has the
// SP, else 0.
s16 sub_0802F058(u32 kind, u32 level)
{
    struct Player *player = &gPlayers[GetMultiplayerId()];
    s16 cost = gUnknown_080FBB84[kind].cost[level];

    if (level != 0)
        cost += sub_0801076C();
    if (player->sp - cost < 0)
        return 0;
    return cost + 1;
}

void sub_0802F0B4(void)
{
}

void sub_0802F0B8(u32 who)
{
    gUnknown_030067A0[who] = 0;
    gUnknown_030067B4 = 0;
    gUnknown_030067D0[who] = Alloc(16 * sizeof(struct Thread));
    if (who == 0)
        gUnknown_03006804 = Alloc(32 * sizeof(struct Thread));
}

void sub_0802F100(u32 who)
{
    if (gUnknown_030067D0[who] != NULL)
        while (IsThreadInList(gUnknown_030067D0[who]))
            WaitFrame();
    if (gUnknown_03006804 != NULL)
        while (IsThreadInList(gUnknown_03006804))
            WaitFrame();
    Free(gUnknown_030067D0[who]);
    Free(gUnknown_03006804);
    gUnknown_030067D0[who] = NULL;
    gUnknown_03006804 = NULL;
}
