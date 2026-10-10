#include "global.h"
#include "map.h"

// 0x60-byte records indexed by gMapLayer_03003910.unk68.
struct Unknown_080FB0F8
{
    u16 unk0;
    u8 unk2[0x5E];
};

extern const struct Unknown_080FB0F8 gUnknown_080FB0F8[];

// TRUE if unk6C is the record's unk0 - 2 (the last of something?).
bool32 sub_08006114(void)
{
    if (gUnknown_080FB0F8[gMapLayer_03003910.unk68].unk0 - 2 == gMapLayer_03003910.unk6C)
        return TRUE;
    return FALSE;
}
