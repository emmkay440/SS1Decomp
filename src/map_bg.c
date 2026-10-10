#include "global.h"
#include "heap.h"
#include "display.h"
#include "data_record.h"

void *LZ77DecompressAlloc(const u32 *src);

// Loads a background from the data archive: tiles to VRAM, the LZ77
// tilemap to screen block 0x1C + index, palette 0.
void sub_080060A0(u32 key, u32 index)
{
    u32 *record = GetDataRecord(key);
    void *tiles = GetDataRecord(record[0]);
    void *palette = GetDataRecord((record[0] & 0xFFFF) | 0x120000);
    void *tilemap = LZ77DecompressAlloc(record + 1);

    CpuFastSet(tiles, (void *)VRAM, 0x2000);
    CpuFastSet(tilemap, (void *)(VRAM + (index + 0x1C) * 0x800), 0x200);
    Free(tilemap);
    LoadPalette(0, palette, 16);
}
