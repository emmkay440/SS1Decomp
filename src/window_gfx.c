#include "global.h"
#include "copy_queue.h"
#include "display.h"
#include "heap.h"
#include "player_stats.h"
#include "thread.h"

struct Unknown_03006418
{
    struct Thread thread;
    u8 unk28[0xC];
};

extern struct Unknown_03006418 *gUnknown_03006418;
extern u8 gUnknown_03006424;

void *GetDataRecord(u32 key);

// Loads the window tiles and palette 15, sets the window color from the
// options, and allocates the four small window records.
void sub_0802177C(void)
{
    CpuFastSet(GetDataRecord(0x10002), (void *)(VRAM + 0x8000), 0x1000);
    LoadPalette(15, (u8 *)GetDataRecord(0x120002) + 0x1E0, 1);
    gPaletteBuffer[0xF1] = gPlayerStats.options.windowR
                         | (gPlayerStats.options.windowG << 5)
                         | (gPlayerStats.options.windowB << 10);
    gUnknown_03006418 = Alloc(4 * sizeof(struct Unknown_03006418));
    gUnknown_03006424 = 0;
}

// Reloads the window tiles (through the copy queue), palette and color.
void sub_08021804(void)
{
    QueueCopy(GetDataRecord(0x10002), (void *)(VRAM + 0x8000), 0x1000);
    LoadPalette(15, (u8 *)GetDataRecord(0x120002) + 0x1E0, 1);
    gPaletteBuffer[0xF1] = gPlayerStats.options.windowR
                         | (gPlayerStats.options.windowG << 5)
                         | (gPlayerStats.options.windowB << 10);
    WaitFrame();
}
