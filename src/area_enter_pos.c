#include "global.h"
#include "area_state.h"
#include "data_record.h"
#include "player.h"

extern const u32 gUnknown_080FB0F8[];   // first record; word 4 is its data record key

// Puts the local player at the area's entry position: the first kind 0
// position (unk0A = 5) when `back` is 0, else the position stored at +0x38
// of the kind 3 data (unk0A = 0). The pointers stay unset if the area has
// no such entry (as in the original).
void sub_08019300(u32 back)
{
    struct AreaHeader *header = GetDataRecord(gUnknown_080FB0F8[4]);
    struct AreaEntry *entry = (struct AreaEntry *)((u8 *)header + header->entriesOffset);
    u16 *kind3;
    u16 *kind0;
    u32 i;

    for (i = 0; i < header->entryCount; i++, entry++)
    {
        if (entry->kind == 3)
            kind3 = (u16 *)((u8 *)entry + entry->offset);
        if (entry->kind == 0)
            kind0 = (u16 *)((u8 *)entry + entry->offset);
    }
    if (back == 0)
    {
        gPlayers[GetMultiplayerId()].x = kind0[0] << 15;
        gPlayers[GetMultiplayerId()].y = kind0[1] << 15;
        gPlayers[GetMultiplayerId()].unk0A = 5;
    }
    else
    {
        gPlayers[GetMultiplayerId()].x = kind3[0x1C] << 15;
        gPlayers[GetMultiplayerId()].y = kind3[0x1D] << 15;
        gPlayers[GetMultiplayerId()].unk0A = 0;
    }
}
