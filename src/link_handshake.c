#include "global.h"

#define LINK_ACTIVE (1 << 1)

struct LinkEntry
{
    u8 unk0[0x8];
    u8 tag0;           // +0x08 handshake: 'O' 'K' ...
    u8 tag1;
    u8 tag2;
    u8 tag3;
    u8 unkC[0x4];
};

extern u32 gLinkStatus;
extern u32 gUnknown_030030C4;
extern struct LinkEntry gUnknown_030030B0;
extern struct LinkEntry gUnknown_03003100[4];

static inline u32 IsLinkActive(void)
{
    return (gLinkStatus >> 1) & 1;
}

static inline u32 IsLinkMaster(void)
{
    if (gLinkStatus & LINK_ACTIVE)
        return (gUnknown_030030C4 >> 7) & 1;
    return 1;
}

static inline u32 GetLinkId(void)
{
    u32 id;

    if (gLinkStatus & LINK_ACTIVE)
        id = (*(vu32 *)REG_ADDR_SIOCNT << 26) >> 30;
    else
        id = 0;
    return id;
}

static inline struct LinkEntry *GetLinkEntry(u32 id)
{
    u32 myId;
    u32 i;

    if (gLinkStatus & LINK_ACTIVE)
        myId = (*(vu32 *)REG_ADDR_SIOCNT << 26) >> 30;
    else
        myId = 0;

    for (i = 0; i < 4; i++)
    {
        if (id == i)
        {
            if (i == myId)
                return &gUnknown_030030B0;
            return &gUnknown_03003100[i];
        }
    }
    return NULL;
}

static inline u32 GetLinkPlayerCount(void)
{
    u32 i;
    u32 count;

    if (IsLinkActive())
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

bool32 sub_08001B78(u8 tag)
{
    struct LinkEntry *entry;
    u32 id;
    u32 count;
    u32 players;
    u32 i;

    if (IsLinkActive())
    {
        if (IsLinkMaster())
        {
            count = 0;
            players = GetLinkPlayerCount();
            for (i = 1; i < players; i++)
            {
                entry = GetLinkEntry(i);
                do  // FAKE (maybe a macro, decomp-permuter): only matches inside a do/while(0)
                {
                    if (((u8 *)entry)[8] == 'O' && ((u8 *)entry)[9] == 'K' && ((u8 *)entry)[10] == tag)
                        count++;
                } while (0);
            }
            if (count >= players - 1)
            {
                entry = GetLinkEntry(0);
                ((u8 *)entry)[8] = 'N';
                ((u8 *)entry)[9] = 'O';
                ((u8 *)entry)[10] = 'S';
                ((u8 *)entry)[11] = 'S';
                return FALSE;
            }
            entry = GetLinkEntry(0);
            ((u8 *)entry)[8] = 'O';
            ((u8 *)entry)[9] = 'K';
            ((u8 *)entry)[10] = 'S';
            ((u8 *)entry)[11] = tag;
        }
        else
        {
            id = GetLinkId();
            do  // FAKE (maybe a macro, decomp-permuter)
            {
                entry = GetLinkEntry(id);
                ((u8 *)entry)[8] = 'O';
                ((u8 *)entry)[9] = 'K';
                ((u8 *)entry)[10] = tag;
                entry = GetLinkEntry(0);
                if (((u8 *)entry)[8] != 'O' && ((u8 *)entry)[9] != 'K' && ((u8 *)entry)[10] != 'S'
                 && ((u8 *)entry)[11] != tag)
                    return FALSE;
            } while (0);
        }
    }
    return TRUE;
}
