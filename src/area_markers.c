#include "global.h"
#include "area_state.h"
#include "player.h"
#include "sound.h"
#include "sprite_obj.h"
#include "thread.h"

int abs(int x);
u32 sub_080074CC(void);
u32 sub_08007510(void);
u32 sub_08007544(void);
u32 sub_080075AC(void);
u32 sub_08007604(void);
bool32 sub_08029270(u32 value, u8 a, u8 b, u8 c);
bool32 sub_08005FC4(s32 x, s32 y, s16 *outX, s16 *outY, u32 e, u32 second);
void *sub_08004344(u32 a, s32 b, u16 c, u16 d, u8 e, void *f, u32 g, u32 h);

// Thread: draws the area's markers (frame 1 once reached, with sound 0x72
// the first time) and marks the one the local player stands on in unk92
// (queue entry 4 with its index), while bit 1 of unk9C is set.
void sub_0801CDE0(void)
{
    struct SpriteObj obj;
    s16 screenX;
    s16 screenY;
    u8 lit[gUnknown_030063D8->unk86];
    s16 anim;          // a temporary declared here (found by decomp-permuter)
    u8 played[gUnknown_030063D8->unk86];
    struct Player *player = &gPlayers[GetMultiplayerId()];
    struct AreaMarker *marker;
    u32 i;

    for (i = 0; i < gUnknown_030063D8->unk86; i++)
    {
        lit[i] = 0;
        played[i] = 0;
    }
    while (!sub_080074CC() && (gUnknown_030063D8->unk9C & 2))
    {
        if (!sub_080075AC() && !sub_08007510() && !sub_08007544() && !sub_08007604())
        {
            marker = gUnknown_030063D8->unk20;
            for (i = 0; i < gUnknown_030063D8->unk86; i++, marker++)
            {
                sub_08026ADC(&obj, gUnknown_030063D8->unk20->key, 13, 1);
                if (abs((player->x >> 15) - marker->x) <= 0 && abs((player->y >> 15) - marker->y) <= 0)
                {
                    gUnknown_030063D8->unk92 |= 1 << i;
                    sub_08029270(4, i, 0, 0);
                }
                if ((gUnknown_030063D8->unk92 >> i) & 1)
                {
                    lit[i] = 1;
                    if (played[i] == 0)
                    {
                        PlaySE(0x72);
                        played[i] = 1;
                    }
                }
                sub_08005FC4((s16)(marker->x << 3), (s16)(marker->y << 3), &screenX, &screenY, 0x10, 0);
                anim = marker->anim;
                sub_08004344(screenX, screenY, anim, lit[i], 3, obj.unk1C, obj.unk8, obj.unk0);
            }
        }
        WaitFrame();
    }
}
