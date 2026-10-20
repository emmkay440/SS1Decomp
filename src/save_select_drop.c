#include "global.h"
#include "display.h"
#include "sound.h"
#include "sprite_obj.h"
#include "thread.h"

struct Entry_sub_0804B2A8
{
    u8 kind;           // 1 or 2 when added; 0 and 3 don't count as active
    u8 unk1;
    u16 timer;
};                     // size 4

extern u8 gUnknown_030008C8;       // number of entries
extern s8 gUnknown_030008C9;       // shake offsets
extern s8 gUnknown_030008CA;
extern u8 gUnknown_030008CB;       // shake strength, counts down
extern struct Entry_sub_0804B2A8 *gUnknown_030008D0;
extern struct SpriteObj gUnknown_030008D8;

s16 Random(void);
void sub_0800F3A0(u16 duration);
void sub_08004524(u8 a, u8 b, u8 c, u8 d);
void sub_080044E4(u16 a, u16 b, u16 c, u16 d, u16 e, u16 f);
void sub_08005F60(s32 x, s32 y);   // takes u16; this file passes ints
void sub_08003FA4(s32 x, s32 y, u32 c, u32 d, u32 e, void *f, u32 g, u32 h, u32 i);
void sub_0804AD94(void);
void sub_0804B2A8(u16 chance);
void sub_0804B3A4(u32 unused);

#define SHAKE()                                                          \
{                                                                        \
    if (gUnknown_030008CB != 0)                                          \
    {                                                                    \
        gUnknown_030008C9 = (s8)(Random() % gUnknown_030008CB) >> 3;     \
        gUnknown_030008CA = (s8)(Random() % gUnknown_030008CB) >> 3;     \
        gUnknown_030008CB--;                                             \
    }                                                                    \
    else                                                                 \
    {                                                                    \
        gUnknown_030008C9 = 0;                                           \
        gUnknown_030008CA = 0;                                           \
    }                                                                    \
}

// A save select sequence (from sub_0804AD94's mode, a guess): gUnknown_030008D8
// drops in from the top, bounces, shakes the screen while the effects
// (sub_0804B2A8) run, waits for them to end and fades out.
void sub_0804ADF0(void)
{
    u8 i;
    s16 y;
    s16 speed;
    u8 count;
    struct SpriteObj *obj;   // found by decomp-permuter

    sub_08004524(0, 5, 0, 0);
    PlaySE(0x76);
    for (i = 0; i < 60; i++)
    {
        WaitFrame();
        sub_0804AD94();
    }
    EnableDisplayLayers(0x1E00, 0, 1);
    for (i = 0, y = -60; y < 80; y += 4)
    {
        if (i < 64)
            sub_080044E4(6, 8, 1, i >> 2, 16, 16);
        i++;
        sub_08026B90(&gUnknown_030008D8, 120, y, 0, 0);
        sub_0804AD94();
        WaitFrame();
    }
    PlaySE(0x68);
    speed = 5;
    for (i = 0; i < 10; i++)
    {
        y -= speed;
        speed--;
        sub_08026B90(&gUnknown_030008D8, 120, y, 0, 0);
        sub_0804AD94();
        gBgRegsBuffer[7] = -y + 78;
        sub_08005F60(0, -y + 78);
        WaitFrame();
    }
    speed = 2;
    for (i = 0; i < 6; i++)
    {
        y -= speed;
        speed--;
        sub_0804AD94();
        gBgRegsBuffer[7] = -y + 78;
        sub_08005F60(gUnknown_030008C9, gUnknown_030008CA);
        sub_08026B90(&gUnknown_030008D8, 120, y, 0, 0);
        WaitFrame();
    }
    for (i = 0; i < 60; i++)
    {
        sub_0804AD94();
        sub_08026B90(obj = &gUnknown_030008D8, 120, y, 0, 0);
        WaitFrame();
    }
    sub_080044E4(0x1F, 0, 2, 0, 0, 16);
    for (i = 0; i < 2; i++)
    {
        sub_0804AD94();
        sub_08026B90(obj, 120, y, 0, 0);
        WaitFrame();
    }
    sub_080044E4(6, 8, 1, 16, 16, 0);
    PlaySE(0x77);
    gUnknown_030008CB = 30;
    for (i = 0; i < 32; i++)
    {
        sub_080044E4(6, 8, 1, 16 - (i >> 1), 16, 0);
        if (i & 1)
            SHAKE();
        sub_08026B90(&gUnknown_030008D8, 120 + gUnknown_030008C9, y + gUnknown_030008CA, 0, 0);
        sub_08003FA4(60 + gUnknown_030008C9, 80 + gUnknown_030008CA, 1, 0, 0, gUnknown_030008D8.unk1C,
                     gUnknown_030008D8.unk8, gUnknown_030008D8.unk0, 1);
        sub_08003FA4(180 + gUnknown_030008C9, 80 + gUnknown_030008CA, 2, 0, 0, gUnknown_030008D8.unk1C,
                     gUnknown_030008D8.unk8, gUnknown_030008D8.unk0, 1);
        sub_0804AD94();
        sub_08005F60(-gUnknown_030008C9, -gUnknown_030008CA);
        WaitFrame();
    }
    for (i = 0; i < 128; i++)
    {
        sub_0804B2A8(2000);
        sub_0804B3A4(0);
        sub_08026B90(&gUnknown_030008D8, 120 + gUnknown_030008C9, y + gUnknown_030008CA, 0, 0);
        if (i & 1)
            SHAKE();
        sub_0804AD94();
        sub_08005F60(-gUnknown_030008C9, -gUnknown_030008CA);
        WaitFrame();
    }
    // a plain `goto` loop here lets the compiler reuse count's 0 at the
    // end
    while (1)
    {
        count = 0;
        for (i = 0; i < gUnknown_030008C8; i++)
        {
            if (gUnknown_030008D0[i].kind != 0 && gUnknown_030008D0[i].kind != 3)
                count++;
        }
        if (!count)
            break;
        sub_0804B3A4(0);
        sub_08026B90(obj, 120 + gUnknown_030008C9, y + gUnknown_030008CA, 0, 0);
        sub_08005F60(-gUnknown_030008C9, -gUnknown_030008CA);
        if (i & 1)
            SHAKE();
        sub_0804AD94();
        WaitFrame();
    }
done:
    sub_080044E4(0, 0, 0, 0, 0, 0);
    FadeOutAllMusicPlayers(3);
    for (i = 0; i < 60; i++)
    {
        sub_0804AD94();
        sub_08026B90(obj, 120, y, 0, 0);
        WaitFrame();
        if (i == 44)
            sub_0800F3A0(6);
    }
    StopSE(0x76);
}
