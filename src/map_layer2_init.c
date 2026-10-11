#include "global.h"
#include "data_record.h"
#include "heap.h"
#include "map.h"
#include "thread.h"

extern u32 gUnknown_080FB0F8[];         // first record; word 4 is its data record key
extern struct Thread gUnknownThread_03003BA0;

void sub_080045C8(u8 *record, u32 arg);
void sub_080055F8(void);
void *LZ77DecompressAlloc(const u32 *src);

// Sets up the second map layer from the first area record and starts its
// thread. Bit 30 of the key means the map data isn't compressed.
bool32 sub_08004EF8(void)
{
    gMapLayer_03003C00.unk68 = 0;
    gMapLayer_03003C00.unk6C = 0;
    gMapLayer_03003C00.record = GetDataRecord(gUnknown_080FB0F8[4]);
    sub_080045C8(gMapLayer_03003C00.record, 0);
    if (gUnknown_080FB0F8[4] & 0x40000000)
        gMapLayer_03003C00.map = (s16 *)(gMapLayer_03003C00.record + 0x10);
    else
        gMapLayer_03003C00.map = LZ77DecompressAlloc((u32 *)(gMapLayer_03003C00.record + 0x10));
    gMapLayer_03003C00.tiles = (u16 *)((u8 *)gMapLayer_03003C00.map
        + (gMapLayer_03003C00.map[0] * gMapLayer_03003C00.map[1] * 6 + 0x10));
    gMapLayer_03003C00.width = gMapLayer_03003C00.map[0];
    gMapLayer_03003C00.height = gMapLayer_03003C00.map[1];
    gMapLayer_03003C00.flags = 0;
    gMapLayer_03003C00.originX = 0;
    gMapLayer_03003C00.originY = 0;
    gUnknownThread_03003BA0.entry = sub_080055F8;
    gUnknownThread_03003BA0.stack = Alloc(0x400);
    gUnknownThread_03003BA0.sp = (u8 *)gUnknownThread_03003BA0.stack + 0x3FC;
    gUnknownThread_03003BA0.priority = 0x50;
    gUnknownThread_03003BA0.onExit = NULL;
    CreateThread(&gUnknownThread_03003BA0, 0);
    return TRUE;
}
