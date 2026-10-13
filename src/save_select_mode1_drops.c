#include "global.h"
#include "sprite_obj.h"

// One of the 100 falling objects of save select mode 1 (gUnknown_030007B4).
struct Drop
{
    u8 state;          // 1 falling, 2 bouncing, 3 lying, 4 done
    u8 timer;
    u8 sprite;
    s16 speed;         // +0x04
    s16 x;
    s16 y;             // +0x08
    s16 floor;         // +0x0A where it lands
};

extern s8 gUnknown_030007B1;        // shake offsets, set when a drop lands
extern s8 gUnknown_030007B2;
extern struct Drop *gUnknown_030007B4;
extern struct SpriteObj gUnknown_030007B8;

s16 Random(void);

// Moves and draws the drops whose floor is at most 159 (`front` set) or
// below that (clear): 10 pixels down per frame until the floor, then a
// bounce of 16 frames starting at 5 pixels up, then 60 frames lying there.
// Each landing picks new shake offsets (0-9) that are added to every
// drop's position.
void sub_08049508(u8 front)
{
    struct Drop *drop = gUnknown_030007B4;
    u8 i;

    for (i = 0; i < 100; i++, drop++)
    {
        if ((front && drop->floor < 160) || (!front && drop->floor >= 160))
        {
            if (drop->state == 1)
            {
                drop->y += 10;
                sub_08026B90(&gUnknown_030007B8, drop->x + gUnknown_030007B1,
                             drop->y + gUnknown_030007B2, drop->sprite, 0);
                if (drop->y > drop->floor)
                {
                    drop->state = 2;
                    drop->speed = 5;
                    drop->timer = 0;
                    gUnknown_030007B1 = Random() % 10;
                    gUnknown_030007B2 = Random() % 10;
                }
            }
            else if (drop->state == 2)
            {
                drop->y -= drop->speed;
                drop->speed--;
                drop->timer++;
                sub_08026B90(&gUnknown_030007B8, drop->x + gUnknown_030007B1,
                             drop->y + gUnknown_030007B2, drop->sprite, 0);
                if (drop->timer > 15)
                {
                    drop->state = 3;
                    drop->timer = 0;
                }
            }
            if (drop->state == 3)
            {
                drop->timer++;
                if (drop->timer < 60)
                    sub_08026B90(&gUnknown_030007B8, drop->x + gUnknown_030007B1,
                                 drop->y + gUnknown_030007B2, drop->sprite, 0);
                if (drop->timer > 60)
                    drop->state = 4;
            }
        }
    }
}
