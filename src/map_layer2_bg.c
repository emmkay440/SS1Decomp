#include "global.h"
#include "copy_queue.h"
#include "map.h"
#include "thread.h"

extern u16 *gUnknown_03003C90[4];   // BG tilemap buffers (32 x 32)

void sub_0800588C(u32 *x, u32 *y, u32 arg);
void sub_08004A1C(struct MapEntry *entry, s16 x, s16 y);

// Sets up entry `index` of the second map layer from the map data (its
// tilemap is one of those after the header, the last one for index 3),
// fills its BG tilemap buffer and queues the copy to VRAM.
void sub_0800481C(u16 index, s16 *map, u16 x, u16 y)
{
    u32 posX;
    u32 posY;
    u16 *buffer;
    int t;  // FAKE (decomp-permuter): a temporary for two unrelated values
    u8 *tilemap;
    u16 row;
    u32 regOffset;

    tilemap = (u8 *)map + 0x10;
    tilemap += map[0] * map[1] * ((3 - index) << 1);
    gMapLayer_03003C00.entries[index].unk10 = index;
    gMapLayer_03003C00.entries[index].unk8 = (u32)tilemap;
    gMapLayer_03003C00.entries[index].unkC = map[0];
    gMapLayer_03003C00.entries[index].unkE = map[1];
    gMapLayer_03003C00.entries[index].unk0 = 0;
    gMapLayer_03003C00.entries[index].unk2 = 0;
    regOffset = index * 2;
    buffer = gUnknown_03003C90[index];
    posX = x << 15;
    posY = y << 15;
    sub_0800588C(&posX, &posY, 1);
    t = gMapLayer_03003C00.originX;
    gMapLayer_03003C00.entries[index].unk0 = (s16)t / 8;
    gMapLayer_03003C00.entries[index].unk2 = (s16)gMapLayer_03003C00.originY / 8;
    for (row = gMapLayer_03003C00.originY; row < (s16)gMapLayer_03003C00.originY + 0x100; row += 8)
        sub_08004A1C(&gMapLayer_03003C00.entries[index], gMapLayer_03003C00.originX, row);
    regOffset = index * 2;  // FAKE (decomp-permuter): computed again
    t = ((*(vu16 *)(REG_ADDR_BG0CNT + regOffset) >> 8) & 0x1F) * 0x800;
    QueueCopy(buffer, (void *)(t + VRAM), 0x800);
    WaitFrame();
}
