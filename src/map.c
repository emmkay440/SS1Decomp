#include "global.h"
#include "map.h"

u32 sub_08007544(void);

void sub_08005F50(void)
{
    gMapLayer_03003910.flags |= 2;
}

void sub_08005F60(u16 a, u16 b)
{
    if (sub_08007544())
    {
        gMapLayer_03003C00.unk60 = a;
        gMapLayer_03003C00.unk62 = b;
    }
    else
    {
        gMapLayer_03003910.unk60 = a;
        gMapLayer_03003910.unk62 = b;
    }
}

void sub_08005F94(u16 i, u16 a, u16 b)
{
    if (!sub_08007544())
    {
        gMapLayer_03003910.entries[i].unk4 = a;
        gMapLayer_03003910.entries[i].unk6 = b;
    }
}
