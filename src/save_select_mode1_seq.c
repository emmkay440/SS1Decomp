#include "global.h"
#include "display.h"
#include "sound.h"
#include "sprite_obj.h"
#include "thread.h"

extern s8 gUnknown_030007B1;        // shake offsets (sub_08049508)
extern s8 gUnknown_030007B2;
extern struct SpriteObj gUnknown_030007B8;

s16 Random(void);
void SeedRandom(s32 seed);
void sub_0800F3A0(u16 duration);
void sub_080492A8(u16 chance);
void sub_08049508(u8 front);

// The sequence of save select mode 1: waits a second, scrolls BG3 for 64
// frames, drops the sprite from above to y = 84 (sound 0x68), lets it
// bounce twice with BG3 following, then runs the falling objects
// (sub_080492A8 / sub_08049508) for 240 frames at three rates, with sound
// 0x6A, the music fading out and a fade (sub_0800F3A0) 16 frames before
// the end.
void sub_08049088(void)
{
    u8 i;
    s16 y;
    s16 speed;

    SeedRandom(Random());
    for (i = 0; i < 60; i++)
        WaitFrame();
    for (i = 0; i < 64; i++)
    {
        gBgRegsBuffer[7] = i;
        WaitFrame();
    }
    for (y = -60; y < 80; y += 16)
    {
        gBgRegsBuffer[7]++;
        sub_08026B90(&gUnknown_030007B8, 120, y, 0, 0);
        WaitFrame();
    }
    speed = 5;
    PlaySE(0x68);
    for (i = 0; i < 10; i++)
    {
        y -= speed;
        speed--;
        sub_08026B90(&gUnknown_030007B8, 120, y, 0, 0);
        gBgRegsBuffer[7] = -y + 155;
        WaitFrame();
    }
    speed = 2;
    for (i = 0; i < 6; i++)
    {
        y -= speed;
        speed--;
        gBgRegsBuffer[7] = -y + 155;
        sub_08026B90(&gUnknown_030007B8, 120, y, 0, 0);
        WaitFrame();
    }
    for (i = 0; i < 30; i++)
    {
        sub_08026B90(&gUnknown_030007B8, 120, y, 0, 0);
        WaitFrame();
    }
    for (i = 0; i < 90; i++)
    {
        sub_080492A8(30000);
        sub_08049508(0);
        sub_08026B90(&gUnknown_030007B8, gUnknown_030007B1 + 120, y + gUnknown_030007B2, 0, 0);
        sub_08049508(1);
        WaitFrame();
    }
    PlaySE(0x6A);
    for (i = 0; i < 90; i++)
    {
        sub_080492A8(12000);
        sub_08049508(0);
        sub_08026B90(&gUnknown_030007B8, gUnknown_030007B1 + 120, y + gUnknown_030007B2, 0, 0);
        sub_08049508(1);
        WaitFrame();
    }
    FadeOutAllMusicPlayers(3);
    for (i = 0; i < 60; i++)
    {
        if (i == 44)
            sub_0800F3A0(6);
        sub_080492A8(16000);
        sub_08049508(0);
        sub_08026B90(&gUnknown_030007B8, gUnknown_030007B1 + 120, y + gUnknown_030007B2, 0, 0);
        sub_08049508(1);
        WaitFrame();
    }
    StopSE(0x6A);
}
