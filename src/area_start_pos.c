#include "global.h"
#include "area_state.h"

extern u16 gUnknown_0300397C;

// Copies a position from the first area entry of kind 0: its data is a
// list of 8-byte records, picked by unkCC[row * 15 + entry index].
// (Probably where the player starts; a guess.)
void sub_080216E0(u16 *x, u16 *y)
{
    struct AreaEntry *entry = gUnknown_030063D8->unk4;
    u32 count = ((struct AreaHeader *)gUnknown_030063D8->unk0)->entryCount;
    u32 i;

    for (i = 0; i < count; i++, entry++)
    {
        if (entry->kind == 0)
        {
            u8 index = gUnknown_030063D8->unkCC[i + gUnknown_0300397C * 15];
            struct AreaPos *pos = (struct AreaPos *)((u8 *)entry + entry->offset);

            *x = pos[index].x;
            *y = pos[index].y;
            return;
        }
    }
}
