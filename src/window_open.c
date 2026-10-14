#include "global.h"
#include "heap.h"
#include "thread.h"
#include "window.h"

void sub_0802199C(void);

static inline u8 FindFreeWindow(void)
{
    u8 i;

    for (i = 0; i < 4; i++)
    {
        if (!((gUnknown_03006424 >> i) & 1))
            return i;
    }
    return 0xFF;
}

// Opens a window of width x height tiles (1 to 28 by 1 to 18) with its
// top left corner at (x, y), moved to stay on the screen, and starts its
// thread (sub_0802199C). Returns NULL if all four are in use.
// The check of the bottom edge uses 30 (the screen's width) to move it up.
struct Window *sub_08021874(u8 x, u8 y, u8 width, u8 height)
{
    struct Window *window;
    u8 slot = FindFreeWindow();
    s32 posX;
    s32 size;
    u16 half;
    s32 posY;
    s32 t;

    if (slot == 0xFF)
        return NULL;
    window = (struct Window *)&gUnknown_03006418[slot];
    window->slot = slot;
    t = (width >> 1) + 1;
    window->x = x + t;
    t = (height >> 1) + 1;
    window->y = y + t;
    window->width = width == 0 ? 1 : (width > 28 ? 28 : width);
    window->height = height == 0 ? 1 : (height > 18 ? 18 : height);
    posX = window->x;
    size = window->width >> 1;
    half = size;
    if (posX + half > 30)
        window->x = 30 - size;
    posX = window->x;
    if ((posX - half) & 0x80)
        window->x = size;
    posY = window->y;
    size = window->height >> 1;
    half = size;
    if (posY + half > 20)
        window->y = 30 - size;
    posY = window->y;
    if ((posY - half) & 0x80)
        window->y = size;
    window->state = 0;
    window->thread.entry = sub_0802199C;
    window->thread.stack = Alloc(0x400);
    window->thread.sp = (u8 *)window->thread.stack + 0x3FC;
    window->thread.priority = 0x14;
    window->thread.next = NULL;
    window->thread.prev = NULL;
    window->thread.onExit = NULL;
    CreateThread(&window->thread, window);
    gUnknown_03006424 |= 1 << window->slot;
    return window;
}
