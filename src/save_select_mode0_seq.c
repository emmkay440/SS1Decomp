#include "global.h"
#include "display.h"
#include "sound.h"
#include "sprite_obj.h"
#include "thread.h"

extern struct SpriteObj gUnknown_03000778;

s16 Random(void);
void sub_0800F3A0(u16 duration);
void sub_080044E4(u16 a, u16 b, u16 c, u16 d, u16 e, u16 f);
void sub_08005F60(s16 x, s16 y);
void sub_08048BF0(void);
void sub_08048D98(u8 front, s32 offsetX, s32 offsetY);

// The sequence of save select mode 0: waits a second, drops the sprite
// from above to y = 80, lets it bounce (BG3 following), blends something
// in and out over frames 31-89 (sound 0x66), then shakes the screen with
// the runners (sub_08048BF0 / sub_08048D98) for 240 frames, sounds 0x37 and
// 0x67, the music fading out and a fade 16 frames before the end.
void sub_08048930(void)
{
    u8 i;
    s16 y;
    s16 speed;
    s8 dy;
    s8 dx;

    for (i = 0; i < 60; i++)
        WaitFrame();
    for (y = -60; y < 80; y += 4)
    {
        sub_08026B90(&gUnknown_03000778, 120, y, 0, 0);
        WaitFrame();
    }
    speed = 5;
    PlaySE(0x68);
    for (i = 0; i < 10; i++)
    {
        y -= speed;
        speed--;
        sub_08026B90(&gUnknown_03000778, 120, y, 0, 0);
        gBgRegsBuffer[7] = -y + 78;
        sub_08005F60(0, -y + 78);
        WaitFrame();
    }
    for (i = 0; i < 120; i++)
    {
        if (i == 30)
            PlaySE(0x66);
        if (i == 80)
            StopSE(0x66);
        if (i > 30 && i < 90)
        {
            if (i < 60)
                sub_080044E4(16, 0, 2, 0, 0, (i - 30) / 3);
            else
                sub_080044E4(16, 0, 2, 0, 0, (90 - i) / 3);
        }
        sub_08026B90(&gUnknown_03000778, 120, y, 0, 0);
        WaitFrame();
    }
    sub_080044E4(0, 0, 0, 0, 0, 0);
    sub_080044E4(0, 15, 1, 16, 16, 0);
    PlaySE(0x37);
    PlaySE(0x67);
    for (i = 0; i < 180; i++)
    {
        if (!(i & 1))
        {
            dy = Random() / 10000;
            dx = Random() / 10000;
            gBgRegsBuffer[7] = dy;
            gBgRegsBuffer[6] = dx;
        }
        sub_08048BF0();
        sub_08048D98(0, dx, dy);
        sub_08026B90(&gUnknown_03000778, 120 - dx, y - dy, 0, 0);
        sub_08048D98(1, dx, dy);
        sub_08005F60(dx, dy);
        WaitFrame();
    }
    FadeOutAllMusicPlayers(3);
    for (i = 0; i < 60; i++)
    {
        if (i == 44)
            sub_0800F3A0(6);
        if (!(i & 1))
        {
            dy = Random() / 10000;
            dx = Random() / 10000;
            gBgRegsBuffer[7] = dy;
            gBgRegsBuffer[6] = dx;
        }
        sub_08048BF0();
        sub_08048D98(0, dx, dy);
        sub_08026B90(&gUnknown_03000778, 120 - dx, y - dy, 0, 0);
        sub_08048D98(1, dx, dy);
        sub_08005F60(dx, dy);
        WaitFrame();
    }
    StopSE(0x37);
    StopSE(0x67);
}
