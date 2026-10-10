#include "global.h"

extern u32 *gUnknown_03006340[];   // the category 8 data records (fonts)
extern u16 gUnknown_03003CA0;      // character advance

void sub_08003518(u32 a, u32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);

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
