#include "global.h"
#include "player.h"
#include "sound.h"
#include "thread.h"

extern vu32 gUnknown_030067F0[4];

// PlayerInfo's second word: the action's level and kind.
struct PlayerInfoWords
{
    u32 unk0;
    u32 unk4_0:10;
    u32 level:3;
    u32 kind:4;
    u32 unk4_17:15;
};

struct Unknown_080FBB84
{
    u32 unk0;
    u16 cost[6];
};

extern const struct Unknown_080FBB84 gUnknown_080FBB84[];

s16 sub_0801076C(void);
u32 sub_08001EC4(void);
u32 sub_08007510(void);
u32 sub_08007544(void);
u32 sub_080075AC(void);
void sub_08046104(void);
void sub_08027140(s32 a, s32 b);
void sub_0802C66C(u32 who);

// sub_0802F058, inlined.
static inline s16 CheckSp(u32 kind, u32 level)
{
    struct Player *player = &gPlayers[GetMultiplayerId()];
    s16 cost = gUnknown_080FBB84[kind].cost[level];

    if (level != 0)
        cost += sub_0801076C();
    if (player->sp - cost < 0)
        return 0;
    return cost + 1;
}

// Status 6 for 3600 frames, its three values set to level * 10 + 5, in
// the first free (or status 6) slot of player p.
#define SET_STATUS(p, lv)                                           \
    for (j = 0; j <= 12; j++)                                       \
    {                                                               \
        if ((p)->unk1C[j] == 0 || (p)->unk1C[j] == 6)               \
        {                                                           \
            if (sub_08007510())                                     \
                sub_08046104();                                     \
            (p)->unk1C[j] = 6;                                      \
            (p)->unk24[j] = 3600;                                   \
            level = (lv) * 10 + 5;                                  \
            (p)->unk20[j].unk0[5] = level;                          \
            (p)->unk20[j].unk0[6] = level;                          \
            (p)->unk20[j].unk0[7] = level;                          \
            j = 13;                                                 \
        }                                                           \
    }

// Action thread of kind 5 (started by sub_0802BFB0): the caster pays the
// SP (as sub_0802F058 checks it), then every player in range (all of them
// at level 5) gets sub_0802C66C and, once the action ends, status 6.
void sub_0802BA34(u32 who, u32 slot)
{
    struct Player *player = &gPlayers[who];
    u32 me = GetMultiplayerId();
    struct PlayerInfo *info = player->unkD0;
    u16 level = ((struct PlayerInfoWords *)info)->level;
    u8 statusLevel = level;
    struct PlayerInfo *other;
    u16 paid;
    u16 layer;
    s32 res;
    s32 t;  // FAKE (decomp-permuter): a copy of res, then of j
    struct Player *local;
    u32 x;
    u32 y;
    u16 dx;
    s32 d;
    s32 e;
    s32 range;
    u16 count;
    u16 i;
    u16 j;
    u8 list[4];

    if (me == who)
    {
        res = CheckSp(((struct PlayerInfoWords *)info)->kind, level);
        paid = res;
        t = res;
        if (t == 0)
        {
            sub_08027140(0x9001B, 30);
            player->unk12 = t;
            player->unk14 = t;
            return;
        }
        player->sp -= (s16)paid - 1;
        if (player->sp < 0)
            player->sp = 0;
    }
    while (player->unk72 <= 1)
    {
        if (player->state == 7)
            goto done;
        WaitFrame();
    }
    if (me == who && !sub_08007544() && !sub_080075AC())
        PlaySE(0x2E);
    info = player->unkD0;
    x = info->x;
    y = info->y;
    count = 0;
    for (i = 0; i < sub_08001EC4(); i++)
    {
        local = &gPlayers[i];
        other = local->unkD0;
        layer = other->layer;
        if (layer)
        {
            dx = other->x - x;
            paid = other->y - y;
            if (level != 5)
            {
                d = (s16)dx >> 3;
                if (d < 0)
                    d = -d;
                range = (level + 1) * 2;
                if (d >= range)
                    continue;
                e = (s16)paid >> 3;
                if (e < 0)
                    e = -e;
                if (e >= range)
                    continue;
            }
            list[count++] = i;
        }
    }
    for (i = 0; i < count; i++)
        sub_0802C66C(list[i]);
    if (player->unk76 == 0)
        do
            WaitFrame();
        while (player->unk76 == 0);
    if (me == who)
    {
        // SET_STATUS with the slot index copied to t.
        for (j = 0; j <= 12; j++)
        {
            if (player->unk1C[j] == 0 || player->unk1C[j] == 6)
            {
                if (sub_08007510())
                    sub_08046104();
                player->unk1C[j] = 6;
                t = j;
                player->unk24[t] = 3600;
                level = statusLevel * 10 + 5;
                player->unk20[t].unk0[5] = level;
                player->unk20[t].unk0[6] = level;
                player->unk20[t].unk0[7] = level;
                j = 13;
            }
        }
        player->unk12 = 0;
        player->unk14 = 0;
    }
    else
    {
        for (i = 0; i < count; i++)
        {
            if (list[i] == me)
            {
                player = &gPlayers[me];
                SET_STATUS(player, statusLevel);
                break;
            }
        }
    }
done:
    gUnknown_030067F0[who] &= ~(1 << slot);
}
