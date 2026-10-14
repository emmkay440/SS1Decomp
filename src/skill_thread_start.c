#include "global.h"
#include "player.h"
#include "thread.h"

extern vu32 gUnknown_030067F0[4];
extern struct Thread *gUnknown_030067C0[4];

void *sub_08001430(u32 size);
void sub_0802F0B4(void);
void sub_08029C44(void);
void sub_0802A0FC(void);
void sub_0802A60C(void);
void sub_0802AB94(void);
void sub_0802B134(void);
void sub_0802B638(void);
void sub_0802BA34(void);
void sub_0802BD2C(void);

// The 4-bit field at bit 13 of PlayerInfo's second word.
struct PlayerInfoWords
{
    u32 unk0;
    u32 unk4_0:13;
    u32 kind:4;
    u32 unk4_17:15;
};

// Starts player `who`'s action thread in a free slot of its pool; which
// one depends on the kind in its PlayerInfo (0-7). The thread gets (who,
// slot) and calls sub_0802F0B4 when it ends.
void sub_0802BFB0(u32 who)
{
    struct Player *player = &gPlayers[who];
    u32 i = 0;

    while (gUnknown_030067F0[who] & (1 << i))
    {
        if (++i > 15)
            return;
    }
    if (i > 15)
        return;
    gUnknown_030067C0[who][i].priority = 0x34;
    gUnknown_030067C0[who][i].stack = sub_08001430(0x800);
    switch (((struct PlayerInfoWords *)player->unkD0)->kind)
    {
    case 0:
        gUnknown_030067C0[who][i].entry = sub_08029C44;
        break;
    case 1:
        gUnknown_030067C0[who][i].entry = sub_0802A0FC;
        break;
    case 2:
        gUnknown_030067C0[who][i].entry = sub_0802A60C;
        break;
    case 3:
        gUnknown_030067C0[who][i].entry = sub_0802AB94;
        break;
    case 4:
        gUnknown_030067C0[who][i].entry = sub_0802B134;
        break;
    case 6:
        gUnknown_030067C0[who][i].entry = sub_0802B638;
        break;
    case 5:
        gUnknown_030067C0[who][i].entry = sub_0802BA34;
        break;
    case 7:
        gUnknown_030067C0[who][i].entry = sub_0802BD2C;
        break;
    }
    gUnknown_030067C0[who][i].sp = (u8 *)gUnknown_030067C0[who][i].stack + 0x7FC;
    gUnknown_030067C0[who][i].onExit = sub_0802F0B4;
    CreateThread(&gUnknown_030067C0[who][i], who, i);
    gUnknown_030067F0[who] |= 1 << i;
}
