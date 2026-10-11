#include "global.h"
#include "enemy.h"

extern u32 gUnknown_03005DA8;      // in-use mask of gUnknown_03005DB0

// Finds the record for (a, b) and adds a reference, or sets one up in a
// free slot. Returns its index, or 0xFFFF if all three are taken.
u16 sub_0800CAC0(u32 a, u16 b)
{
    u32 i;

    for (i = 0; i < 3; i++)
    {
        if ((gUnknown_03005DA8 & (1 << i)) && gUnknown_03005DB0[i].unk0 == a && gUnknown_03005DB0[i].unk4 == b)
        {
            gUnknown_03005DB0[i].unk8++;
            return i;
        }
    }
    for (i = 0; i < 3; i++)
    {
        if (!(gUnknown_03005DA8 & (1 << i)))
        {
            gUnknown_03005DB0[i].unk0 = a;
            gUnknown_03005DB0[i].unk4 = b;
            gUnknown_03005DB0[i].unk8 = 1;
            gUnknown_03005DA8 |= 1 << i;
            return i;
        }
    }
    return 0xFFFF;
}

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
