#include "global.h"
#include "enemy.h"

extern u32 gUnknown_03005DA8;      // in-use mask of gUnknown_03005DB0

// Counts record i's unk8 down; at 1 or 0 the record is cleared and freed.
void sub_0800CB84(u16 i)
{
    if (gUnknown_03005DA8 & (1 << i))
    {
        if (gUnknown_03005DB0[i].unk8 <= 1)
        {
            gUnknown_03005DB0[i].unk0 = 0;
            gUnknown_03005DB0[i].unk4 = 0;
            gUnknown_03005DB0[i].unk8 = 0;
            gUnknown_03005DA8 &= ~(1 << i);
        }
        else
        {
            gUnknown_03005DB0[i].unk8--;
        }
    }
}
