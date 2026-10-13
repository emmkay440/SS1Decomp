#include "global.h"
#include "display.h"
#include "sprite_obj.h"
#include "heap.h"

void bzero(void *dest, u32 size);

extern s16 gUnknown_03000950;
extern s16 gUnknown_03000952;
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

s16 Random(void);
int abs(int x);

// Index of the first particle that isn't moving, 60 if there is none.
static inline u8 FindFreeParticle(void)
{
    u8 i;

    for (i = 0; i < 60; i++)
    {
        if (((struct Particle_sub_0804C238 *)gUnknown_0300095C)[i].state != 1)
            return i;
    }
    return 60;
}

// Moves the screen shake offsets one step back towards 0 and, at random
// (Random() above `chance`), starts a particle in a free slot; that also
// kicks the shake offsets. Returns FALSE when `chance` is 0 or no slot is
// free.
bool32 sub_0804C0A8(s16 chance, s16 yOffset)
{
    struct Particle_sub_0804C238 *particle;
    u8 slot;
    s16 kick;

    if (gUnknown_03000950 != 0)
    {
        if (gUnknown_03000950 > 0)
            gUnknown_03000950--;
        else
            gUnknown_03000950++;
    }
    gBgRegsBuffer[2] = gUnknown_03000954 - gUnknown_03000950;
    if (gUnknown_03000952 != 0)
    {
        if (gUnknown_03000952 > 0)
            gUnknown_03000952--;
        else
            gUnknown_03000952++;
    }
    gBgRegsBuffer[3] = gUnknown_03000954 - gUnknown_03000952;
    if (chance == 0)
        return FALSE;
    slot = FindFreeParticle();
    if (slot == 60)
        return FALSE;
    particle = &((struct Particle_sub_0804C238 *)gUnknown_0300095C)[slot];
    if (abs(Random()) > chance)
    {
        particle->state = 1;
        particle->dx = Random() % 200;
        particle->dy = Random() % 120;
        particle->speed = Random() % 2 + 8;
        particle->distance = 0;
        particle->frame = 0;
        particle->timer = 0;
        particle->x = gUnknown_03000950 + 0x5C;
        particle->y = (s16)(gUnknown_03000952 + 0x60) - yOffset;
        kick = abs((s16)(Random() % 4));
        if (particle->dx < 0)
            gUnknown_03000950 += kick;
        else
            gUnknown_03000950 -= kick;
        if (particle->dy < 0)
            gUnknown_03000952 += kick;
        else
            gUnknown_03000952 -= kick;
    }
    return TRUE;
}

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
