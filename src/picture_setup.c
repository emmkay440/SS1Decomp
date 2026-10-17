#include "global.h"
#include "data_record.h"
#include "display.h"
#include "heap.h"
#include "sprite_obj.h"

union BgCntValue
{
    struct
    {
        u32 value:16;
    } bits;
    u16 raw;
};

extern struct SpriteObj gUnknown_030009D8;
extern struct SpriteObj gUnknown_03000A10;
extern u16 gLanguage;

void *LZ77DecompressAlloc(const u32 *src);
void sub_0804620C(const u8 *src, u8 *dest, u32 size, u32 d);
void sub_080044E4(u16 a, u16 b, u16 c, u16 d, u16 e, u16 f);

// Display setup of picture screen `kind` (0-4; a guess: the story and
// ending pictures): BG control, the tilemaps of up to three data records
// (0x2D, 0x27/0x26, 0x28/0x29, 0x2B/0x2C/0x2A, 0x4D), the first record's
// tiles and palettes, a blend (sub_080044E4) and the sprite objects for
// the language.
void sub_0804CA84(u8 kind)
{
    union BgCntValue cnt;
    u32 *record;
    u32 *record2;
    u32 *record3;
    void *tilemap;
    u8 *tiles;

    SetDispCntFlags(1, 0, 0, 0, 0);
    DisableDisplayLayers(0xF00, 0, 1);
    cnt.bits.value = 0x1C08;
    SetBgCnt(0, &cnt.raw);
    cnt.raw = 0x1F03;
    SetBgCnt(3, &cnt.raw);
    cnt.raw = 0x1E02;
    SetBgCnt(2, &cnt.raw);
    switch (kind)
    {
    case 4:
        cnt.raw = 0x1F83;
        SetBgCnt(3, &cnt.raw);
        record = GetDataRecord(0x4D);
        EnableDisplayLayers(0x1800, 0, 1);
        break;
    case 0:
        cnt.raw = 0x1F83;
        SetBgCnt(3, &cnt.raw);
        record = GetDataRecord(0x2D);
        EnableDisplayLayers(0x1800, 0, 1);
        break;
    case 1:
        record = GetDataRecord(0x27);
        record2 = GetDataRecord(0x26);
        EnableDisplayLayers(0x1C00, 0, 1);
        break;
    case 2:
        record = GetDataRecord(0x28);
        record2 = GetDataRecord(0x29);
        EnableDisplayLayers(0x1C00, 0, 1);
        cnt.raw = 0x5D02;
        SetBgCnt(2, &cnt.raw);
        break;
    case 3:
        record = GetDataRecord(0x2B);
        record2 = GetDataRecord(0x2C);
        record3 = GetDataRecord(0x2A);
        EnableDisplayLayers(0x1E00, 0, 1);
        cnt.raw = 0x9403;
        SetBgCnt(3, &cnt.raw);
        cnt.raw = 0x9202;
        SetBgCnt(2, &cnt.raw);
        cnt.raw = 0x9001;
        SetBgCnt(1, &cnt.raw);
        break;
    }
    if (kind != 3)
    {
        tilemap = LZ77DecompressAlloc(record + 1);
        sub_0804620C(tilemap, (void *)(VRAM + 0xF800), 0x800, 0x20);
        Free(tilemap);
        if (kind == 1)
        {
            tilemap = LZ77DecompressAlloc(record2 + 1);
            sub_0804620C(tilemap, (void *)(VRAM + 0xF000), 0x800, 0x20);
            Free(tilemap);
        }
        else if (kind == 2)
        {
            tilemap = LZ77DecompressAlloc(record2 + 1);
            sub_0804620C(tilemap, (void *)(VRAM + 0xE800), 0x1000, 0x20);
            Free(tilemap);
        }
    }
    else
    {
        tilemap = LZ77DecompressAlloc(record + 1);
        sub_0804620C(tilemap, (void *)(VRAM + 0xA000), 0x1000, 0x20);
        Free(tilemap);
        tilemap = LZ77DecompressAlloc(record2 + 1);
        sub_0804620C(tilemap, (void *)(VRAM + 0x9000), 0x1000, 0x20);
        Free(tilemap);
        tilemap = LZ77DecompressAlloc(record3 + 1);
        sub_0804620C(tilemap, (void *)(VRAM + 0x8000), 0x1000, 0x20);
        Free(tilemap);
    }
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
    gBgRegsBuffer[0] = 0;
    gBgRegsBuffer[1] = 0;
    gBgRegsBuffer[2] = 0;
    gBgRegsBuffer[3] = 0;
    gBgRegsBuffer[4] = 0;
    gBgRegsBuffer[5] = 0;
    gBgRegsBuffer[6] = 0;
    gBgRegsBuffer[7] = 0;
    switch (kind)
    {
    case 0:
        sub_08026ADC(&gUnknown_030009D8, 0x100061, 0, 1);
        break;
    case 1:
        sub_080044E4(4, 8, 1, 16, 16, 0);
        switch (gLanguage)
        {
        case 1:
            sub_08026ADC(&gUnknown_030009D8, 0x10006F, 0, 2);
            break;
        case 2:
            sub_08026ADC(&gUnknown_030009D8, 0x10007A, 0, 2);
            break;
        case 3:
            sub_08026ADC(&gUnknown_030009D8, 0x10007D, 0, 2);
            break;
        case 4:
            sub_08026ADC(&gUnknown_030009D8, 0x10008B, 0, 2);
            break;
        case 5:
            sub_08026ADC(&gUnknown_030009D8, 0x100092, 0, 2);
            break;
        }
        break;
    case 2:
        sub_080044E4(4, 8, 1, 4, 16, 0);
        switch (gLanguage)
        {
        case 1:
            sub_08026ADC(&gUnknown_030009D8, 0x10006D, 0, 2);
            break;
        case 2:
            sub_08026ADC(&gUnknown_030009D8, 0x100079, 0, 2);
            break;
        case 3:
            sub_08026ADC(&gUnknown_030009D8, 0x10008F, 0, 2);
            break;
        case 4:
            sub_08026ADC(&gUnknown_030009D8, 0x10008A, 0, 2);
            break;
        case 5:
            sub_08026ADC(&gUnknown_030009D8, 0x100091, 0, 2);
            break;
        }
        break;
    case 3:
        sub_080044E4(2, 12, 1, 16, 16, 0);
        switch (gLanguage)
        {
        case 1:
            sub_08026ADC(&gUnknown_03000A10, 0x10006E, 0, 6);
            break;
        case 2:
            sub_08026ADC(&gUnknown_03000A10, 0x100078, 0, 6);
            break;
        case 3:
            sub_08026ADC(&gUnknown_03000A10, 0x10007C, 0, 6);
            break;
        case 4:
            sub_08026ADC(&gUnknown_03000A10, 0x100089, 0, 6);
            break;
        case 5:
            sub_08026ADC(&gUnknown_03000A10, 0x100090, 0, 6);
            break;
        }
        sub_08026ADC(&gUnknown_030009D8, 0x100060, 0, 6);
        break;
    }
}
