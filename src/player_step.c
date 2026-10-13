#include "global.h"
#include "player.h"

struct Unknown_080FB5D0
{
    s32 x;
    s32 y;
};

extern const struct Unknown_080FB5D0 gUnknown_080FB5D0[];   // step per direction (unk0A)

u16 sub_08005A2C(s32 direction, s32 x, s32 y, u32 onLayer0);

// Moves the local player `speed` steps in its direction (unk0A). Unless
// bit 5 of unk10 is set, sub_08005A2C checks the new position first: 0
// means blocked (no move), another value is a new direction + 1, and the
// check is done once more with that one. (What sub_08005A2C returns is
// read from this function only; unverified.)
void sub_0800B78C(s32 speed)
{
    struct Player *player = &gPlayers[GetMultiplayerId()];
    s32 x;
    s32 y;
    u16 result;
    struct PlayerInfo *info;
    u32 layer;

    x = player->x;
    y = player->y;
    x += speed * gUnknown_080FB5D0[(s16)player->unk0A].x;
    y += speed * gUnknown_080FB5D0[(s16)player->unk0A].y;
    result = player->unk0A + 1;
    if (!(player->unk10 & 0x20))
    {
        result = 0;
        info = player->unkD0;
        layer = info->layer;
        if (layer == 0)
            result = 1;
        result = sub_08005A2C((s16)player->unk0A, x, y, result);
        if (result == 0)
            return;
    }
    if (result != 0)
        player->unk0A = result - 1;
    x = player->x;
    y = player->y;
    x += speed * gUnknown_080FB5D0[(s16)player->unk0A].x;
    y += speed * gUnknown_080FB5D0[(s16)player->unk0A].y;
    if (!(player->unk10 & 0x20))
    {
        result = 0;
        info = player->unkD0;
        layer = info->layer;
        if (layer == 0)
            result = 1;
        result = sub_08005A2C((s16)player->unk0A, x, y, result);
        if (result == 0 && !(player->unk10 & 0x20))
            return;
    }
    if (result != 0)
        player->unk0A = result - 1;
    player->x += gUnknown_080FB5D0[(s16)player->unk0A].x * speed;
    player->y += gUnknown_080FB5D0[(s16)player->unk0A].y * speed;
}
