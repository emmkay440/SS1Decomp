#include "global.h"
#include "multi_sio.h"
#include "player.h"
#include "thread.h"

struct LinkEntry
{
    u8 unk0[0x10];
};

extern u32 gLinkStatus;
extern u32 gUnknown_030030C0;
extern u32 gUnknown_030030C4;
extern struct LinkEntry gUnknown_030030B0;
extern struct LinkEntry gUnknown_03003100[4];

u32 sub_08001EC4(void);

// Link thread (started by sub_08001E08). Runs MultiSio every frame until
// bit 30 of gLinkStatus is set: first until 60 frames had one of the bits
// 9-11 of the state set (other players connected), then, with bit 1 of
// gLinkStatus set (link active), it counts for every other player the
// frames in which that player is missing or bit 12 is set (which also sets
// bit 4 of gLinkStatus). After more than 60 such frames in a row: if bit 2
// of gLinkStatus is set, sets bit 3 and waits on event 8000; else the
// count starts again. At the end stops MultiSio and sets gLinkStatus to
// 0x80000000.
void sub_08001A00(void)
{
    u32 counts[4];
    u32 i;
    u32 id;

    MultiSioInit();
    gLinkStatus = 1;
    gUnknown_030030C4 = 0;
    for (i = 0; i < 4; i++)
        counts[i] = 0;
    while (counts[0] < 60)
    {
        WaitFrame();
        if (gLinkStatus & 0x40000000)
            break;
        gUnknown_030030C0 = gUnknown_030030C4;
        gUnknown_030030C4 = MultiSioMain(&gUnknown_030030B0, gUnknown_03003100);
        MultiSioStart();
        if (gUnknown_030030C4 & 0xE00)
            counts[0]++;
    }
    counts[0] = 0;
    gLinkStatus |= 2;
    id = GetMultiplayerId();
    while (!(gLinkStatus & 0x40000000))
    {
        WaitFrame();
        gUnknown_030030C0 = gUnknown_030030C4;
        gUnknown_030030C4 = MultiSioMain(&gUnknown_030030B0, gUnknown_03003100);
        for (i = 0; i < sub_08001EC4(); i++)
        {
            if (i != id)
            {
                if (!(gUnknown_030030C4 & (1 << i)) || (gUnknown_030030C4 & 0x1000))
                {
                    counts[i]++;
                    gLinkStatus |= 0x10;
                }
                else
                {
                    counts[i] = 0;
                }
            }
        }
        for (i = 0; i < sub_08001EC4(); i++)
        {
            if (i != id && counts[i] > 60)
            {
                if (gLinkStatus & 4)
                {
                    gLinkStatus |= 8;
                    WaitEvent(8000);
                    break;
                }
                counts[i] = 0;
            }
        }
        MultiSioStart();
    }
    MultiSioStop();
    gLinkStatus = 0x80000000;
    gUnknown_030030C4 = 0;
    ThreadExit();
}
