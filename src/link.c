#include "global.h"
#include "heap.h"
#include "thread.h"

// Link cable (multiplayer) state. Bit 1 of gLinkStatus means link play is
// active; most other bits are unknown.
#define LINK_ACTIVE (1 << 1)

struct LinkEntry
{
    u8 unk0[0x10];
};

extern u32 gLinkStatus;
extern u32 gUnknown_030030C4;
extern struct LinkEntry gUnknown_030030B0;
extern struct LinkEntry gUnknown_03003100[4];
extern struct Thread gUnknownThread_030030D0;

void sub_08001A00(void);

void sub_08001DF8(void)
{
    gLinkStatus = 0x80000000;
}

void sub_08001E08(void)
{
    u8 *stack;

    gUnknownThread_030030D0.entry = sub_08001A00;
    stack = Alloc(0x400);
    gUnknownThread_030030D0.stack = stack;
    gUnknownThread_030030D0.sp = stack + 0x3FC;
    gUnknownThread_030030D0.priority = 1;
    gUnknownThread_030030D0.onExit = NULL;
    CreateThread(&gUnknownThread_030030D0, 0);
}

void sub_08001E40(void)
{
    gLinkStatus |= 0x40000000;
}

u32 GetMultiplayerId(void)
{
    u32 id;

    if (!(gLinkStatus & LINK_ACTIVE))
        id = 0;
    else
        id = (*(vu32 *)REG_ADDR_SIOCNT << 26) >> 30;
    return id;
}

// The link entry for player `id` (the local player's own copy for itself).
struct LinkEntry *sub_08001E78(u32 id)
{
    u32 myId;
    u32 i;
    struct LinkEntry *entry;

    if (gLinkStatus & LINK_ACTIVE)
        myId = (*(vu32 *)REG_ADDR_SIOCNT << 26) >> 30;
    else
        myId = 0;
    i = 0;
    entry = gUnknown_03003100;
    for (; i < 4; i++)
    {
        if (id == i)
        {
            if (i == myId)
                return &gUnknown_030030B0;
            return entry;
        }
        entry++;
    }
    return NULL;
}

// Number of connected players (1 without link).
u32 sub_08001EC4(void)
{
    u32 i;
    u32 count;

    if ((gLinkStatus >> 1) & 1)
    {
        for (i = 0, count = 0; i < 4; i++)
        {
            if (gUnknown_030030C4 & (0x100 << i))
                count++;
        }
    }
    else
        count = 1;
    return count;
}

u32 sub_08001F08(void)
{
    u32 status = gLinkStatus;

    if (status & LINK_ACTIVE)
        return (status >> 3) & 1;
    return 0;
}

void sub_08001F24(void)
{
    gLinkStatus |= 4;
}

void sub_08001F34(void)
{
    gLinkStatus &= ~4;
}

u32 sub_08001F48(void)
{
    u32 status = gLinkStatus;

    if (status & LINK_ACTIVE)
        return (status >> 4) & 1;
    return 0;
}

u32 sub_08001F64(void)
{
    if (gLinkStatus & LINK_ACTIVE)
        return (gUnknown_030030C4 >> 7) & 1;
    return 1;
}

u32 sub_08001F88(void)
{
    return gLinkStatus & 1;
}

u32 sub_08001F98(void)
{
    return (gLinkStatus >> 1) & 1;
}

void sub_08001FA8(void)
{
    u32 status = gLinkStatus;

    if (status & LINK_ACTIVE)
    {
        gLinkStatus = status & ~8;
        SignalEvent(8000);
    }
}
