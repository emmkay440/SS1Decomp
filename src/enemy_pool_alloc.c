#include "global.h"
#include "heap.h"
#include "thread.h"
#include "player.h"
#include "enemy.h"

struct Table_08052BC4
{
    u32 values[6];
};

extern const struct Table_08052BC4 gUnknown_08052BC4;
extern u16 gUnknown_03005DD8;
extern u16 gUnknown_03005DD4;
extern void *gUnknown_03004998;
extern struct Thread *gUnknown_03005DA0;

void sub_0800B78C(u32 value);
void sub_0802F0B8(u32 who);

// While the local player stays in state 5 with unk76 clear, calls
// sub_0800B78C every frame with the table value picked by unk14. Then
// leaves the state (unless it became 7).
void sub_0800C304(void)
{
    struct Player *player = &gPlayers[GetMultiplayerId()];
    struct Table_08052BC4 table = gUnknown_08052BC4;
    u16 index = player->unk14;

    while (player->unk76 == 0 && player->state == 5)
    {
        sub_0800B78C(table.values[index]);
        WaitFrame();
    }
    if (player->state != 7)
        player->state = 0;
    player->unk12 = 0;
    player->unk14 = 0;
}

// Same without the per-frame call.
void sub_0800C374(void)
{
    struct Player *player = &gPlayers[GetMultiplayerId()];

    while (player->unk76 == 0 && player->state == 5)
        WaitFrame();
    if (player->state != 7)
        player->state = 0;
    player->unk12 = 0;
    player->unk14 = 0;
}

// Allocates and clears the enemy slots and the pools that go with them.
void sub_0800C3C0(void)
{
    struct Enemy *enemy;
    void **buffer;
    u32 i;

    gEnemies = Alloc(MAX_ENEMIES * sizeof(struct Enemy));
    gActiveEnemyMask = 0;
    gUnknown_03005DD8 = 0;
    gUnknown_03005DD4 = 0;
    buffer = &gUnknown_03004998;
    *buffer = Alloc(0x100);
    gUnknown_03005DA0 = Alloc(16 * sizeof(struct Thread));
    enemy = gEnemies;
    for (i = 0; i < MAX_ENEMIES; i++, enemy++)
    {
        sub_0802F0B8(i);
        enemy->slot = 0;
        enemy->unk08 = 0;
        enemy->state = 0;
        enemy->unk0C = 0;
        enemy->x = 0;
        enemy->y = 0;
        enemy->pendingDamage = 0;
        enemy->unk64 = 0;
        enemy->unk66 = 0;
        enemy->unk68 = 0;
        enemy->unk6A = 0;
        enemy->unk6E = 0;
        enemy->unk70 = 0;
        enemy->unk72 = 0;
        enemy->unk74 = 0;
        enemy->unk76 = 0;
        enemy->unk8C = 0;
        enemy->unk78 = 0;
        enemy->unk7A = 0;
        enemy->unk7C = 0;
    }
    for (i = 0; i < 3; i++)
    {
        gUnknown_03005DB0[i].unk8 = 0;
        gUnknown_03005DB0[i].unk4 = 0;
        gUnknown_03005DB0[i].unk0 = 0;
    }
}
