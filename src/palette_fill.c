#include "global.h"
#include "display.h"

// A 15-bit color.
struct Color
{
    u16 r:5;
    u16 g:5;
    u16 b:5;
};

// After flushing the palette buffer, sets every channel of a range of
// palettes to `level` (a grey): mode 0 all 32 palettes, 1 the BG palettes,
// 2 the sprite palettes, 3 only `palette`.
void sub_0804EB34(u8 mode, s8 level, u8 palette)
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
            color->r = level;
            color->g = level;
            color->b = level;
            color = (struct Color *)((u16 *)color + 1);
        }
    }
}
