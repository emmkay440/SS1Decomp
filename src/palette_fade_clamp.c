#include "global.h"
#include "display.h"

// A 15-bit color. The struct is 4 bytes (agbcc aligns every struct to 4),
// which is why the saved copy has one word per color.
struct Color
{
    u16 r:5;
    u16 g:5;
    u16 b:5;
};

extern struct Color gUnknown_03000A58[32][16];   // saved palette rows (src/palette_save.c)

// After flushing the palette buffer, sets every channel of a range of
// palettes to `level` (0 if negative), but no higher than its saved value.
// mode: 0 = all 32 rows, 1 = BG rows, 2 = OBJ rows, 3 = row `palette`.
void sub_0804E2E8(u8 mode, s8 level, u8 palette)
{
    u8 first;
    u8 end;
    u8 row;
    u8 i;
    struct Color *color;

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
        first = palette;
        end = first + 1;
    }
    for (row = first; row < end; row++)
    {
        color = (struct Color *)&gPaletteBuffer[row * 16];
        for (i = 0; i < 16; i++)
        {
            if (level <= gUnknown_03000A58[row][i].r)
            {
                if (level >= 0)
                    color->r = level;
                else
                    color->r = 0;
            }
            else
            {
                color->r = gUnknown_03000A58[row][i].r;
            }
            if (level <= gUnknown_03000A58[row][i].g)
            {
                if (level >= 0)
                    color->g = level;
                else
                    color->g = 0;
            }
            else
            {
                color->g = gUnknown_03000A58[row][i].g;
            }
            if (level <= gUnknown_03000A58[row][i].b)
            {
                if (level >= 0)
                    color->b = level;
                else
                    color->b = 0;
            }
            else
            {
                color->b = gUnknown_03000A58[row][i].b;
            }
            color = (struct Color *)((u16 *)color + 1);
        }
    }
}
