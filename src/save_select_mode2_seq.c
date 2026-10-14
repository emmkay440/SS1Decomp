#include "global.h"
#include "display.h"
#include "sound.h"
#include "sprite_obj.h"
#include "thread.h"

extern struct SpriteObj gUnknown_03000800;
extern const s16 gUnknown_0805289C[];   // sine table

s16 Random(void);
void SeedRandom(s32 seed);
void sub_0800F3A0(u16 duration);
void sub_080044E4(u16 a, u16 b, u16 c, u16 d, u16 e, u16 f);
u8 sub_08049A24(u16 chance);
void sub_08049C58(u32 unused);
u8 sub_08049E30(void);

// The sequence of save select mode 2: BG scrolls for a second (sound
// 0x6D), the sprite bobs on a sine curve while blending in (sub_080044E4, sound 0x6C),
// then the orbiting objects are added (sub_08049A24) and run until all
// are done, with the music fading out and a fade 16 frames before the end.
void sub_080497D8(void)
{
    u8 i;
    s16 angle;

    SeedRandom(Random());
    PlaySE(0x6D);
    for (i = 0; i < 60; i++)
    {
        gBgRegsBuffer[6]++;
        WaitFrame();
    }
    angle = 0;
    PlaySE(0x6C);
    for (i = 0; i < 60; i++, angle += 2)
    {
        sub_080044E4(16, 15, 1, i >> 2, 16 - (i >> 2), 16);
        sub_08026B90(&gUnknown_03000800, 120, 80 - (gUnknown_0805289C[angle % 255] >> 4), 0, 0);
        gBgRegsBuffer[6]++;
        WaitFrame();
    }
    sub_080044E4(0, 0, 0, 0, 0, 0);
    for (i = 0; i < 90; i++, angle += 2)
    {
        angle++;  // fake (decomp-permuter): only changes the register allocation
        angle--;
        sub_08026B90(&gUnknown_03000800, 120, 80 - (gUnknown_0805289C[angle % 255] >> 4), 0, 0);
        gBgRegsBuffer[6]++;
        WaitFrame();
    }
    sub_080044E4(0, 15, 1, 16, 16, 0);
    PlaySE(0x39);
    while (sub_08049A24(8000))
    {
        sub_08049C58(0);
        angle += 2;
        sub_08026B90(&gUnknown_03000800, 120, 80 - (gUnknown_0805289C[angle % 255] >> 4), 0, 0);
        gBgRegsBuffer[6]++;
        WaitFrame();
    }
    while (sub_08049E30())
    {
        sub_08049A24(8000);
        sub_08049C58(0);
        angle += 2;
        sub_08026B90(&gUnknown_03000800, 120, 80 - (gUnknown_0805289C[angle % 255] >> 4), 0, 0);
        gBgRegsBuffer[6]++;
        WaitFrame();
    }
    FadeOutAllMusicPlayers(3);
    for (i = 0; i < 60; i++)
    {
        angle += 2;
        sub_08026B90(&gUnknown_03000800, 120, 80 - (gUnknown_0805289C[angle % 255] >> 4), 0, 0);
        gBgRegsBuffer[6]++;
        WaitFrame();
        if (i == 44)
            sub_0800F3A0(6);
    }
    StopSE(0x39);
    StopSE(0x6D);
}
