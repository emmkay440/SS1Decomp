#include "global.h"
#include "display.h"
#include "data_record.h"

extern u16 gUnknown_03005DE0;      // text layer: first changed row (text_layer.c)
extern u32 *gUnknown_03006340[];   // the category 8 data records

u32 sub_08002E18(u32 category);

// Marks `row` and below as changed.
void sub_0800EE44(u32 row)
{
    if (gUnknown_03005DE0 > row)
        gUnknown_03005DE0 = row;
}

// Looks up every category 8 record and loads palette 31 from the first one
// (at +0x1E0 + its second word).
void sub_0800EE58(void)
{
    u32 count = sub_08002E18(8);
    u32 i;
    u32 *record;
    u32 palettes;

    for (i = 0; i < count; i++)
        gUnknown_03006340[i] = GetDataRecord(i | 0x80000);
    record = gUnknown_03006340[0];
    palettes = (u32)record + 0x1E0;
    LoadPalette(31, (void *)(record[1] + palettes), 1);
}
