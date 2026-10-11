#include "global.h"
#include "copy_queue.h"
#include "data_record.h"
#include "display.h"
#include "heap.h"
#include "sprite_obj.h"

struct BgCntWord
{
    u16 raw;
};

extern struct SpriteObj gUnknown_03000778;

void *LZ77DecompressAlloc(const u32 *src);
void sub_0804620C(const u8 *src, u8 *dest, u32 size, u32 d);
void sub_0800F308(u16 duration);

// Display setup of save-select mode 0: BG0 text, BG3 from data record 0x10
// (tilemap, tiles and palette), the mode's sprite object, fade in.
void sub_08048834(void)
{
    struct BgCntWord cnt;
    u32 *record;
    void *tilemap;
    void *tiles;

    SetDispCntFlags(1, 0, 0, 0, 0);
    DisableDisplayLayers(0xF00, 0, 1);
    cnt.raw = 0x1C00;
    SetBgCnt(0, &cnt.raw);
    cnt.raw = 0x1F03;
    SetBgCnt(3, &cnt.raw);
    record = GetDataRecord(0x10);
    EnableDisplayLayers(0x1800, 0, 1);
    tilemap = LZ77DecompressAlloc(record + 1);
    sub_0804620C(tilemap, (void *)(VRAM + 0xF800), 0x800, 0x20);
    Free(tilemap);
    tiles = GetDataRecord(record[0]);
    if (record[0] & 0x10000000)
    {
        if (record[0] & 0x20000000)
            QueueCopy(tiles, (void *)(VRAM + 0x4000), 0x4000);
        else
            QueueCopy(tiles, (void *)VRAM, 0x4000);
    }
    else
    {
        QueueCopy(tiles, (void *)VRAM, 0x8000);
    }
    LoadPalette(0, GetDataRecord(*(u16 *)record | 0x120000), 16);
    sub_08026ADC(&gUnknown_03000778, 0x10004C, 9, 2);
    sub_0800F308(6);
}
