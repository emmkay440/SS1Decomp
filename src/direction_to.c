#include "global.h"

// Direction (the D-pad bits of the keys register: 0x10 right, 0x20 left,
// 0x40 up, 0x80 down, and their diagonals) from the fixed point position
// (x, y) towards the tile (targetX, targetY); 0 when it is within `range`
// tiles on both axes. ArcTan2's angle is rounded to the nearest of eight
// directions.
u32 sub_0800C9EC(s32 x, s32 y, s32 targetX_, s32 targetY_, s32 range_)
{
    s16 range = range_;
    s16 tileX = x >> 12;
    s16 tileY = y >> 12;
    s16 targetX = targetX_;
    s16 targetY = targetY_;
    s32 dx;
    s32 dy;
    u16 angle;
    u16 fraction;
    u32 direction;

    dx = targetX - tileX;
    if (dx < 0)
        dx = -dx;
    if (dx <= range)
    {
        dy = targetY - tileY;
        if (dy < 0)
            dy = -dy;
        if (dy <= range)
            return 0;
    }
    angle = ArcTan2(targetX - tileX, targetY - tileY);
    fraction = angle << 3;
    direction = angle >> 13;
    if (fraction > 0x8000)
    {
        if (direction <= 6)
            direction++;
        else
            direction = 0;
    }
    switch (direction)
    {
    case 0:
        return 0x10;
    case 1:
        return 0x90;
    case 2:
        return 0x80;
    case 3:
        return 0xA0;
    case 4:
        return 0x20;
    case 5:
        return 0x60;
    case 6:
        return 0x40;
    case 7:
        return 0x50;
    }
    return 0;
}
