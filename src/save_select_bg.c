#include "global.h"
#include "copy_queue.h"
#include "data_record.h"
#include "display.h"

union BgCntValue
{
    struct
    {
        u32 value:16;
    } bits;
    u16 raw;
};

extern u8 gUnknown_030005F0;             // save select mode
extern u8 gUnknown_030005F1;             // page
extern u8 gUnknown_030005F2;
extern u16 gLanguage;
extern void *gUnknown_03000608;          // decompressed tilemaps
extern void *gUnknown_0300060C;
extern void *gUnknown_03000610;
extern u16 gUnknown_03000614[3];
extern u16 gUnknown_0300061C[3];

void *LZ77DecompressAlloc(const u32 *src);
void sub_08048484(const u8 *src, u8 *dest, u32 size);

// Loads the save select backgrounds for the current mode and language:
// the main tilemap (BG at 0xF800; per page outside mode 5), a second one
// (0xF000) in most modes and, in mode 5, a third (BG1 at 0xE800). Then
// the main record's tiles, directly (`direct`) or through sub_08048484,
// and its palettes; clears the cursor animations.
void sub_08046F6C(u8 direct)
{
    union BgCntValue cnt;
    u32 *main;
    u32 *second;
    u32 *third;
    u8 *tiles;
    u8 i;

    if (gUnknown_030005F0 != 5)
    {
        switch (gLanguage)
        {
        case 1:
            if (!gUnknown_030005F1)
                main = GetDataRecord(0x5D);
            else
                main = GetDataRecord(0x5E);
            break;
        case 2:
            if (!gUnknown_030005F1)
                main = GetDataRecord(0x82);
            else
                main = GetDataRecord(0x81);
            break;
        case 3:
            if (!gUnknown_030005F1)
                main = GetDataRecord(0x83);
            else
                main = GetDataRecord(0x85);
            break;
        case 4:
            if (!gUnknown_030005F1)
                main = GetDataRecord(0x88);
            else
                main = GetDataRecord(0x86);
            break;
        case 5:
            if (!gUnknown_030005F1)
                main = GetDataRecord(0x87);
            else
                main = GetDataRecord(0x84);
            break;
        }
    }
    else
    {
        switch (gLanguage)
        {
        case 1:
            main = GetDataRecord(0x5C);
            break;
        case 2:
            main = GetDataRecord(0x80);
            break;
        case 3:
            main = GetDataRecord(0x7E);
            break;
        case 4:
            main = GetDataRecord(0x7F);
            break;
        case 5:
            main = GetDataRecord(0x7D);
            break;
        }
    }
    second = NULL;
    switch (gUnknown_030005F0)
    {
    case 0:
    case 1:
    case 2:
    case 6:
    case 7:
    case 8:
        second = GetDataRecord(8);
        EnableDisplayLayers(0x1D00, 0, 1);
        break;
    case 3:
    case 4:
        second = GetDataRecord(9);
        DisableDisplayLayers(0x200, 0, 1);
        EnableDisplayLayers(0x1D00, 0, 1);
        break;
    case 5:
        DisableDisplayLayers(0x100, 0, 1);
        switch (gLanguage)
        {
        case 1:
            second = GetDataRecord(0x5C);
            break;
        case 2:
            second = GetDataRecord(0x80);
            break;
        case 3:
            second = GetDataRecord(0x7E);
            break;
        case 4:
            second = GetDataRecord(0x7F);
            break;
        case 5:
            second = GetDataRecord(0x7D);
            break;
        }
        break;
    }
    {
        void **p = &gUnknown_03000608;

        *p = LZ77DecompressAlloc(main + 1);
    }
    QueueCopy(gUnknown_03000608, (void *)(VRAM + 0xF800), 0x800);
    if (second != NULL)
    {
        {
            void **p = &gUnknown_0300060C;

            *p = LZ77DecompressAlloc(second + 1);
        }
        QueueCopy(gUnknown_0300060C, (void *)(VRAM + 0xF000), 0x800);
    }
    if (gUnknown_030005F0 == 5)
    {
        cnt.bits.value = 0x1D01;
        SetBgCnt(1, &cnt.raw);
        if (gUnknown_030005F2 == 2)
        {
            switch (gLanguage)
            {
            case 1:
                third = GetDataRecord(0x5A);
                break;
            case 2:
                third = GetDataRecord(0x7C);
                break;
            case 3:
                third = GetDataRecord(0x7A);
                break;
            case 4:
                third = GetDataRecord(0x7B);
                break;
            case 5:
                third = GetDataRecord(0x79);
                break;
            }
        }
        {
            void **p = &gUnknown_03000610;

            *p = LZ77DecompressAlloc(third + 1);
        }
        QueueCopy(gUnknown_03000610, (void *)(VRAM + 0xE800), 0x800);
        EnableDisplayLayers(0x1E00, 0, 1);
    }
    else if (gUnknown_030005F0 == 7)
    {
        DisableDisplayLayers(0x200, 0, 1);
        EnableDisplayLayers(0x1C00, 0, 1);
    }
    if (direct)
    {
        tiles = GetDataRecord(main[0]);
        if (main[0] & 0x10000000)
        {
            if (main[0] & 0x20000000)
                QueueCopy(tiles, (void *)(VRAM + 0x4000), 0x4000);
            else
                QueueCopy(tiles, (void *)VRAM, 0x4000);
        }
        else
        {
            QueueCopy(tiles, (void *)VRAM, 0x8000);
        }
    }
    else
    {
        tiles = GetDataRecord(main[0]);
        if (main[0] & 0x10000000)
        {
            if (main[0] & 0x20000000)
                sub_08048484(tiles, (void *)(VRAM + 0x4000), 0x4000);
            else
                sub_08048484(tiles, (void *)VRAM, 0x4000);
        }
        else
        {
            sub_08048484(tiles, (void *)VRAM, 0x8000);
        }
    }
    LoadPalette(0, GetDataRecord(*(u16 *)main | 0x120000), 16);
    for (i = 0; i < 3; i++)
    {
        gUnknown_03000614[i] = 0;
        gUnknown_0300061C[i] = 0;
    }
}
