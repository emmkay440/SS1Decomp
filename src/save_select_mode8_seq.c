#include "global.h"
#include "display.h"
#include "sound.h"
#include "sprite_obj.h"
#include "thread.h"

extern struct SpriteObj gUnknown_030009A0;
extern u16 gUnknown_0300099A;
extern u16 gUnknown_0300099C;

s16 Random(void);
void SeedRandom(s32 seed);
void sub_0800F3A0(u16 duration);
void sub_08004524(u8 a, u8 b, u8 c, u8 d);
void sub_080044E4(u16 a, u16 b, u16 c, u16 d, u16 e, u16 f);
u32 sub_08026C40(struct SpriteObj *obj, u16 a, u16 *frame, u16 *timer, u32 loop);
void sub_08003FA4(s32 x, s32 y, u32 c, u32 d, u32 e, void *f, u32 g, u32 h, u32 i);
void sub_0804C4B0(s16 angle, s16 time);   // u16 in src/save_select_mode8_scroll.c

#define DRAW_AT(x, y) \
    sub_08003FA4(x, y, 1, gUnknown_0300099A, 0, gUnknown_030009A0.unk1C, gUnknown_030009A0.unk8, gUnknown_030009A0.unk0, 1)

// The sequence of save select mode 8: the sprite drops in, then animates
// with the screen blending, then six copies fly out from the center in
// the six hexagon directions (one per frame in turn), speeding up after
// 200 frames and fading out after 300; music fade and a fade at the end.
void sub_0804C548(void)
{
    s16 radius[6];
    s16 i;
    s16 angle;
    s16 k;

    SeedRandom(Random());
    sub_08004524(0, 4, 0, 0);
    sub_080044E4(0, 0, 0, 0, 0, 0);
    gBgRegsBuffer[4] = 0xFFF8;
    gBgRegsBuffer[6] = 0xFFF8;
    PlaySE(0x37);
    for (i = 0; i < 60; i++)
    {
        sub_0804C4B0(0, 0);
        WaitFrame();
    }
    for (i = 0; i < 144; i++)
    {
        sub_08026B90(&gUnknown_030009A0, 120, i - 64, 0, 0);
        sub_0804C4B0(0, 0);
        WaitFrame();
    }
    PlaySE(0x68);
    for (i = 0; i < 60; i++)
    {
        sub_08026B90(&gUnknown_030009A0, 120, 80, 0, 0);
        sub_0804C4B0(0, 0);
        WaitFrame();
    }
    PlaySE(0x7F);
    sub_080044E4(0, 15, 1, 8, 16, 0);
    for (i = 0; i < 128; i++)
    {
        sub_080044E4(0, 15, 1, i >> 3, 16, 16);
        sub_08026B90(&gUnknown_030009A0, 120, 80, 0, 0);
        sub_08026C40(&gUnknown_030009A0, 1, &gUnknown_0300099A, &gUnknown_0300099C, 1);
        DRAW_AT(120, 80);
        sub_0804C4B0(0, 0);
        WaitFrame();
    }
    sub_080044E4(0, 15, 1, 8, 16, 0);
    for (i = 0; i < 30; i++)
    {
        sub_08026B90(&gUnknown_030009A0, 120, 80, 0, 0);
        sub_08026C40(&gUnknown_030009A0, 1, &gUnknown_0300099A, &gUnknown_0300099C, 1);
        DRAW_AT(120, 80);
        sub_0804C4B0(0, 0);
        WaitFrame();
    }
    gUnknown_0300099A = 0;
    gUnknown_0300099C = 0;
    angle = 0;
    for (i = 0; i < 6; i++)
        radius[i] = 0;
    sub_080044E4(0, 15, 1, 8, 16, 0);
    for (i = 0; i < 360; i++, angle += 2)
    {
        sub_08026C40(&gUnknown_030009A0, 1, &gUnknown_0300099A, &gUnknown_0300099C, 1);
        sub_08026B90(&gUnknown_030009A0, 120, 80, 0, 0);
        k = i % 6;
        switch (k)
        {
        case 0:
            DRAW_AT(120 + radius[0], 80 - (radius[0] >> 1));
            break;
        case 1:
            DRAW_AT(120 + radius[1], 80 + (radius[1] >> 1));
            break;
        case 2:
            DRAW_AT(120, 80 + radius[2]);
            break;
        case 3:
            DRAW_AT(120 - radius[3], 80 + (radius[3] >> 1));
            break;
        case 4:
            DRAW_AT(120 - radius[4], 80 - (radius[4] >> 1));
            break;
        case 5:
            DRAW_AT(120, 80 - radius[5]);
            break;
        }
        if (i < 200)
            radius[k] += 1;
        else
            radius[k] += 3;
        if (i > 300)
            sub_080044E4(0, 15, 1, 8 - ((i - 300) >> 3), 16, 16);
        sub_0804C4B0(angle, i);
        WaitFrame();
    }
    FadeOutAllMusicPlayers(3);
    sub_080044E4(0, 0, 0, 0, 0, 0);
    for (i = 0; i < 60; i++)
    {
        if (i == 44)
            sub_0800F3A0(6);
        sub_08026B90(&gUnknown_030009A0, 120, 80, 0, 0);
        sub_0804C4B0(angle, 360);
        WaitFrame();
    }
    StopSE(0x37);
    StopSE(0x7F);
}
