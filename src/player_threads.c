#include "global.h"
#include "heap.h"
#include "player.h"
#include "thread.h"

extern struct Thread gUnknownThread_03006680;
extern struct Thread gUnknownThread_030066B0;
extern struct Player gPlayers[MAX_PLAYERS];
extern u32 gUnknown_030064D8;

void *sub_08001430(u32 size);
u32 sub_08001EC4(void);
bool32 sub_08007604(void);
u32 GetMultiplayerId(void);
void sub_080270D8(void);
void sub_08025BFC(void);
void sub_080265A0(void);

// The player object as seen here (gPlayers[i].unkD0).
struct PlayerObj
{
    u8 unk0[4];
    u8 state:4;
    u8 unk4_4:4;
    u8 unk5_0:4;
    u8 subState:4;
};

void sub_08027140(s32 a, s32 b)
{
    if (!IsThreadInList(&gUnknownThread_03006680))
    {
        gUnknownThread_03006680.priority = 0x3C;
        gUnknownThread_03006680.stack = sub_08001430(0x200);
        gUnknownThread_03006680.entry = sub_080270D8;
        gUnknownThread_03006680.sp = (u8 *)gUnknownThread_03006680.stack + 0x1FC;
        gUnknownThread_03006680.onExit = NULL;
        CreateThread(&gUnknownThread_03006680, a, b);
    }
}

void sub_08027188(s32 unused, u16 arg)
{
    if (!IsThreadInList(&gUnknownThread_030066B0))
    {
        gUnknownThread_030066B0.priority = 0x3C;
        gUnknownThread_030066B0.stack = Alloc(0x400);
        gUnknownThread_030066B0.entry = sub_08025BFC;
        gUnknownThread_030066B0.sp = (u8 *)gUnknownThread_030066B0.stack + 0x3FC;
        gUnknownThread_030066B0.onExit = NULL;
        CreateThread(&gUnknownThread_030066B0, arg);
    }
}

// TRUE if gUnknown_030064D8 or sub_08007604() is set, or a player's object
// is in state 9 with sub-state 12-14.
bool32 sub_080271D0(void)
{
    u32 i;
    struct PlayerObj *obj;
    u8 state;

    if (gUnknown_030064D8 || sub_08007604())
        return TRUE;
    for (i = 0; i < sub_08001EC4(); i++)
    {
        obj = gPlayers[i].unkD0;
        state = obj->state;
        if (state == 9 && obj->subState - 12u <= 2)
            return TRUE;
    }
    return FALSE;
}

void sub_08027228(void)
{
    if (!IsThreadInList(&gUnknownThread_030066B0))
    {
        gPlayers[GetMultiplayerId()].unk10 |= 0x80;
        gUnknownThread_030066B0.priority = 0x3C;
        gUnknownThread_030066B0.stack = sub_08001430(0x400);
        gUnknownThread_030066B0.entry = sub_080265A0;
        gUnknownThread_030066B0.sp = (u8 *)gUnknownThread_030066B0.stack + 0x3FC;
        gUnknownThread_030066B0.onExit = NULL;
        CreateThread(&gUnknownThread_030066B0);
    }
}
