#include "global.h"
#include "data_record.h"
#include "display.h"
#include "enemy.h"
#include "map.h"
#include "player.h"
#include "thread.h"

extern vu32 gUnknown_030067F0[4];
extern vu32 gUnknown_030067A0[];

u32 sub_08007510(void);
u32 sub_08007604(void);
u32 sub_08007544(void);
bool32 sub_08005FC4(s32 x, s32 y, s16 *outX, s16 *outY, u32 e, u32 second);
bool32 sub_08004214(u16 animId, u16 *frame, u16 *timer, void *data, u32 loop);
void *sub_08004344(u32 a, s32 b, u16 c, u16 d, u8 e, void *f, void *g, void *h);

// Effect thread: plays animation 20 of sprite record 4 once on a
// character (`who`: player 0-3, or 4 + enemy slot), then frees its slot in
// that character's effect pool.
void ItemUseEffectThread(u32 who, u32 slot)
{
    u8 unk1C[16];
    s16 screenX;
    s16 screenY;
    u16 frame;
    u16 timer;
    struct Player *player;
    struct Enemy *enemy;
    void *anims;
    void *sprites;
    u16 done;

    unk1C[5] = 8;
    frame = 0;
    timer = 0;
    anims = GetDataRecord(0x100004);
    sprites = GetDataRecord(0x110004);
    LoadPalette(0x18, (u8 *)GetDataRecord(0x130004) + 0xA0, 1);
    done = 0;
    if (who < 4)
        player = &gPlayers[who];
    else
        enemy = &gEnemies[who - 4];
    while (!done)
    {
        if (who < 4)
        {
            struct PlayerInfo *info = player->unkD0;

            sub_08005FC4(info->x, info->y, &screenX, &screenY, 0x30, 0);
        }
        else
        {
            sub_08005FC4((s16)(enemy->x >> 12), (s16)(enemy->y >> 12), &screenX, &screenY, 0x30, 0);
        }
        done = sub_08004214(20, &frame, &timer, anims, 0);
        if (!(gMapLayer_03003910.flags & 0xC) && !sub_08007510() && !sub_08007604() && !sub_08007544())
            sub_08004344(screenX, screenY + 1, 20, frame, 1, unk1C, anims, sprites);
        WaitFrame();
    }
    if (who < 4)
        gUnknown_030067F0[who] &= ~(1 << slot);
    else
        gUnknown_030067A0[who - 4] &= ~(1 << slot);
}

// The same with animation 21. It always frees the slot in the players'
// pool, also when `who` is an enemy.
void sub_0802C3D4(u32 who, u32 slot)
{
    u8 unk1C[16];
    s16 screenX;
    s16 screenY;
    u16 frame;
    u16 timer;
    struct Player *player;
    struct Enemy *enemy;
    void *anims;
    void *sprites;
    u16 done;

    unk1C[5] = 8;
    frame = 0;
    timer = 0;
    anims = GetDataRecord(0x100004);
    sprites = GetDataRecord(0x110004);
    LoadPalette(0x18, (u8 *)GetDataRecord(0x130004) + 0xA0, 1);
    done = 0;
    if (who < 4)
        player = &gPlayers[who];
    else
        enemy = &gEnemies[who - 4];
    while (!done)
    {
        if (who < 4)
        {
            struct PlayerInfo *info = player->unkD0;

            sub_08005FC4(info->x, info->y, &screenX, &screenY, 0x30, 0);
        }
        else
        {
            sub_08005FC4((s16)(enemy->x >> 12), (s16)(enemy->y >> 12), &screenX, &screenY, 0x30, 0);
        }
        done = sub_08004214(21, &frame, &timer, anims, 0);
        if (!(gMapLayer_03003910.flags & 0xC) && !sub_08007510() && !sub_08007604() && !sub_08007544())
            sub_08004344(screenX, screenY + 1, 21, frame, 1, unk1C, anims, sprites);
        WaitFrame();
    }
    gUnknown_030067F0[who] &= ~(1 << slot);
}
