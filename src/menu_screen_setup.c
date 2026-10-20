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
extern u8 gUnknown_030004C8;      // menu page
extern void *gUnknown_03000500;
extern void *gUnknown_03000504;
extern void *gUnknown_03000508;
extern void *gUnknown_0300050C;
extern struct SpriteObj gUnknown_03000510;
extern struct SpriteObj gUnknown_03000548;
extern struct SpriteObj gUnknown_03000580;

u32 GetPlayerClass(void);
void *LZ77DecompressAlloc(const u32 *src);
void sub_0804620C(const u8 *src, u8 *dest, u32 size, u32 d);
void sub_0800EC74(void);
void sub_0800EE44(u32 a);
void sub_0800ED08(void);
void sub_0800F308(u16 duration);

// Loads the tiles of a picture record: bit 28 of its key selects a 0x4000
// block (at VRAM + 0x4000 with bit 29), else 0x8000 bytes at VRAM.
#define LOAD_TILES(rec)                                                     \
    {                                                                       \
        void *tiles = GetDataRecord((rec)[0]);                              \
        if ((rec)[0] & 0x10000000)                                          \
        {                                                                   \
            if ((rec)[0] & 0x20000000)                                      \
                sub_0804620C(tiles, (void *)(VRAM + 0x4000), 0x4000, 0x20); \
            else                                                            \
                sub_0804620C(tiles, (void *)VRAM, 0x4000, 0x20);            \
        }                                                                   \
        else                                                                \
        {                                                                   \
            sub_0804620C(tiles, (void *)VRAM, 0x8000, 0x20);                \
        }                                                                   \
    }

// Display setup of the menu screen for the current page (gUnknown_030004C8):
// the four BG control registers, the page's background (a picture record
// per page) and its language-specific overlay, the page's extra tiles
// (by class on page 8), and the page sprites for the language.
void sub_08041538(void)
{
    union BgCntValue cnt;
    u32 *record;
    u32 *overlay;
    u32 *extra;
    void *tilemap;

    SetDispCntFlags(1, 0, 0, 0, 0);
    DisableDisplayLayers(0xF00, 0, 1);
    // (page 5 is tested twice in the original too)
    if (gUnknown_030004C8 == 5 || gUnknown_030004C8 == 8 || gUnknown_030004C8 == 2
        || gUnknown_030004C8 == 3 || gUnknown_030004C8 == 4 || gUnknown_030004C8 == 5)
        EnableDisplayLayers(0x1F00, 0, 1);
    else
        EnableDisplayLayers(0x1D00, 0, 1);
    cnt.bits.value = 0x1F03;
    SetBgCnt(3, &cnt.raw);
    cnt.raw = 0x1E02;
    SetBgCnt(2, &cnt.raw);
    cnt.raw = 0x5A01;
    SetBgCnt(1, &cnt.raw);
    cnt.raw = 0x1C00;
    SetBgCnt(0, &cnt.raw);
    sub_0800EC74();
    sub_0800EE44(0);
    sub_0800ED08();
    switch (gUnknown_030004C8)
    {
    case 1:
        record = GetDataRecord(2);
        switch (gLanguage)
        {
        case 1: overlay = GetDataRecord(0x51); break;
        case 2: overlay = GetDataRecord(0x8A); break;
        case 3: overlay = GetDataRecord(0x89); break;
        case 4: overlay = GetDataRecord(0xBC); break;
        case 5: overlay = GetDataRecord(0xB5); break;
        }
        break;
    case 2:
        record = GetDataRecord(6);
        switch (gLanguage)
        {
        case 1: overlay = GetDataRecord(0x50); break;
        case 2: overlay = GetDataRecord(0x9C); break;
        case 3: overlay = GetDataRecord(0x9D); break;
        case 4: overlay = GetDataRecord(0xBA); break;
        case 5: overlay = GetDataRecord(0xBB); break;
        }
        break;
    case 3:
        record = GetDataRecord(0x12);
        switch (gLanguage)
        {
        case 1: overlay = GetDataRecord(0x4F); break;
        case 2: overlay = GetDataRecord(0x9A); break;
        case 3: overlay = GetDataRecord(0x9B); break;
        case 4: overlay = GetDataRecord(0xB8); break;
        case 5: overlay = GetDataRecord(0xB9); break;
        }
        break;
    case 4:
        record = GetDataRecord(3);
        switch (gLanguage)
        {
        case 1: overlay = GetDataRecord(0x54); break;
        case 2: overlay = GetDataRecord(0xA0); break;
        case 3: overlay = GetDataRecord(0x98); break;
        case 4: overlay = GetDataRecord(0xBF); break;
        case 5: overlay = GetDataRecord(0xAD); break;
        }
        break;
    case 5:
        record = GetDataRecord(4);
        switch (gLanguage)
        {
        case 1: overlay = GetDataRecord(0x59); break;
        case 2: overlay = GetDataRecord(0xA1); break;
        case 3: overlay = GetDataRecord(0x99); break;
        case 4: overlay = GetDataRecord(0xC1); break;
        case 5: overlay = GetDataRecord(0xB7); break;
        }
        break;
    case 7:
        record = GetDataRecord(7);
        switch (gLanguage)
        {
        case 1: overlay = GetDataRecord(0x52); break;
        case 2: overlay = GetDataRecord(0x9E); break;
        case 3: overlay = GetDataRecord(0x9F); break;
        case 4: overlay = GetDataRecord(0xBD); break;
        case 5: overlay = GetDataRecord(0xBE); break;
        }
        break;
    case 8:
        record = GetDataRecord(0x25);
        switch (gLanguage)
        {
        case 1: overlay = GetDataRecord(0x4E); break;
        case 2: overlay = GetDataRecord(0x95); break;
        case 3: overlay = GetDataRecord(0xA4); break;
        case 4: overlay = GetDataRecord(0xC0); break;
        case 5: overlay = GetDataRecord(0xB6); break;
        }
        break;
    case 9:
        record = GetDataRecord(0xA);
        switch (gLanguage)
        {
        case 1: overlay = GetDataRecord(0x53); break;
        case 2: overlay = GetDataRecord(0x8B); break;
        case 3: overlay = GetDataRecord(0x8C); break;
        case 4: overlay = GetDataRecord(0xAB); break;
        case 5: overlay = GetDataRecord(0xAC); break;
        }
        break;
    }
    tilemap = LZ77DecompressAlloc(record + 1);
    sub_0804620C(tilemap, (void *)(VRAM + 0xF800), 0x800, 0x20);
    Free(tilemap);
    tilemap = LZ77DecompressAlloc(overlay + 1);
    sub_0804620C(tilemap, (void *)(VRAM + 0xF000), 0x800, 0x20);
    Free(tilemap);
    if (gUnknown_030004C8 == 8 || gUnknown_030004C8 == 2 || gUnknown_030004C8 == 3
        || gUnknown_030004C8 == 4)
    {
        if (gUnknown_030004C8 == 8)
        {
            switch (gLanguage)
            {
            case 1:
                switch ((u8)GetPlayerClass())
                {
                case 0: extra = GetDataRecord(0x55); break;
                case 1: extra = GetDataRecord(0x56); break;
                case 2: extra = GetDataRecord(0x57); break;
                case 3: extra = GetDataRecord(0x58); break;
                }
                break;
            case 2:
                switch ((u8)GetPlayerClass())
                {
                case 0: extra = GetDataRecord(0x8D); break;
                case 1: extra = GetDataRecord(0x8F); break;
                case 2: extra = GetDataRecord(0x91); break;
                case 3: extra = GetDataRecord(0x93); break;
                }
                break;
            case 3:
                switch ((u8)GetPlayerClass())
                {
                case 0: extra = GetDataRecord(0x8E); break;
                case 1: extra = GetDataRecord(0x90); break;
                case 2: extra = GetDataRecord(0x92); break;
                case 3: extra = GetDataRecord(0x94); break;
                }
                break;
            case 4:
                switch ((u8)GetPlayerClass())
                {
                case 0: extra = GetDataRecord(0xAE); break;
                case 1: extra = GetDataRecord(0xB0); break;
                case 2: extra = GetDataRecord(0xB2); break;
                case 3: extra = GetDataRecord(0xB4); break;
                }
                break;
            case 5:
                switch ((u8)GetPlayerClass())
                {
                case 0: extra = GetDataRecord(0xAF); break;
                case 1: extra = GetDataRecord(0xB1); break;
                case 2: extra = GetDataRecord(0xB3); break;
                case 3: extra = GetDataRecord(0xAA); break;
                }
                break;
            }
        }
        else
        {
            switch (gUnknown_030004C8)
            {
            case 2: extra = GetDataRecord(0x24); break;
            case 3: extra = GetDataRecord(0x23); break;
            case 4: extra = GetDataRecord(0xE); break;
            }
            gBgRegsBuffer[2] = 0x4C;
        }
        tilemap = LZ77DecompressAlloc(extra + 1);
        sub_0804620C(tilemap, (void *)(VRAM + 0xD000), 0x1000, 0x20);
        Free(tilemap);
    }
    else if (gUnknown_030004C8 == 5)
    {
        extra = GetDataRecord(5);
        {
            void **dest = &gUnknown_03000500;

            *dest = LZ77DecompressAlloc(extra + 1);
        }
        extra = GetDataRecord(0xB);
        {
            void **dest = &gUnknown_03000504;

            *dest = LZ77DecompressAlloc(extra + 1);
        }
        sub_0804620C(gUnknown_03000504, (void *)(VRAM + 0xD000), 0x1000, 0x20);
        extra = GetDataRecord(0xC);
        {
            void **dest = &gUnknown_03000508;

            *dest = LZ77DecompressAlloc(extra + 1);
        }
        extra = GetDataRecord(0xD);
        {
            void **dest = &gUnknown_0300050C;

            *dest = LZ77DecompressAlloc(extra + 1);
        }
    }
    LOAD_TILES(record);
    if (record[0] != overlay[0])
        LOAD_TILES(overlay);
    LoadPalette(0, GetDataRecord(*(u16 *)record | 0x120000), 15);
    switch (gLanguage)
    {
    case 1:
        sub_08026ADC(&gUnknown_03000510, 0x100069, 9, 5);
        sub_08026ADC(&gUnknown_03000548, 0x10006A, 0, 0);
        break;
    case 2:
        sub_08026ADC(&gUnknown_03000510, 0x100072, 9, 5);
        sub_08026ADC(&gUnknown_03000548, 0x100073, 0, 0);
        break;
    case 3:
        sub_08026ADC(&gUnknown_03000510, 0x100071, 9, 5);
        sub_08026ADC(&gUnknown_03000548, 0x10007B, 0, 0);
        break;
    case 4:
        sub_08026ADC(&gUnknown_03000510, 0x100084, 9, 5);
        sub_08026ADC(&gUnknown_03000548, 0x100083, 0, 0);
        break;
    case 5:
        sub_08026ADC(&gUnknown_03000510, 0x10008E, 9, 5);
        sub_08026ADC(&gUnknown_03000548, 0x10008D, 0, 0);
        break;
    }
    if (gUnknown_030004C8 == 2)
        sub_08026ADC(&gUnknown_03000580, 0x100057, 14, 1);
    else if (gUnknown_030004C8 == 3)
        sub_08026ADC(&gUnknown_03000580, 0x100056, 14, 1);
    else if (gUnknown_030004C8 == 4)
        sub_08026ADC(&gUnknown_03000580, 0x100055, 14, 1);
    else if (gUnknown_030004C8 == 5)
        sub_08026ADC(&gUnknown_03000580, 0x100058, 14, 1);
    else if (gUnknown_030004C8 == 7)
        sub_08026ADC(&gUnknown_03000580, 0x10005E, 14, 1);
    sub_0800F308(6);
}
