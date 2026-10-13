#include "global.h"

void *memcpy(void *dest, const void *src, u32 size);

extern u16 gUnknown_03005DF0[][32];        // text layer tilemap buffer
extern const u16 gUnknown_080548BC[4];     // tile of the digit 0 for each color

u32 sub_080004A4(u32 *value, u32 divisor);
void sub_0800EE44(u32 row);

// Writes `value` (up to 3 digits, right-aligned, no leading zeros) into
// the text layer, in the row above pixel y and ending at pixel x.
void sub_08022F60(s32 x, s32 y, u32 value, u8 color)
{
    u8 digits[3];
    u16 zero[4];
    u16 pos;

    memcpy(zero, gUnknown_080548BC, sizeof(zero));
    digits[0] = sub_080004A4(&value, 100);
    digits[1] = sub_080004A4(&value, 10);
    digits[2] = value;
    x >>= 3;
    y >>= 3;
    pos = 2;
    if (digits[0] != 0)
    {
        gUnknown_03005DF0[y - 1][x - pos] = digits[0] + zero[color];
        pos = 1;
    }
    if (digits[0] != 0 || digits[1] != 0)
    {
        gUnknown_03005DF0[y - 1][x - pos] = digits[1] + zero[color];
        pos--;
    }
    gUnknown_03005DF0[y - 1][x - pos] = digits[2] + zero[color];
    sub_0800EE44(y - 1);
}
