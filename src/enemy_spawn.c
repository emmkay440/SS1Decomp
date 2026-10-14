#include "global.h"
#include "data_record.h"
#include "enemy.h"
#include "map.h"
#include "player.h"
#include "thread.h"

// An enemy placement as SpawnEnemy reads it.
struct EnemySpawn
{
    u8 unk0[0x8];
    u32 kind:8;        // +0x08 record id + 1
    u32 x:12;          // in pixels
    u32 y:12;
    u32 unkC_0:4;      // +0x0C
    u32 unkC_4:4;      // Enemy.unk08
    u32 layer:6;       // above 20: on gMapLayer_03003910.unk6C, with pendingDamage = unkC_22
    u32 type:8;
    u32 unkC_22:9;
    u32 unkC_31:1;
};

// The 0x2C bytes of an enemy record that SpawnEnemy copies to Enemy +0x64.
struct EnemyRecordStats
{
    u32 words[11];
};

extern struct Thread gEnemyThreads[];
extern u8 gEnemyStacks[MAX_ENEMIES][0x400];
extern const u16 gUnknown_080FB740[][2];  // by player count - 1: percent added to unk72, unk6E

u32 sub_080076A8(void);
u32 sub_08001EC4(void);
void EnemyThread(struct Enemy *enemy);

static inline s32 FindFreeEnemySlotInline(void)
{
    s32 i;

    for (i = 0; i < 5; i++)
        if (!(gActiveEnemyMask & (1 << i)))
            return i;
    return -1;
}

// Takes a free enemy slot (FALSE if there's none) and starts EnemyThread
// for it: the enemy's stats come from its data record (+0x47 ids when
// sub_080076A8 says so), raised by player count (unk6E, unk72), its
// position and layer from `spawn`.
bool32 SpawnEnemy(struct EnemySpawn *spawn)
{
    s32 slot = FindFreeEnemySlotInline();
    struct Enemy *enemy;
    u32 id;
    void *record;
    u16 n;

    if (slot < 0)
        return FALSE;
    gActiveEnemyMask |= 1 << slot;
    enemy = &gEnemies[slot];
    id = spawn->kind - 1;
    if (sub_080076A8())
        id += 0x47;
    record = GetDataRecord(id | 0x40000);
    enemy->slot = slot;
    enemy->type = spawn->type;
    enemy->x = spawn->x << 12;
    enemy->y = spawn->y << 12;
    enemy->homeX = spawn->x << 12;
    enemy->homeY = spawn->y << 12;
    *(struct EnemyRecordStats *)&enemy->unk64 = *(struct EnemyRecordStats *)record;
    n = sub_08001EC4() - 1;
    enemy->unk6E += enemy->unk6E * gUnknown_080FB740[n][1] / 100;
    enemy->unk72 += enemy->unk72 * gUnknown_080FB740[n][0] / 100;
    if (spawn->layer > 20)
    {
        enemy->pendingDamage = 0;
        enemy->unk30 = 0;
        enemy->pendingDamage = spawn->unkC_22;
        enemy->unk26 = gMapLayer_03003910.unk6C;
    }
    else
    {
        enemy->unk26 = spawn->layer;
        enemy->state = 0;
        enemy->unk0C = 0;
        enemy->pendingDamage = 0;
        enemy->unk2A = 0;
        enemy->unk30 = 0;
    }
    enemy->unk08 = spawn->unkC_4;
    enemy->unk36 = 0;
    enemy->unk3E = 0;
    enemy->statusMask = 0;
    enemy->statusTimer[0] = 0;
    enemy->statusTimer[1] = 0;
    enemy->statusTimer[2] = 0;
    enemy->hp = enemy->unk72;
    enemy->unk3A = enemy->unk74;
    enemy->unk2C = slot << 24;
    enemy->unk54 = 0;
    enemy->unk58 = 0;
    enemy->unk5C = 0;
    enemy->unk60 = 0;
    enemy->unk3C = 0;
    enemy->unk20 = 0;
    enemy->unk50 = enemy->slot + 1;
    gPlayers[GetMultiplayerId()].enemyDistance[enemy->slot] = 0xFFFF;
    gEnemyThreads[slot].entry = EnemyThread;
    gEnemyThreads[slot].sp = gEnemyStacks[slot] + 0x3FC;
    gEnemyThreads[slot].stack = NULL;
    gEnemyThreads[slot].priority = 60;
    gEnemyThreads[slot].prev = NULL;
    gEnemyThreads[slot].next = NULL;
    gEnemyThreads[slot].onExit = NULL;
    CreateThread(&gEnemyThreads[slot], enemy);
    return TRUE;
}
