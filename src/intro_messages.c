#include "global.h"
#include "player.h"
#include "player_stats.h"
#include "thread.h"

struct Unknown_0802292C;

u32 sub_08007670(void);
u32 sub_08007544(void);
u32 sub_080074F0(void);
void sub_0800F53C(void);
bool32 sub_0800F298(void);
struct Unknown_0802292C *StartMessageWindow(u32 a, u32 b, u32 c, u32 d, s32 e, u32 text);
bool32 sub_0802294C(struct Unknown_0802292C *p);

// Thread: holds the local player (unk10 bit 0) and, the first time (bit 2
// of the flags at gPlayerStats +0x272 is clear), waits for the fade to
// finish and shows messages 0x900E6-0x900E8 one after the other, then sets
// the bit. Gives up as soon as sub_08007670() is nonzero.
void sub_0801CC68(void)
{
    struct Unknown_0802292C *window;

    if (!(gPlayerStats.unk272.flags & 4) || sub_080074F0())
        sub_0800F53C();
    gPlayers[GetMultiplayerId()].unk10 |= 1;
    if (!(gPlayerStats.unk272.flags & 4))
    {
        while (!sub_0800F298())
        {
            if (sub_08007670())
                return;
            WaitFrame();
        }
        window = StartMessageWindow(1, 14, 25, 2, -1, 0x900E6);
        do
        {
            if (sub_08007670())
                return;
            WaitFrame();
        } while (!sub_0802294C(window) && sub_08007544());
        window = StartMessageWindow(1, 14, 25, 2, -1, 0x900E7);
        do
        {
            if (sub_08007670())
                return;
            WaitFrame();
        } while (!sub_0802294C(window) && sub_08007544());
        window = StartMessageWindow(1, 14, 25, 2, -1, 0x900E8);
        do
        {
            if (sub_08007670())
                return;
            WaitFrame();
        } while (!sub_0802294C(window) && sub_08007544());
        gPlayerStats.unk272.flags |= 4;
    }
    gPlayers[GetMultiplayerId()].unk10 &= ~1;
}
