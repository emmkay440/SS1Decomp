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

// Position relative to the layer's origin.
bool32 sub_08005FC4(u16 x, s16 y, s16 *outX, s16 *outY, u32 unused, u32 second)
{
    s16 sx;

    if (second)
    {
        sx = x;
        *outX = sx - (s16)gMapLayer_03003C00.originX;
        *outY = (s16)y - (s16)gMapLayer_03003C00.originY;
    }
    else
    {
        sx = x;
        *outX = sx - (s16)gMapLayer_03003910.originX;
        *outY = (s16)y - (s16)gMapLayer_03003910.originY;
    }
    return TRUE;
}
