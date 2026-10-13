#include "global.h"
#include "copy_queue.h"
#include "data_record.h"
#include "display.h"
#include "thread.h"

struct Unknown_080FB0F8
{
    u16 unk0;
    u16 unk2;          // BG1 control bits (character base, priority)
    u8 unk4[0x5C];
};                     // size 0x60

union BgCntValue
{
    struct
    {
        u32 value:16;
    } bits;
    u16 raw;
};

extern struct Unknown_080FB0F8 gUnknown_080FB0F8[];

u32 sub_08007670(void);
u32 sub_080074CC(void);
u32 sub_080076A8(void);

// Display setup for a map: BG mode 0, the four BG control registers (BG1
// takes its bits from the area's table entry), then the map's tiles
// (16 blocks of 0x800 bytes, one per frame) and its palettes. Bit 31 of the
// key selects a second palette set when sub_080076A8() is set. Gives up
// when sub_08007670() or sub_080074CC() becomes nonzero.
void sub_080045C8(u32 *record, u32 area)
{
    union BgCntValue cnt;
    u8 *tiles;
    u8 *palettes;
    u16 i;

    SetBgMode(0, 0);
    DisableDisplayLayers(0x100, 0, 0);
    EnableDisplayLayers(0x1E00, 0, 1);
    cnt.bits.value = 0x1C08;
    SetBgCnt(0, &cnt.raw);
    cnt.raw = gUnknown_080FB0F8[area].unk2 | 0x1D00;
    SetBgCnt(1, &cnt.raw);
    cnt.raw = 0x1E02;
    SetBgCnt(2, &cnt.raw);
    cnt.raw = 0x1F03;
    SetBgCnt(3, &cnt.raw);
    tiles = GetDataRecord(record[0]);
    palettes = GetDataRecord(*(u16 *)record | 0x140000);
    for (i = 0; i < 16; i++)
    {
        if (sub_08007670() || sub_080074CC())
        {
            ClearCopyQueue();
            return;
        }
        QueueCopy(tiles + i * 0x800, (void *)(VRAM + i * 0x800), 0x800);
        WaitFrame();
    }
    if ((s32)record[0] < 0)
    {
        if (sub_080076A8())
            LoadPalette(0, palettes + 0x200, 15);
        else
            LoadPalette(0, palettes, 15);
    }
    else
    {
        LoadPalette(0, palettes, 15);
    }
    gPaletteBuffer[0] = 0;
    WaitFrame();
}
