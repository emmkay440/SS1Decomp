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

extern struct SpriteObj gUnknown_03000890;

void *LZ77DecompressAlloc(const u32 *src);
void sub_0804620C(const u8 *src, u8 *dest, u32 size, u32 d);
void sub_0800F308(u16 duration);

// Display setup of save-select mode 4: BG control, tilemaps, tiles and
// palette from data records, the mode's sprite object, fade in.
void sub_0804A4AC(void)
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
    cnt.raw = 0x1E02;
    SetBgCnt(2, &cnt.raw);
    EnableDisplayLayers(0x1C00, 0, 1);
    record = GetDataRecord(0x14);
    tilemap = LZ77DecompressAlloc(record + 1);
    sub_0804620C(tilemap, (void *)(VRAM + 0xF800), 0x800, 0x20);
    Free(tilemap);
    tilemap = LZ77DecompressAlloc((u32 *)GetDataRecord(0x15) + 1);
    sub_0804620C(tilemap, (void *)(VRAM + 0xF000), 0x800, 0x20);
    Free(tilemap);
    tiles = GetDataRecord(record[0]);
    if (record[0] & 0x10000000)
    {
        if (record[0] & 0x20000000)
            sub_0804620C(tiles, (void *)(VRAM + 0x4000), 0x4000, 0x20);
        else
            sub_0804620C(tiles, (void *)VRAM, 0x4000, 0x20);
    }
    else
    {
        sub_0804620C(tiles, (void *)VRAM, 0x8000, 0x20);
    }
    LoadPalette(0, GetDataRecord(*(u16 *)record | 0x120000), 16);
    gPaletteBuffer[0] = 0;
    sub_08026ADC(&gUnknown_03000890, 0x10004D, 9, 2);
    gBgRegsBuffer[6] = 0;
    gBgRegsBuffer[7] = 0x1B;
    gBgRegsBuffer[4] = 0;
    gBgRegsBuffer[5] = 0x60;
    sub_0800F308(6);
}
