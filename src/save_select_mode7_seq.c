#include "global.h"
#include "display.h"
#include "sound.h"
#include "thread.h"

extern const s16 gUnknown_0805289C[];   // sine table
extern u16 gUnknown_03000954;
extern u16 gUnknown_03000958;
extern u16 gUnknown_0300095A;

s16 Random(void);
void SeedRandom(s32 seed);
void sub_0800F3A0(u16 duration);
void sub_08004524(u8 a, u8 b, u8 c, u8 d);
void sub_080044E4(u16 a, u16 b, u16 c, u16 d, u16 e, u16 f);
void sub_0804BD0C(void);
bool32 sub_0804C0A8(s16 chance, s16 yOffset);
void sub_0804C238(void);
u8 sub_0804C34C(void);

// The sequence of save select mode 7: BG1 scrolls in (sound 0x7C/0x7D) and
// sways on the sine table, something blends in and out (sound 0x6C), then
// 210 frames of particles (sub_0804C0A8 / sub_0804C238, sound 0x7E) until
// they are gone, the music fading out and a fade 16 frames before the end.
void sub_0804BD48(void)
{
    s16 i;
    s16 angle;
    s16 base;
    s16 wave;

    SeedRandom(Random());
    sub_08004524(1, 1, 0, 0);
    sub_080044E4(0, 0, 0, 0, 0, 0);
    gBgRegsBuffer[2] = 0;
    gBgRegsBuffer[3] = 0xFF60;
    PlaySE(0x7C);
    for (i = 0; i < 60; i++)
    {
        sub_0804BD0C();
        WaitFrame();
    }
    PlaySE(0x7D);
    for (i = 0; i < 80; i++)
    {
        gBgRegsBuffer[3] += 2;
        sub_0804BD0C();
        WaitFrame();
    }
    angle = 0;
    base = gBgRegsBuffer[3];
    for (i = 0; i < 30; i++, angle += 2)
    {
        gBgRegsBuffer[3] = (base + gUnknown_0805289C[angle % 255]) >> 4;
        sub_0804BD0C();
        WaitFrame();
    }
    PlaySE(0x6C);
    for (i = 0; i < 120; i++, angle += 2)
    {
        if (i > 30 && i < 90)
        {
            if (i < 60)
                sub_080044E4(2, 0, 2, 0, 0, (i - 30) / 3);
            else
                sub_080044E4(2, 0, 2, 0, 0, (90 - i) / 3);
        }
        gBgRegsBuffer[3] = (base + gUnknown_0805289C[angle % 255]) >> 4;
        sub_0804BD0C();
        WaitFrame();
    }
    sub_080044E4(0, 0, 0, 0, 0, 0);
    for (i = 0; i < 30; i++, angle += 2)
    {
        gBgRegsBuffer[3] = (base + gUnknown_0805289C[angle % 255]) >> 4;
        sub_0804BD0C();
        WaitFrame();
    }
    gUnknown_03000954 = gBgRegsBuffer[2];
    sub_080044E4(16, 15, 1, 16, 16, 0);
    gUnknown_03000958 = 0;
    gUnknown_0300095A = 0;
    PlaySE(0x7E);
    for (i = 0; i < 210; i++, angle += 2)
    {
        wave = gUnknown_0805289C[angle % 255] >> 4;
        sub_0804C0A8(10, wave);
        sub_0804C0A8(10, wave);
        sub_0804C238();
        gBgRegsBuffer[3] = base + wave;
        sub_0804BD0C();
        WaitFrame();
    }
    StopSE(0x7E);
    while (sub_0804C34C())
    {
        angle += 2;
        sub_0804C238();
        gBgRegsBuffer[3] = (base + gUnknown_0805289C[angle % 255]) >> 4;
        sub_0804BD0C();
        WaitFrame();
    }
    sub_080044E4(0, 0, 0, 0, 0, 0);
    FadeOutAllMusicPlayers(3);
    for (i = 0; i < 60; i++, angle += 2)
    {
        if (i == 44)
            sub_0800F3A0(6);
        gBgRegsBuffer[3] = (base + gUnknown_0805289C[angle % 255]) >> 4;
        sub_0804BD0C();
        WaitFrame();
    }
    StopSE(0x7C);
}
