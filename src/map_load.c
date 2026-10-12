#include "global.h"
#include "data_record.h"
#include "heap.h"
#include "map.h"
#include "thread.h"

struct Unknown_080FB0F8
{
    u16 unk0;
    u8 unk2[0xE];
    u32 keys[20];      // +0x10 data record keys of the area's maps
};                     // size 0x60

extern const struct Unknown_080FB0F8 gUnknown_080FB0F8[];

void *LZ77DecompressAlloc(const u32 *src);

// Loads map `index` of the current area into the first layer. Bit 30 of
// the key means the map data isn't compressed.
void sub_080051B4(u32 index)
{
    gMapLayer_03003910.unk6C = index;
    gMapLayer_03003910.record = GetDataRecord(gUnknown_080FB0F8[gMapLayer_03003910.unk68].keys[index]);
    Free(gMapLayer_03003910.map);
    if (gUnknown_080FB0F8[gMapLayer_03003910.unk68].keys[gMapLayer_03003910.unk6C] & 0x40000000)
    {
        gMapLayer_03003910.map = (s16 *)(gMapLayer_03003910.record + 0x10);
    }
    else
    {
        do
        {
            gMapLayer_03003910.map = LZ77DecompressAlloc((u32 *)(gMapLayer_03003910.record + 0x10));
            WaitFrame();
        } while (gMapLayer_03003910.map == NULL);
    }
    gMapLayer_03003910.tiles = (u16 *)((u8 *)gMapLayer_03003910.map
        + (gMapLayer_03003910.map[0] * gMapLayer_03003910.map[1] * 6 + 0x10));
    gMapLayer_03003910.width = gMapLayer_03003910.map[0];
    gMapLayer_03003910.height = gMapLayer_03003910.map[1];
    gMapLayer_03003910.originY = 0;
    gMapLayer_03003910.originX = 0;
}
