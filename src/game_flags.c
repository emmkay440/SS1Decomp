#include "global.h"
#include "heap.h"
#include "thread.h"

// A word of single-bit flags with one get/set/clear function per bit.
// Known uses: ApplyPendingDamage ignores damage while bit 6 or bit 11 is
// set and keeps hp at 1 while bit 7 is set.
extern u32 gGameFlags;
extern struct Thread gUnknownThread_03003CB0;
extern struct Thread gUnknownThread_03003CE0;

void sub_08006144(void);
void sub_08006414(void);

void sub_08007484(void)
{
    gGameFlags = 0;
}

void sub_08007490(u32 arg)
{
    u8 *stack;

    gUnknownThread_03003CE0.entry = sub_08006144;
    stack = Alloc(0x200);
    gUnknownThread_03003CE0.stack = stack;
    gUnknownThread_03003CE0.sp = stack + 0x1FC;
    gUnknownThread_03003CE0.priority = 100;
    gUnknownThread_03003CE0.onExit = NULL;
    CreateThread(&gUnknownThread_03003CE0, arg);
}

u32 sub_080074CC(void)
{
    return (gGameFlags >> 0) & 1;
}

void sub_080074DC(void)
{
    gGameFlags &= ~(1 << 0);
}

u32 sub_080074F0(void)
{
    return (gGameFlags >> 1) & 1;
}

void sub_08007500(void)
{
    gGameFlags |= 1 << 0;
}

u32 sub_08007510(void)
{
    return (gGameFlags >> 2) & 1;
}

void sub_08007520(void)
{
    gGameFlags |= 1 << 2;
}

void sub_08007530(void)
{
    gGameFlags &= ~(1 << 2);
}

u32 sub_08007544(void)
{
    return (gGameFlags >> 3) & 1;
}

void sub_08007554(void)
{
    gGameFlags |= 1 << 3;
}

void sub_08007564(void)
{
    gGameFlags &= ~(1 << 3);
}

u32 sub_08007578(void)
{
    return (gGameFlags >> 4) & 1;
}

void sub_08007588(void)
{
    gGameFlags |= 1 << 4;
}

void sub_08007598(void)
{
    gGameFlags &= ~(1 << 4);
}

u32 sub_080075AC(void)
{
    return (gGameFlags >> 5) & 1;
}

void sub_080075BC(void)
{
    gGameFlags |= 1 << 5;
}

void sub_080075CC(void)
{
    gGameFlags &= ~(1 << 5);
}

void sub_080075E0(void)
{
    gGameFlags |= 1 << 6;
}

void sub_080075F0(void)
{
    gGameFlags &= ~(1 << 6);
}

u32 sub_08007604(void)
{
    return (gGameFlags >> 6) & 1;
}

void sub_08007614(void)
{
    gGameFlags |= 1 << 7;
}

void sub_08007624(void)
{
    gGameFlags &= ~(1 << 7);
}

u32 sub_08007638(void)
{
    return (gGameFlags >> 7) & 1;
}

void sub_08007648(void)
{
    gGameFlags |= 1 << 8;
}

void sub_0800765C(void)
{
    gGameFlags &= ~(1 << 8);
}

u32 sub_08007670(void)
{
    return (gGameFlags >> 8) & 1;
}

void sub_08007680(void)
{
    gGameFlags |= 1 << 9;
}

void sub_08007694(void)
{
    gGameFlags &= ~(1 << 9);
}

u32 sub_080076A8(void)
{
    return (gGameFlags >> 9) & 1;
}

void sub_080076B8(void)
{
    gGameFlags |= 1 << 10;
}

void sub_080076CC(void)
{
    gGameFlags &= ~(1 << 10);
}

u32 sub_080076E0(void)
{
    return (gGameFlags >> 10) & 1;
}

u32 sub_080076F0(void)
{
    return (gGameFlags >> 12) & 1;
}

void sub_08007700(void)
{
    gGameFlags |= 1 << 12;
}

void sub_08007714(void)
{
    gGameFlags &= ~(1 << 12);
}

void sub_08007728(void)
{
    gGameFlags |= 1 << 13;
}

void sub_0800773C(void)
{
    gGameFlags &= ~(1 << 13);
}

u32 sub_08007750(void)
{
    return (gGameFlags >> 13) & 1;
}

void sub_08007760(void)
{
    u8 *stack;

    gUnknownThread_03003CB0.entry = sub_08006414;
    stack = Alloc(0x400);
    gUnknownThread_03003CB0.stack = stack;
    gUnknownThread_03003CB0.sp = stack + 0x3FC;
    gUnknownThread_03003CB0.priority = 100;
    gUnknownThread_03003CB0.onExit = NULL;
    CreateThread(&gUnknownThread_03003CB0);
}

void sub_08007798(void)
{
    gGameFlags |= 1 << 11;
}

void sub_080077AC(void)
{
    gGameFlags &= ~(1 << 11);
}

u32 sub_080077C0(void)
{
    return (gGameFlags >> 11) & 1;
}
