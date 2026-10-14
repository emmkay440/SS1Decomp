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

extern u16 gLanguage;
extern struct SpriteObj gUnknown_03001258;
extern struct SpriteObj gUnknown_03001290[4];

u32 GetPlayerColorScheme(void);
u32 GetPlayerClass(void);
void *LZ77DecompressAlloc(const u32 *src);
void sub_0804620C(const u8 *src, u8 *dest, u32 size, u32 d);

// Sets up a full-screen picture of `kind` (0-30; data record by kind, only
// when gLanguage isn't 0): BG0, BG2 and BG3 (BG3 with mosaic for kinds 0
// and 1), the tilemap, tiles and palette. Kind 0 also loads the title
// sprite for the language, kind 30 the four player characters.
void sub_0804ED80(u8 kind)
{
    union BgCntValue cnt;
    u32 *record;
    void *tilemap;
    void *tiles;
    struct SpriteObj *obj;
    s32 n;
    u16 color;

    SetDispCntFlags(1, 0, 0, 0, 0);
    DisableDisplayLayers(0xF00, 0, 1);
    cnt.bits.value = 0x1C00;
    SetBgCnt(0, &cnt.raw);
    cnt.raw = 0x1E02;
    SetBgCnt(2, &cnt.raw);
    if (kind <= 1)
    {
        cnt.raw = 0x1F83;
        SetBgCnt(3, &cnt.raw);
        EnableDisplayLayers(0x1800, 0, 1);
    }
    else
    {
        cnt.raw = 0x1F03;
        SetBgCnt(3, &cnt.raw);
        EnableDisplayLayers(0x1800, 0, 1);
    }
    if (gLanguage != 0)
    {
        switch (kind)
        {
        case 0: record = GetDataRecord(0x2E); break;
        case 1: record = GetDataRecord(0x2F); break;
        case 2: record = GetDataRecord(0x30); break;
        case 3: record = GetDataRecord(0x77); break;
        case 4: record = GetDataRecord(0x76); break;
        case 5: record = GetDataRecord(0x5F); break;
        case 6: record = GetDataRecord(0x75); break;
        case 7: record = GetDataRecord(0x74); break;
        case 8: record = GetDataRecord(0x73); break;
        case 9: record = GetDataRecord(0x72); break;
        case 10: record = GetDataRecord(0x71); break;
        case 11: record = GetDataRecord(0x70); break;
        case 12: record = GetDataRecord(0x6F); break;
        case 13: record = GetDataRecord(0x6E); break;
        case 14: record = GetDataRecord(0x78); break;
        case 15: record = GetDataRecord(0x6D); break;
        case 16: record = GetDataRecord(0x6C); break;
        case 17: record = GetDataRecord(0x6B); break;
        case 18: record = GetDataRecord(0x6A); break;
        case 19: record = GetDataRecord(0x69); break;
        case 20: record = GetDataRecord(0x68); break;
        case 21: record = GetDataRecord(0x67); break;
        case 22: record = GetDataRecord(0x66); break;
        case 23: record = GetDataRecord(0x65); break;
        case 24: record = GetDataRecord(0x64); break;
        case 25: record = GetDataRecord(0x63); break;
        case 26: record = GetDataRecord(0x62); break;
        case 27: record = GetDataRecord(0x61); break;
        case 28: record = GetDataRecord(0x60); break;
        case 29: record = GetDataRecord(0x4B); break;
        case 30: record = GetDataRecord(0x42); break;
        }
    }
    tilemap = LZ77DecompressAlloc(record + 1);
    sub_0804620C(tilemap, (void *)(VRAM + 0xF800), 0x800, 0x20);
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
        switch (gLanguage)
        {
        case 1:
            sub_08026ADC(&gUnknown_03001258, 0x100070, 0, 2);
            break;
        case 2:
            sub_08026ADC(&gUnknown_03001258, 0x100076, 0, 2);
            break;
        case 3:
            sub_08026ADC(&gUnknown_03001258, 0x10007E, 0, 2);
            break;
        case 4:
            sub_08026ADC(&gUnknown_03001258, 0x100086, 0, 2);
            break;
        case 5:
            sub_08026ADC(&gUnknown_03001258, 0x100085, 0, 2);
            break;
        }
        break;
    case 1:
        break;
    case 30:
        obj = gUnknown_03001290;
        for (n = 3; n >= 0; obj++, n--)
        {
            color = GetPlayerColorScheme();
            switch ((s32)GetPlayerClass())
            {
            case 0:
                sub_08026ADC(obj, 0x100000, 0, 1);
                break;
            case 1:
                sub_08026ADC(obj, 0x100002, 0, 1);
                break;
            case 2:
                sub_08026ADC(obj, 0x100001, 0, 1);
                break;
            case 3:
                sub_08026ADC(obj, 0x100003, 0, 1);
                break;
            }
            LoadPalette(0x10, obj->palettes + color * 32, 1);
        }
        break;
    }
}
