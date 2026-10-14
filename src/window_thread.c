#include "global.h"
#include "data_record.h"
#include "display.h"
#include "player_stats.h"
#include "thread.h"
#include "window.h"

extern u16 gUnknown_03005DF0[21][32];   // tilemap buffer

void sub_0800EE44(u32 a);
void sub_0800ED74(void);

// Window thread: opens the window (growing the frame by two tiles a frame,
// width first), waits in state 3 (sub_0800ED74) until something sets state
// 4, closes it the same way, waits 30 frames and frees its slot. The frame
// is drawn into the BG0 tilemap buffer around the center.
void sub_0802199C(struct Window *window)
{
    u16 w;
    u16 h;
    u16 left;
    u16 top;
    u32 timer;
    u16 right;
    u16 bottom;
    u16 x;
    u16 y;

    window->state = 1;
    gBgRegsBuffer[0] = 0;
    gBgRegsBuffer[1] = 0;
    LoadPalette(15, (u8 *)GetDataRecord(0x120002) + 0x1E0, 1);
    gPaletteBuffer[0xF1] = gPlayerStats.options.windowR
                         | (gPlayerStats.options.windowG << 5)
                         | (gPlayerStats.options.windowB << 10);
    timer = 0;
    for (;;)
    {
        switch (window->state)
        {
        case 0:
            gUnknown_03006424 &= ~(1 << window->slot);
            ThreadExit();
        case 1:
            w = 0;
            h = 0;
            window->state = 2;
            sub_0800EE44(0);
            break;
        case 2:
            EnableDisplayLayers(0x100, 0, 1);
            sub_0800EE44(0);
            w += 2;
            if (w >= window->width)
            {
                w = window->width;
                h += 2;
                if (h >= window->height)
                {
                    h = window->height;
                    window->state = 3;
                }
            }
            break;
        case 3:
            sub_0800ED74();
            break;
        case 4:
            sub_0800EE44(0);
            h -= 2;
            if (h & 0x8000)
                h = 0;
            w -= 2;
            if (w & 0x8000)
                w = 0;
            if (w == 0 && h == 0)
            {
                window->state = 5;
                timer = 0;
            }
            break;
        case 5:
            if (timer++ > 30)
                window->state = 0;
            sub_0800EE44(0);
            break;
        }
        if (w != 0 || h != 0)
        {
            left = window->x - (w >> 1);
            right = window->x + (w >> 1);
            right += w & 1;
            top = window->y - (h >> 1);
            bottom = window->y + (h >> 1);
            bottom += h & 1;
            gUnknown_03005DF0[top - 1][left - 1] = 0xF001;
            gUnknown_03005DF0[bottom + 1][left - 1] = 0xF007;
            gUnknown_03005DF0[top - 1][right + 1] = 0xF003;
            gUnknown_03005DF0[bottom + 1][right + 1] = 0xF009;
            for (y = top; y <= bottom; y++)
            {
                gUnknown_03005DF0[y][left - 1] = 0xF004;
                gUnknown_03005DF0[y][right + 1] = 0xF006;
                for (x = left; x <= right; x++)
                {
                    gUnknown_03005DF0[top - 1][x] = 0xF002;
                    gUnknown_03005DF0[y][x] = 0xF005;
                    gUnknown_03005DF0[bottom + 1][x] = 0xF008;
                }
            }
        }
        WaitFrame();
    }
}
