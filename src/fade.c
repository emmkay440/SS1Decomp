#include "global.h"
#include "thread.h"

// Probably the screen fade: these set up a fade and wake the thread that
// runs it (SignalEvent(100)). Names of the variables are guesses.
extern u16 gFadeDuration;
extern u16 gFadeTimer;
extern s16 gFadeDirection;
extern s16 gFadeFlags;

void sub_0800F1EC(u16 duration)
{
    if (gFadeDirection < 0 && (gFadeTimer & 0x8000))
        return;
    gFadeDirection = -1;
    gFadeDuration = duration;
    gFadeTimer = duration;
    SignalEvent(100);
    gFadeFlags |= 2;
    gFadeFlags &= ~0x28;
}

void sub_0800F244(u16 duration)
{
    if (gFadeDirection == 1 && gFadeTimer > gFadeDuration)
        return;
    gFadeDirection = 1;
    gFadeDuration = duration;
    gFadeTimer = 0;
    SignalEvent(100);
    gFadeFlags |= 2;
    gFadeFlags &= ~0x28;
}

bool32 sub_0800F298(void)
{
    bool32 idle = FALSE;

    if (!(gFadeFlags & 0x16))
        idle = TRUE;
    return idle;
}

bool32 sub_0800F2B0(void)
{
    if (gFadeDirection == 1 && gFadeTimer > gFadeDuration)
        return TRUE;
    return FALSE;
}

u32 sub_0800F2DC(void)
{
    u32 result;

    if (!(gFadeFlags & 8))
        result = (gFadeFlags & 0x20) ? 2 : 0;
    else
        result = 1;
    return result;
}

void sub_0800F308(u16 duration)
{
    gFadeDirection = -1;
    gFadeDuration = duration;
    gFadeTimer = 0;
    SignalEvent(100);
    gFadeFlags |= 4;
    gFadeFlags &= ~0x20;
}

void sub_0800F348(u16 duration)
{
    if (gFadeDirection < 0 && (gFadeTimer & 0x8000))
        return;
    gFadeDirection = -1;
    gFadeDuration = duration;
    gFadeTimer = duration;
    SignalEvent(100);
    gFadeFlags |= 0x10;
    gFadeFlags &= ~8;
}

void sub_0800F3A0(u16 duration)
{
    gFadeDirection = 1;
    gFadeDuration = duration;
    gFadeTimer = 0;
    SignalEvent(100);
    gFadeFlags |= 0xC;
    gFadeFlags &= ~0x20;
}

void sub_0800F3DC(u16 duration)
{
    if (gFadeDirection == 1 && gFadeTimer > gFadeDuration)
        return;
    gFadeDirection = 1;
    gFadeDuration = duration;
    gFadeTimer = 0;
    SignalEvent(100);
    gFadeFlags |= 0x30;
    gFadeFlags &= ~8;
}

// Same test as sub_0800F298, written out.
bool32 sub_0800F430(void)
{
    bool32 idle = FALSE;

    if (!(gFadeFlags & 0x16))
        idle = TRUE;
    if (idle && gFadeDirection == -1 && gFadeTimer == 0)
        return TRUE;
    return FALSE;
}
