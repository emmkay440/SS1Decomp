#include "global.h"
#include "data_record.h"
#include "heap.h"
#include "map.h"
#include "thread.h"

struct Unknown_080FB0F8
{
    u16 unk0;          // number of maps?
    u8 unk2[0xE];
    u32 keys[20];      // +0x10 data record keys of the area's maps
};                     // size 0x60

// Not const: the code reads a key again after a call.
extern struct Unknown_080FB0F8 gUnknown_080FB0F8[];
extern struct Thread gUnknownThread_03003BD0;
extern u8 gUnknown_030039A0[0x200];     // its stack

void sub_080045C8(u32 *record, u32 area);
void sub_08005278(void);
void *LZ77DecompressAlloc(const u32 *src);

// Sets up the first map layer from map `index` of `area` and starts its
// thread. Returns FALSE if the layer is busy. Bit 30 of the key means the
// map data isn't compressed.
bool32 sub_08004DE0(u32 area, u32 index)
{
    s16 *map;

    if ((gMapLayer_03003910.flags & 1) || IsThreadInList(&gUnknownThread_03003BD0))
        return FALSE;
    gUnknownThread_03003BD0.entry = sub_08005278;
    gUnknownThread_03003BD0.sp = gUnknown_030039A0 + 0x1FC;
    gUnknownThread_03003BD0.stack = NULL;
    gUnknownThread_03003BD0.priority = 0x50;
    gUnknownThread_03003BD0.onExit = NULL;
    gMapLayer_03003910.unk68 = area;
    gMapLayer_03003910.unk6C = index;
    gMapLayer_03003910.record = GetDataRecord(gUnknown_080FB0F8[area].keys[index]);
    sub_080045C8(gMapLayer_03003910.record, area);
    if (gUnknown_080FB0F8[area].keys[index] & 0x40000000)
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
    map = gMapLayer_03003910.map;
    gMapLayer_03003910.tiles = (u16 *)((u8 *)map + (map[0] * map[1] * 6 + 0x10));
    // The last map of area 8 is cut to 20 rows. (The do/while is needed
    // for the register allocation; probably a macro in the original.)
    do
    {
        if (area == 8 && gUnknown_080FB0F8[8].unk0 - 1 == index)
            map[1] = 20;
    } while (0);
    gMapLayer_03003910.width = map[0];
    gMapLayer_03003910.height = map[1];
    gMapLayer_03003910.flags = 0;
    gMapLayer_03003910.originX = 0;
    gMapLayer_03003910.originY = 0;
    CreateThread(&gUnknownThread_03003BD0);
    return TRUE;
}
