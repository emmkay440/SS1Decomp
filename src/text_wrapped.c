#include "global.h"
#include "display.h"

extern u32 *gUnknown_03006340[];   // the category 8 data records (fonts)
extern u16 gUnknown_03003CA0;      // character advance

void sub_08003518(u32 a, u32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);

// Draws a 0-terminated u16 string as sprites like sub_0800EDBC, with the
// font's palette loaded into sprite palette 15, glyph widths (8 for a few
// narrow ones, 5 for 0xFF, 13 for the rest of font page 4) and a line
// break (13 pixels down) when x passes 240 minus the character advance.
void sub_0800EB30(u16 *str, u16 x, u16 y)
{
    u16 startX = x;
    u8 color = 15;
    u32 page;
    u16 glyph;
    u32 *font;
    u32 *first;
    u32 base;
    u16 c;
    u32 ch;

    first = gUnknown_03006340[0];
    base = (u32)first + 0x1E0;
    LoadPalette(0x1F, (void *)(first[1] + base), 1);
    y += 2;
    do { goto check; } while (0);
    do
    {
        ch = *str;
        c = ch - 1;
        page = (c & 0xF00) >> 8;
        font = gUnknown_03006340[page];
        ch &= 0xFF;
        glyph = (ch - 1) & 0xFF;
        sub_08003518(x, y, 0, glyph, 0, &color, (u32)(font + 2), font[0] + (u32)font);
        if (page == 4)
        {
            switch (glyph)
            {
            case 0x28:
            case 0x29:
            case 0x2A:
            case 0x2B:
                x += 8;
                break;
            default:
                x += 13;
                break;
            }
        }
        else
        {
            switch (*str)
            {
            case 0xFB:
            case 0xFC:
            case 0xFD:
            case 0xFE:
                x += 8;
                break;
            case 0xFF:
                x += 5;
                break;
            default:
                x += gUnknown_03003CA0;
                break;
            }
        }
        if (x > 240 - gUnknown_03003CA0)
        {
            x = startX;
            y += 13;
        }
        str++;
    check:
        ;
    } while (*str != 0);
}

// Not called by anything: an empty function with a variable argument list
// (a debug print that was compiled out?).
void sub_0800EC30(u32 a, u32 b, u32 c, ...)
{
}
