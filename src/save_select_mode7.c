#include "global.h"
#include "sprite_obj.h"
#include "heap.h"

void bzero(void *dest, u32 size);

extern u16 gUnknown_03000950;
extern u16 gUnknown_03000952;
extern u16 gUnknown_03000954;
extern u16 gUnknown_03000956;
extern u16 gUnknown_03000958;
extern u16 gUnknown_0300095A;
extern void *gUnknown_0300095C;

extern struct SpriteObj gUnknown_03000960;

// One of the 60 particles of this mode: it moves away from (x, y) along
// (dx, dy) until its distance reaches 120.
struct Particle_sub_0804C238
{
    u8 state;         // 1 = moving, 2 = done
    u8 speed;
    u8 distance;
    s16 dx;
    s16 dy;
    u16 frame;
    u16 timer;
    s16 x;
    s16 y;
};

u32 sub_08026C40(struct SpriteObj *obj, u16 a, u16 *frame, u16 *timer, u32 loop);
void sub_08003FA4(s32 x, s32 y, u32 c, u32 d, u32 e, void *f, u32 g, u32 h, u32 i);

// Animates, draws and moves every particle.
void sub_0804C238(void)
{
    struct Particle_sub_0804C238 *particle = gUnknown_0300095C;
    u8 i;

    for (i = 0; i < 60; i++, particle++)
    {
        if (particle->state == 1)
        {
            s32 offsetX = (particle->dx * particle->distance) >> 7;
            s32 offsetY = (particle->dy * particle->distance) >> 7;

            sub_08026C40(&gUnknown_03000960, 0, &particle->frame, &particle->timer, 1);
            sub_08003FA4(particle->x + offsetX, particle->y + offsetY, 0, particle->frame, 0,
                         gUnknown_03000960.unk1C, gUnknown_03000960.unk8, gUnknown_03000960.unk0, 1);
            particle->distance += particle->speed;
            if (particle->distance > 119)
                particle->state = 2;
        }
    }
}

void sub_0804C2E0(void)
{
    void **buf;

    gUnknown_03000956 = 0;
    gUnknown_03000958 = 0;
    gUnknown_0300095A = 0;
    gUnknown_03000950 = 0;
    gUnknown_03000952 = 0;
    gUnknown_03000954 = 0;
    buf = &gUnknown_0300095C;
    *buf = Alloc(0x3C0);
    bzero(*buf, 0x3C0);
}

// Cleanup for save-select mode 7 (sub_08048614)
void sub_0804C334(void)
{
    if (gUnknown_0300095C != NULL)
        Free(gUnknown_0300095C);
}

// Number of entries (60 of 16 bytes each, kind in the first byte) whose kind
// isn't 0 or 2.
struct Entry_sub_0804C34C
{
    u8 kind;
    u8 unk1[15];
};

u8 sub_0804C34C(void)
{
    u8 count = 0;
    u8 i;

    for (i = 0; i < 60; i++)
        if (((struct Entry_sub_0804C34C *)gUnknown_0300095C)[i].kind != 0 && ((struct Entry_sub_0804C34C *)gUnknown_0300095C)[i].kind != 2)
            count++;
    return count;
}
