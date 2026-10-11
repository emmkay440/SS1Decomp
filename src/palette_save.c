#include "global.h"
#include "display.h"

// The u32 size (not size_t) keeps agbcc from expanding memcpy inline; the
// "conflicting types for built-in function" warning is expected.
void *memcpy(void *dest, const void *src, u32 size);

// A copy of palette rows, one word per color (gUnknown_03000A58[32][16]).
// sub_0804EBFC saves rows of gPaletteBuffer into it, sub_0804EC80 restores
// them (byte offsets: 4 bytes per saved color, 2 per palette color).
// mode: 0 = all 32 rows, 1 = BG rows, 2 = OBJ rows, 3 = row `row`.
extern u32 gUnknown_03000A58[32][16];

void sub_0804EBFC(u8 mode, u8 row)
{
    u8 start, end;
    u8 i, j;

    if (mode == 0)
    {
        start = 0;
        end = 32;
    }
    else if (mode == 1)
    {
        start = 0;
        end = 16;
    }
    else if (mode == 2)
    {
        start = 16;
        end = 32;
    }
    else if (mode == 3)
    {
        start = row;
        end = row + 1;
    }
    for (i = start; i < end; i++)
        for (j = 0; j < 16; j++)
            memcpy(&((u8 *)gUnknown_03000A58)[i * 64 + j * 4], &((u8 *)gPaletteBuffer)[i * 32 + j * 2], 4);
}

void sub_0804EC80(u8 mode, u8 row)
{
    u8 start, end;
    u8 i, j;

    if (mode == 0)
    {
        start = 0;
        end = 32;
    }
    else if (mode == 1)
    {
        start = 0;
        end = 16;
    }
    else if (mode == 2)
    {
        start = 16;
        end = 32;
    }
    else if (mode == 3)
    {
        start = row;
        end = row + 1;
    }
    for (i = start; i < end; i++)
        for (j = 0; j < 16; j++)
            memcpy(&((u8 *)gPaletteBuffer)[i * 32 + j * 2], &((u8 *)gUnknown_03000A58)[i * 64 + j * 4], 4);
}

void bzero(void *dest, u32 size);

// Clears palette rows after flushing the buffer: mode 0 all 32, 1 the BG
// rows, 2 the OBJ rows, 3 only `row`. (bzero gets 4 bytes per color, so each
// call also clears the next color.)
void sub_0804ED04(u8 mode, u8 row)
{
    u8 first;
    u8 end;
    u8 i;
    u8 j;

    FlushPaletteBuffer();
    if (mode == 0)
    {
        first = 0;
        end = 32;
    }
    else if (mode == 1)
    {
        first = 0;
        end = 16;
    }
    else if (mode == 2)
    {
        first = 16;
        end = 32;
    }
    else if (mode == 3)
    {
        first = row;
        end = row + 1;
    }
    for (i = first; i < end; i++)
    {
        for (j = 0; j < 16; j++)
            bzero(&((u16 (*)[16])gPaletteBuffer)[i][j], 4);
    }
}
