#include "global.h"
#include "item.h"

extern u8 gMenuPage;
extern u8 gUnknown_0300047B;       // frames left in the count animation
extern u8 gUnknown_0300047C;       // its length
extern u32 gUnknown_03000490;      // the amount it started from
extern struct Item *gUnknown_030004A4;
extern struct Item *gUnknown_030004A8;

// Adds up the category 7 items of the page's 20 x 3 item list. While the
// count animation runs, returns a value between the old amount and the sum.
u32 sub_0803FFFC(void)
{
    struct Item *item;
    u32 total;
    u32 diff;
    u32 step;
    u32 from;
    u8 i;
    u8 j;
    u32 result;

    if (gMenuPage != 5)
        item = gUnknown_030004A8;
    else
        item = gUnknown_030004A4;
    total = 0;
    for (i = 0; i < 20; i++)
    {
        for (j = 0; j < 3; j++)
        {
            if (item->category == 7)
                total += item->count;
            item++;
        }
    }
    // A second variable: with one the sum and the length swap registers.
    result = total;
    if (gUnknown_0300047B != 0)
    {
        if (gUnknown_0300047B == gUnknown_0300047C)
        {
            diff = result - gUnknown_03000490;
            if (result < gUnknown_03000490)
                diff = gUnknown_03000490 - result;
            if (diff <= 99)
                gUnknown_0300047C = 10;
            else if (diff <= 999)
                gUnknown_0300047C = 16;
            else if (diff <= 9999)
                gUnknown_0300047C = 20;
            else if (diff <= 99999)
                gUnknown_0300047C = 26;
            else
                gUnknown_0300047C = 30;
            gUnknown_0300047B = gUnknown_0300047C;
        }
        if (--gUnknown_0300047B != 0)
        {
            from = gUnknown_03000490;
            if (result < from)
            {
                step = (from - result) / gUnknown_0300047C;
                if (step != 0)
                    result = from - step * (gUnknown_0300047C - gUnknown_0300047B);
                else
                    gUnknown_0300047B = 0;
            }
            else
            {
                step = (result - from) / gUnknown_0300047C;
                if (step != 0)
                    result = from + step * (gUnknown_0300047C - gUnknown_0300047B);
                else
                    gUnknown_0300047B = 0;
            }
        }
    }
    return result;
}
