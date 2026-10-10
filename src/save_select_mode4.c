#include "global.h"
#include "heap.h"
#include "sprite_obj.h"

void bzero(void *dest, u32 size);

extern u8 gUnknown_03000888;
extern u8 gUnknown_03000889;
extern u8 gUnknown_0300088A;
extern u8 gUnknown_0300088B;
extern void *gUnknown_0300088C;
extern struct SpriteObj gUnknown_03000890;

// One of the 100 falling sprites of this mode.
struct Entry_sub_0804AB10
{
    u8 state;         // 1 = falling, 2 = done
    u8 anim;
    u8 speed;
    u16 frame;
    u16 timer;
    s16 x;
    s16 y;
};

u32 sub_08026C40(struct SpriteObj *obj, u16 a, u16 *frame, u16 *timer, u32 loop);
void sub_0802706C(struct SpriteObj *obj, u32 x, u32 y, u16 c, u16 d, u8 e);

// Animates, draws and moves down every falling sprite; one that passes
// y = 180 is done.
void sub_0804AB10(void)
{
    struct Entry_sub_0804AB10 *entry = gUnknown_0300088C;
    u8 i;

    for (i = 0; i < 100; i++, entry++)
    {
        if (entry->state == 1)
        {
            sub_08026C40(&gUnknown_03000890, entry->anim, &entry->frame, &entry->timer, 1);
            sub_0802706C(&gUnknown_03000890, entry->x, entry->y, entry->anim, entry->frame, 0);
            entry->y += entry->speed + 2;
            if (entry->y > 180)
                entry->state = 2;
        }
    }
}

void sub_0804AB7C(void)
{
    void **buf;

    gUnknown_03000888 = 0;
    gUnknown_03000889 = 0;
    gUnknown_0300088A = 0;
    gUnknown_0300088B = 0;
    buf = &gUnknown_0300088C;
    *buf = Alloc(0x4B0);
    bzero(*buf, 0x4B0);
}

// Cleanup for save-select mode 4 (sub_08048614)
void sub_0804ABC0(void)
{
    if (gUnknown_0300088C != NULL)
        Free(gUnknown_0300088C);
}

// Number of entries (12 bytes each, kind in the first byte) whose kind
// isn't 0 or 2.
struct Entry_sub_0804ABD8
{
    u8 kind;
    u8 unk1[11];
};

u8 sub_0804ABD8(void)
{
    u8 count = 0;
    u8 i;

    for (i = 0; i < gUnknown_03000888; i++)
        if (((struct Entry_sub_0804ABD8 *)gUnknown_0300088C)[i].kind != 0 && ((struct Entry_sub_0804ABD8 *)gUnknown_0300088C)[i].kind != 2)
            count++;
    return count;
}
