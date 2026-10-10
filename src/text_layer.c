#include "global.h"
#include "copy_queue.h"
#include "display.h"

// A text layer on BG0: a 32-column tilemap buffer that is copied to the
// BG's screen block from the first changed row down.

#define TEXT_ROWS 21
#define TEXT_NO_DIRTY_ROW 0x12

extern u16 gUnknown_03006334;                  // nonzero: layer not in use
extern u16 gUnknown_03006330;                  // text palette needs loading
extern u16 gUnknown_03005DE0;                  // first changed row
extern u16 gUnknown_03005DF0[TEXT_ROWS][32];   // tilemap buffer
extern const u32 gUnknown_08052C5C[];          // font tiles
extern const u16 gUnknown_08052BDC[];          // text palette
extern u32 *gUnknown_03006340[];   // the category 8 data records (fonts)
extern u16 gUnknown_03003CA0;      // character advance

void sub_0800EC74(void);
void sub_0800EE44(u32 row);
void sub_08003518(u32 a, u32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);

void sub_0800EC38(void)
{
    gUnknown_03006334 = 0;
    gUnknown_03006330 = 0;
    gUnknown_03005DE0 = TEXT_NO_DIRTY_ROW;
    sub_0800EC74();
    CpuFastSet(gUnknown_08052C5C, (void *)(VRAM + 0xC000), 0x700);
}

void sub_0800EC74(void)
{
    if (gUnknown_03006334 == 0)
        CpuFastFill(0, gUnknown_03005DF0, sizeof(gUnknown_03005DF0));
    gUnknown_03006334 = 0;
}

// Writes a string at column x, row y (tiles 0x200 + char).
// The newline test looks at the finished tile value, so it never fires.
void sub_0800ECA4(const u8 *str, u8 x, u8 y)
{
    u16 *dest = &gUnknown_03005DF0[y][x];
    u32 palette = 14;
    u16 tile;

    while (*str != 0)
    {
        tile = (*str + 0x200) | (palette << 12);
        str++;
        if (tile == '\n')
        {
            y++;
            tile = *str | (palette << 12);
            str++;
            dest = &gUnknown_03005DF0[y][x];
        }
        *dest++ = tile;
    }
    sub_0800EE44(y);
    gUnknown_03006330 = 1;
}

// Queues the changed rows for copying to BG0's screen block.
void sub_0800ED08(void)
{
    u32 dest;
    u32 offset;
    u32 address;

    if (gUnknown_03006334 == 0)
    {
        dest = ((REG_BG0CNT >> 8) & 0x1F) * 0x800;   // BG0's screen block
        offset = gUnknown_03005DE0 * 64;
        address = offset + VRAM;
        dest += address;
        QueueCopy((u8 *)gUnknown_03005DF0 + offset, (void *)dest, 0x800 - offset);
        if (gUnknown_03006330 != 0)
        {
            LoadPalette(14, gUnknown_08052BDC, 1);
            gUnknown_03006330 = 0;
        }
    }
    gUnknown_03005DE0 = TEXT_NO_DIRTY_ROW;
}

void sub_0800ED74(void)
{
    gUnknown_03006334 = 1;
}

// Length of a 0-terminated u16 string, counting characters of font page 4
// twice. `c` is never set, so what it excludes (0x28-0x2B) depends on
// whatever r3 held (a bug in the original).
u32 sub_0800ED80(u16 *str)
{
    u32 length = 0;
    s32 c;

    while (*str++ != 0)
    {
        length++;
        if ((((*str - 1) & 0xF00u) >> 8) == 4)
        {
            switch (c)
            {
            case 0x28:
            case 0x29:
            case 0x2A:
            case 0x2B:
                break;
            default:
                length++;
                break;
            }
        }
    }
    return length;
}
