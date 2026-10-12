#include "global.h"
#include "display.h"

// A 15-bit color, read through a 32-bit access.
struct Color
{
    u16 r:5;
    u16 g:5;
    u16 b:5;
};

// One step of a fade to black: after flushing the palette buffer, lowers
// every nonzero channel of the 256 BG colors by one.
void sub_0804E80C(void)
{
    u8 row;
    u8 i;
    struct Color *color;

    FlushPaletteBuffer();
    for (row = 0; row < 16; row++)
    {
        color = (struct Color *)&gPaletteBuffer[row * 16];
        for (i = 0; i < 16; i++)
        {
            if (color->r != 0)
                color->r--;
            if (color->g != 0)
                color->g--;
            if (color->b != 0)
                color->b--;
            color = (struct Color *)((u16 *)color + 1);
        }
    }
}
