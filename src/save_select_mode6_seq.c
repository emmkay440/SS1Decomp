#include "global.h"
#include "display.h"
#include "sound.h"
#include "sprite_obj.h"
#include "thread.h"

extern struct SpriteObj gUnknown_03000918;
extern s16 gUnknown_03000910;     // u16 in src/save_select_mode6.c
extern u16 gUnknown_03000912;

s16 Random(void);
void SeedRandom(s32 seed);
void sub_0800F3A0(u16 duration);
void sub_080044E4(u16 a, u16 b, u16 c, u16 d, u16 e, u16 f);
void sub_0802706C(struct SpriteObj *obj, u32 x, u32 y, u16 c, s32 d, s32 e);
u32 sub_08026C40(struct SpriteObj *obj, u16 a, u16 *frame, u16 *timer, u32 loop);

#define DRAW_BASE() sub_0802706C(&gUnknown_03000918, 120, 100, 3, 0, 3)

// The sequence of save select mode 6: the BG pans while a second copy of
// the sprite walks in (sounds 0x78-0x7B), stops, animates in place in
// several poses, then walks out to the left with a fade near the end.
void sub_0804B660(void)
{
    s16 i;
    s16 x;

    SeedRandom(Random());
    PlaySE(0x78);
    for (i = 0; i < 60; i++)
    {
        sub_080044E4(4, 24, 1, 16, 16, 0);
        DRAW_BASE();
        x = 320 - i;
        gBgRegsBuffer[4] = -x + 120;
        WaitFrame();
    }
    PlaySE(0x7A);
    for (i = 0; i < 70; i++)
    {
        DRAW_BASE();
        sub_08026C40(&gUnknown_03000918, 1, (u16 *)&gUnknown_03000910, &gUnknown_03000912, 1);
        sub_0802706C(&gUnknown_03000918, 260 - i, 100, 1, gUnknown_03000910, 3);
        x = 260 - i;
        gBgRegsBuffer[4] = -x + 120;
        WaitFrame();
    }
    StopSE(0x7A);
    PlaySE(0x79);
    gUnknown_03000910 = 0;
    gUnknown_03000912 = 0;
    for (i = 0; i < 40; i++)
    {
        DRAW_BASE();
        sub_08026C40(&gUnknown_03000918, 5, (u16 *)&gUnknown_03000910, &gUnknown_03000912, 0);
        sub_0802706C(&gUnknown_03000918, 190 - (i >> 1), 100, 5, gUnknown_03000910, 3);
        x = 190 - i;
        gBgRegsBuffer[4] = -x + 120;
        WaitFrame();
    }
    for (i = 0; i < 60; i++)
    {
        DRAW_BASE();
        sub_0802706C(&gUnknown_03000918, 170, 100, 5, gUnknown_03000910, 3);
        if (150 - i > 120)
        {
            x = 150 - i;
            gBgRegsBuffer[4] = -x + 120;
        }
        else
            gBgRegsBuffer[4] = 0;
        WaitFrame();
    }
    for (i = 0; i < 30; i++)
    {
        DRAW_BASE();
        sub_0802706C(&gUnknown_03000918, 175, 100, 5, 0, 3);
        gBgRegsBuffer[4] = 0;
        WaitFrame();
    }
    gUnknown_03000910 = 0;
    PlaySE(0x7A);
    for (i = 0; i < 55; i++)
    {
        DRAW_BASE();
        sub_08026C40(&gUnknown_03000918, 1, (u16 *)&gUnknown_03000910, &gUnknown_03000912, 1);
        sub_0802706C(&gUnknown_03000918, 175 - i, 100, 1, gUnknown_03000910, 3);
        gBgRegsBuffer[4] = 0;
        WaitFrame();
    }
    StopSE(0x78);
    StopSE(0x7A);
    for (i = 0; i < 30; i++)
    {
        DRAW_BASE();
        sub_0802706C(&gUnknown_03000918, 120, 100, 0, 0, 3);
        gBgRegsBuffer[4] = 0;
        WaitFrame();
    }
    for (i = 0; i < 30; i++)
    {
        DRAW_BASE();
        sub_0802706C(&gUnknown_03000918, 120, 100, 0, 0, 3);
        gBgRegsBuffer[4] = 0;
        WaitFrame();
    }
    gUnknown_03000910 = 0;
    gUnknown_03000912 = 0;
    PlaySE(0x7B);
    for (i = 0; i < 50; i++)
    {
        DRAW_BASE();
        sub_08026C40(&gUnknown_03000918, 0, (u16 *)&gUnknown_03000910, &gUnknown_03000912, 1);
        sub_0802706C(&gUnknown_03000918, 120, 100, 0, gUnknown_03000910, 3);
        gBgRegsBuffer[4] = 0;
        WaitFrame();
    }
    for (i = 0; i < 60; i++)
    {
        DRAW_BASE();
        sub_0802706C(&gUnknown_03000918, 120, 100, 0, 0, 3);
        gBgRegsBuffer[4] = 0;
        WaitFrame();
    }
    gUnknown_03000910 = 0;
    gUnknown_03000912 = 0;
    for (i = 0; i < 60; i++)
    {
        DRAW_BASE();
        sub_08026C40(&gUnknown_03000918, 2, (u16 *)&gUnknown_03000910, &gUnknown_03000912, 0);
        sub_0802706C(&gUnknown_03000918, 120, 100, 2, gUnknown_03000910, 3);
        gBgRegsBuffer[4] = 0;
        WaitFrame();
    }
    for (i = 0; i < 60; i++)
    {
        DRAW_BASE();
        sub_0802706C(&gUnknown_03000918, 120, 100, 0, 0, 3);
        gBgRegsBuffer[4] = 0;
        WaitFrame();
    }
    gUnknown_03000910 = 0;
    gUnknown_03000912 = 0;
    PlaySE(0x78);
    PlaySE(0x7A);
    for (i = 0; i < 190; i++)
    {
        if (i == 174)
            sub_0800F3A0(6);
        DRAW_BASE();
        sub_08026C40(&gUnknown_03000918, 1, (u16 *)&gUnknown_03000910, &gUnknown_03000912, 1);
        sub_0802706C(&gUnknown_03000918, 120 - i, 100, 1, gUnknown_03000910, 3);
        x = 120 - i;
        gBgRegsBuffer[4] = -x + 120;
        WaitFrame();
    }
    FadeOutAllMusicPlayers(1);
    StopSE(0x78);
    StopSE(0x7A);
}
