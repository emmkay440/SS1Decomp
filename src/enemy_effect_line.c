#include "global.h"
#include "thread.h"

struct Unknown_080FBD80
{
    u8 unk0[0x14];
    s32 x;
    s32 y;
    u8 unk1C[4];
};                     // size 0x20

struct Unknown_080FBE04
{
    s32 x;
    s32 y;
};

extern const struct Unknown_080FBD80 gUnknown_080FBD80[];
extern const struct Unknown_080FBE04 gUnknown_080FBE04[];

void Lerp1024(s32 *out, s32 a, s32 b, s32 t);
bool32 sub_08005FC4(s32 x, s32 y, s16 *outX, s16 *outY, u32 e, u32 second);
void sub_08033E6C(u32 a, u32 b, u32 c);
void PlaySE(u16 song);
s16 Random(void);

// Thread: four points on the line from gUnknown_080FBD80[index] to
// gUnknown_080FBE04[index] (0, 1/4, 2/4, 3/4 of the way). Starts effect 14
// at each one, a frame apart, with a random offset of up to 7 pixels and
// sound 0x28. No effect on frames 0, 32, ...
void sub_0803ECBC(u32 index)
{
    s32 xs[4];
    s32 ys[4];
    s16 screenX;
    s16 screenY;
    u32 i;
    u32 frame;

    for (i = 0; i < 4; i++)
    {
        s32 from;
        s32 to;
        s32 *outX = &xs[i];
        s32 *outY = &ys[i];

        from = gUnknown_080FBD80[index].x;
        to = gUnknown_080FBE04[index].x;
        Lerp1024(outX, from, to, i << 8);
        from = gUnknown_080FBD80[index].y;
        to = gUnknown_080FBE04[index].y;
        Lerp1024(outY, from, to, i << 8);
    }
    i = 0;
    frame = 0;
    do
    {
        if ((frame++ & 0x1F) != 0)
        {
            PlaySE(0x28);
            sub_08005FC4((s16)(xs[i] >> 12), (s16)(ys[i] >> 12), &screenX, &screenY, 0x30, 0);
            sub_08033E6C(screenX + (s16)(Random() % 8), screenY + (s16)(Random() % 8), 14);
            i++;
        }
        WaitFrame();
    } while (i < 4);
    GetCurrentThread()->priority = 0;
}
