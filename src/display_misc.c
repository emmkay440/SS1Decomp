#include "global.h"
#include "heap.h"
#include "copy_queue.h"
#include "sound.h"
#include "display.h"

extern u8 gRngState[8];
extern u16 gKeyRepeatDelay;
extern u16 gKeyRepeatRate;

void SetDispCntFlags(u16 obj1dMapping, u16 hblankOamAccess, u16 bmpFrame, u16 unused, u16 apply)
{
    gDispCnt.bits.bmpFrame = (bmpFrame != 0);
    gDispCnt.bits.hblankOamAccess = (hblankOamAccess != 0);
    gDispCnt.bits.obj1dMapping = (obj1dMapping != 0);
    if (apply)
        REG_DISPCNT = gDispCnt.raw;
}

void SetBgCnt(u16 bg, const u16 *cnt)
{
    if (cnt)
    {
        switch (bg)
        {
        case 0:
            REG_BG0CNT = *cnt;
            break;
        case 1:
            REG_BG1CNT = *cnt;
            break;
        case 2:
            REG_BG2CNT = *cnt;
            break;
        case 3:
            REG_BG3CNT = *cnt;
            break;
        }
    }
}

// Copies `count` 16-color palettes into gPaletteBuffer at palette `index`
// and queues the buffer for upload in the next VBlank.
void LoadPalette(u32 index, const void *src, u32 count)
{
    CpuFastSet(src, &gPaletteBuffer[index * 16], (count * 8) & 0x1FFFFF);
    if (gPaletteBufferQueued == 0)
    {
        QueueCopy(gPaletteBuffer, (void *)PLTT, PLTT_SIZE);
        gPaletteBufferQueued++;
    }
}

void FlushPaletteBuffer(void)
{
    QueueCopy(gPaletteBuffer, (void *)PLTT, PLTT_SIZE);
}

void CopyBgRegsBuffer(void)
{
    CpuCopy16(gBgRegsBuffer, (void *)REG_ADDR_BG0HOFS, 0x48);
}

void SeedRandom(void)
{
    gRngState[0] = 0xFA;
    gRngState[1] = 0x88;
    gRngState[2] = 0x86;
    gRngState[3] = 0x04;
}

// Decompresses LZ77 data into a new heap block (size rounded up to 4).
void *LZ77DecompressAlloc(const u32 *src)
{
    u32 size = *src >> 8;
    u32 rem = size & 3;
    void *dest;

    if (rem != 0)
        size += 4 - rem;
    dest = Alloc(size);
    if (dest != NULL)
        LZ77UnCompWram(src, dest);
    return dest;
}

void SetKeyRepeat(u16 delay, u16 rate)
{
    gKeyRepeatDelay = delay;
    gKeyRepeatRate = rate;
}
