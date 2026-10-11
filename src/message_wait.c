#include "global.h"
#include "player.h"
#include "thread.h"

struct Unknown_0802292C;

u32 sub_08007670(void);
u32 sub_08007544(void);
void sub_08005F60(u16 a, u16 b);
bool32 sub_0800F298(void);
bool32 sub_0800F430(void);
s16 Random(void);
struct Unknown_0802292C *StartMessageWindow(u32 a, u32 b, u32 c, u32 d, s32 e, u32 text);
bool32 sub_0802294C(struct Unknown_0802292C *p);

// Holds the local player (unk10 bit 0) while a fade finishes, shows one of
// three random messages (0x900D8-0x900DA) and waits for its window to
// close. Gives up as soon as sub_08007670() is nonzero.
void sub_0801CB88(void)
{
    struct Unknown_0802292C *window;
    s32 which;
    u32 text;

    gPlayers[GetMultiplayerId()].unk10 |= 1;
    while (!sub_0800F298() || !sub_0800F430())
    {
        if (sub_08007670())
            return;
        sub_08005F60(0, 0);
        WaitFrame();
    }
    which = (s16)(Random() % 3);
    if (which < 0)
        which = -which;
    text = which + 0x900D8;
    window = StartMessageWindow(1, 14, 25, 2, -1, text);
    do
    {
        if (sub_08007670())
            return;
        gPlayers[GetMultiplayerId()].unk10 |= 1;
        sub_08005F60(0, 0);
        WaitFrame();
    } while (!sub_0802294C(window) && sub_08007544());
    gPlayers[GetMultiplayerId()].unk10 &= ~1;
}
