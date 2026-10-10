#include "global.h"
#include "item.h"

extern u8 gUnknown_030004CA;

u32 *sub_08040C24(void);
struct Item *sub_08040C98(void);
bool32 sub_08045F50(void);
void sub_08023048(s32 x, s32 y, u32 *item, u32 d);

// Draws the three weapon slots' icons, skipping the selected one while
// gUnknown_030004CA is set.
void sub_08043D48(void)
{
    u32 *weapon = sub_08040C24();
    u32 *selected = (u32 *)sub_08040C98();
    u8 i;

    if (!sub_08045F50())
        selected = NULL;
    if (weapon != NULL)
    {
        for (i = 0; i < 3; i++)
        {
            if (selected != weapon || gUnknown_030004CA == 0)
                sub_08023048(0x2C - i * 16, i * 8 + 0x20, weapon++, 8);
            else
                weapon++;
        }
    }
}

// 0 if a == b, 1 if a > b, 2 if a < b.
// Signed version of sub_08043DB8. Only matches with int parameters narrowed
// into locals (s16 parameters put the result in the wrong register).
u32 sub_08043DA0(s32 a, s32 b)
{
    s32 x = (s16)a;
    s32 y = (s16)b;
    u32 result = 0;

    if (x != y)
    {
        result = 2;
        if (x > y)
            result = 1;
    }
    return result;
}

// 0 if a == b, 1 if a > b, 2 if a < b.
u32 sub_08043DB8(u16 a, u16 b)
{
    u32 result = 0;

    if (a != b)
    {
        result = 2;
        if (a > b)
            result = 1;
    }
    return result;
}
