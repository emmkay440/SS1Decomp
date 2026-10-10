#include "global.h"
#include "heap.h"
#include "map.h"

extern void *gUnknown_03003C90[4];

u16 sub_0801702C(void);

// Resets the first map layer and allocates the three 0x800-byte buffers.
void sub_0800454C(void)
{
    u32 i;

    gUnknown_03003C90[0] = NULL;
    gMapLayer_03003910.entries[0].unk8 = 0;
    for (i = 1; i < 4; i++)
    {
        gUnknown_03003C90[i] = Alloc(0x800);
        gMapLayer_03003910.entries[i].unk8 = 0;
        gMapLayer_03003910.entries[i].unk4 = 0;
        gMapLayer_03003910.entries[i].unk6 = 0;
    }
    gMapLayer_03003910.tiles = NULL;
    gMapLayer_03003910.unk6C = 0;
    gMapLayer_03003910.unk68 = sub_0801702C();
}
