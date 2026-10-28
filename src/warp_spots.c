#include "global.h"
#include "area_state.h"
#include "player.h"
#include "sound.h"
#include "sprite_obj.h"
#include "thread.h"

extern u32 gUnknown_030064D8;
extern u16 gKeysNew;

int abs(int x);
u32 sub_080074CC(void);
u32 sub_080076E0(void);
u32 sub_080075AC(void);
u32 sub_08007510(void);
u32 sub_08007544(void);
u32 sub_08007604(void);
void Lerp1024(s32 *out, s32 a, s32 b, s32 t);

// Thread of the area's warp spots (gUnknown_030063D8->unk40, a guess):
// standing on one sets bit 4 of the player's unk10; pressing an action key
// there glides the player to the warp's destination over 60 frames (90 if
// it is more than 16 cells away) with Lerp1024. The unused obj and the two
// zeroed arrays are in the original too (stack layout).
void sub_0801EA78(void)
{
    struct SpriteObj obj;
    s32 outX;
    s32 outY;
    s32 px;
    s32 py;
    s32 tx;
    u16 a[gUnknown_030063D8->unk96];
    u16 b[gUnknown_030063D8->unk96];
    struct Player *player = &gPlayers[GetMultiplayerId()];
    struct PlayerInfo *info;
    struct AreaWarp *warp;
    s32 ty;
    u32 t;
    u32 frames;
    u32 i;

    for (i = 0; i < gUnknown_030063D8->unk96; i++)
    {
        a[i] = 0;
        b[i] = 0;
    }
    while (!sub_080074CC() && (gUnknown_030063D8->unk9C & 2))
    {
        if (!gUnknown_030064D8 && !sub_080076E0() && !sub_080075AC() && !sub_08007510() && !sub_08007544()
         && !sub_08007604() && player->state != 8 && player->state != 9)
        {
            warp = gUnknown_030063D8->unk40;
            for (i = 0; i < gUnknown_030063D8->unk96; i++, warp++)
            {
                info = player->unkD0;
                if (abs((info->x >> 3) - warp->x) <= 1 && abs((info->y >> 3) - warp->y) <= 1)
                {
                    if ((u16)(player->state - 3) > 1)
                        player->unk10 |= 0x10;
                    if (!sub_080076E0() && player->state != 5 && player->state != 2 && player->state != 6
                     && (gKeysNew & player->actionKeys))
                    {
                        PlaySE(0x92);
                        px = player->x >> 12;
                        py = player->y >> 12;
                        tx = warp->destX << 3;
                        ty = warp->destY << 3;
                        t = 0;
                        player->state = 0;
                        player->unk10 |= 3;
                        if (abs(px - tx) >> 3 > 16 || abs(py - ty) >> 3 > 16)
                            frames = 90;
                        else
                            frames = 60;
                        while (t++ < frames)
                        {
                            
                            // FAKE (permuter): *&t only keeps t in memory (stack slot).
                            Lerp1024(&outX, px, tx, (*&t << 10) / frames);
                            Lerp1024(&outY, py, ty, (t << 10) / frames);
                            player->x = outX << 12;
                            player->y = outY << 12;
                            WaitFrame();
                        }
                        player->unk10 &= ~3;
                    }
                }
            }
        }
        WaitFrame();
    }
}
