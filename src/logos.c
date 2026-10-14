#include "global.h"
#include "copy_queue.h"
#include "data_record.h"
#include "display.h"
#include "heap.h"
#include "sprite_obj.h"
#include "thread.h"

union BgCntValue
{
    struct
    {
        u32 value:16;
    } bits;
    u16 raw;
};

u32 sub_0800F2DC(void);
u32 sub_0800F298(void);
void sub_0800F1EC(u16 duration);
void sub_0800F244(u16 duration);
void sub_0800F308(u16 duration);
void sub_0800F348(u16 duration);
void *LZ77DecompressAlloc(const u32 *src);

// The logos before the title screen: picture record 0xC4 (shown at once
// when sub_0800F2DC() is 0, else copied over 16 frames and faded in),
// one second, fade out; then picture 0xC3 the same way. Signals event 20
// at the end.
void sub_08001FD0(void)
{
    struct SpriteObj obj;
    union BgCntValue cnt;
    u32 *record;
    u32 *p;
    u8 *tiles;
    void *palette;
    void *tilemap;
    u32 i;
    u32 j;

    if (sub_0800F2DC() == 0)
    {
        SetDispCntFlags(1, 0, 0, 0, 0);
        DisableDisplayLayers(0xF00, 0, 0);
        EnableDisplayLayers(0x1200, 0, 0);
        cnt.bits.value = 0x1C08;
        SetBgCnt(0, &cnt.raw);
        cnt.raw = 0x1D03;
        SetBgCnt(1, &cnt.raw);
        record = GetDataRecord(0xC4);
        tiles = GetDataRecord(record[0]);
        p = record;
        palette = GetDataRecord((*p++ & 0xFFFF) | 0x120000);
        tilemap = LZ77DecompressAlloc(p);
        if (record[0] & 0x10000000)
        {
            if (record[0] & 0x20000000)
                CpuFastSet(tiles, (void *)(VRAM + 0x4000), 0x1000);
            else
                CpuFastSet(tiles, (void *)VRAM, 0x1000);
        }
        else
        {
            CpuFastSet(tiles, (void *)VRAM, 0x2000);
        }
        CpuFastSet(tilemap, (void *)(VRAM + 0xE800), 0x200);
        Free(tilemap);
        LoadPalette(0, palette, 16);
        DisplayOn();
        sub_0800F1EC(30);
    }
    else
    {
        SetDispCntFlags(1, 0, 0, 0, 1);
        DisableDisplayLayers(0xF00, 0, 1);
        EnableDisplayLayers(0x1200, 0, 1);
        cnt.raw = 0x1C08;
        SetBgCnt(0, &cnt.raw);
        cnt.raw = 0x1D03;
        SetBgCnt(1, &cnt.raw);
        record = GetDataRecord(0xC4);
        tiles = GetDataRecord(record[0]);
        palette = GetDataRecord((*record++ & 0xFFFF) | 0x120000);
        tilemap = LZ77DecompressAlloc(record);
        for (j = 0; j < 16; j++)
        {
            QueueCopy(tiles + j * 0x800, (void *)(VRAM + j * 0x800), 0x800);
            WaitFrame();
        }
        QueueCopy(tilemap, (void *)(VRAM + 0xE800), 0x800);
        WaitFrame();
        WaitFrame();
        Free(tilemap);
        LoadPalette(0, palette, 15);
        gBgRegsBuffer[2] = 0;
        gBgRegsBuffer[3] = 0;
        if (sub_0800F2DC() == 2)
            sub_0800F348(6);
        else
            sub_0800F308(6);
    }
    while (!sub_0800F298())
        WaitFrame();
    for (i = 0; i < 60; i++)
        WaitFrame();
    sub_0800F244(60);
    while (!sub_0800F298())
        WaitFrame();
    record = GetDataRecord(0xC3);
    tiles = GetDataRecord(record[0]);
    palette = GetDataRecord((*record++ & 0xFFFF) | 0x120000);
    tilemap = LZ77DecompressAlloc(record);
    for (j = 0; j < 16; j++)
    {
        QueueCopy(tiles + j * 0x800, (void *)(VRAM + j * 0x800), 0x800);
        WaitFrame();
    }
    QueueCopy(tilemap, (void *)(VRAM + 0xE800), 0x800);
    WaitFrame();
    WaitFrame();
    Free(tilemap);
    LoadPalette(0, palette, 16);
    sub_08026ADC(&obj, 0x100095, 0, 15);
    sub_0800F1EC(6);
    while (!sub_0800F298())
        WaitFrame();
    for (i = 0; i < 60; i++)
        WaitFrame();
    sub_0800F244(60);
    while (!sub_0800F298())
        WaitFrame();
    WaitFrame();
    SignalEvent(20);
}
