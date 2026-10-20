#include "global.h"
#include "area_state.h"
#include "enemy.h"
#include "map.h"
#include "thread.h"

// An enemy placement as SpawnEnemy reads it (src/enemy_spawn.c).
struct EnemySpawn
{
    u8 unk0[0x8];
    u32 kind:8;        // +0x08 record id + 1
    u32 x:12;          // in pixels
    u32 y:12;
    u32 unkC_0:4;      // +0x0C
    u32 unkC_4:4;      // Enemy.unk08
    u32 layer:6;
    u32 type:8;
    u32 unkC_22:9;
    u32 unkC_31:1;
};

// What Unknown_030063D8.unkC points to: an enemy spawner of the area.
struct EnemySpawner
{
    u16 x;             // +0x00 in tiles; 0xFFFF once used up
    u16 y;
    u16 kinds[3];      // +0x04 enemy record ids
    u16 counts[3];     // +0x0A how many of each are left
    u8 unk10[0x1C];
    u16 mode;          // +0x2C 0: random kinds with a short delay, 1: in order,
                       // wait for the wave, 2: in order, one at a time
    u16 trigger;       // +0x2E kind index + 1 whose enemy signals event 3000
};

extern u32 gFrameCounter;
extern u16 gUnknown_0300397C;

u32 sub_080074CC(void);
bool32 SpawnEnemy(struct EnemySpawn *spawn);
bool32 sub_08027318(u32 type, u32 arg, u32 unk20, u32 who, u32 a, u32 b);
bool32 sub_08029068(u32 value);
u16 Random(void);

#define EXIT_IF_LEFT()                                                  \
    {                                                                   \
        if (sub_080074CC() || !(gUnknown_030063D8->unk9C & 2))          \
            ThreadExit();                                               \
    }

// Thread of spawner `slot` of the current area: spawns the spawner's
// enemies one by one (state unk7A/unk48 track the ones alive), waiting
// between spawns according to the spawner's mode, then waits for the
// last ones to die and frees the slot.
void EnemySpawnerThread(u32 slot)
{
    struct EnemySpawn spawn;
    struct EnemySpawner *spawner;
    u32 spawned;
    u32 delay;
    u32 offset2;
    u32 offset4;
    u32 i;
    u32 c;
    u32 empty;
    u32 a;
    u32 id;
    u32 pick;
    u32 tries;
    u16 *counts;
    u8 n;
    u16 *pos;

    do  // FAKE (decomp-permuter): a no-op do/while (maybe a macro)
    {
        spawner = (struct EnemySpawner *)gUnknown_030063D8->unkC[slot];
        gUnknown_030063D8->unk7A[slot] = 0;
        spawned = 0;
        for (i = 0; i <= 4; i++)
            gUnknown_030063D8->unk48[slot][i] = 0;
        goto pick;

    spawn:
        spawn.kind = ++a;
        spawn.x = spawner->x * 8;
        spawn.y = spawner->y * 8;
        spawn.unkC_4 = 0;
        spawn.layer = gMapLayer_03003910.unk6C;
        spawn.type = id;
        spawn.unkC_0 = 3;
        c = spawned + 1;
    retry:
        if (!SpawnEnemy(&spawn))
        {
            EXIT_IF_LEFT();
            WaitFrame();
            goto retry;
        }
    } while (0);
    pos = &gUnknown_0300397C;
    while (!sub_08027318(a, spawner->x * 8, spawner->y * 8, 0, *pos, id))
    {
        WaitFrame();
        EXIT_IF_LEFT();
    }
    gUnknown_030063D8->unkA0 = pick;
    gUnknown_030063D8->unk48[slot][gUnknown_030063D8->unk7A[slot]] = spawn.type;
    gUnknown_030063D8->unk7A[slot]++;
    spawned = c;
    do  // FAKE (decomp-permuter): a no-op do/while around the rest
    {
    a = spawner->trigger;
    if (a != 0 && a - 1 == pick)
    {
        while (!IsEnemyTypeActive(spawn.type))
        {
            WaitFrame();
            EXIT_IF_LEFT();
        }
        WaitFrame();
        while (IsEnemyTypeActive(spawn.type))
        {
            do
                WaitFrame();
            while ((slot & 1) == (gFrameCounter & 1));
            EXIT_IF_LEFT();
        }
        if (!gUnknown_030063D8->unkAB)
        {
            SignalEvent(3000);
            while (!sub_08029068(1))
            {
                WaitFrame();
                EXIT_IF_LEFT();
            }
        }
        gUnknown_030063D8->unkAB = 1;
    }
    else
    {
        WaitFrame();
        for (i = 0; i < delay; i = c)
        {
            empty = 0;
            for (c = 0; c < spawned; c++)
            {
                if (gUnknown_030063D8->unk48[slot][c] != 0)
                {
                    if (!IsEnemyTypeActive(gUnknown_030063D8->unk48[slot][c]))
                    {
                        gUnknown_030063D8->unk48[slot][c] = 0;
                        gUnknown_030063D8->unk7A[slot]--;
                        if (gUnknown_030063D8->unk7A[slot] & 0x8000)
                            gUnknown_030063D8->unk7A[slot] = 0;
                    }
                }
                else
                {
                    empty++;
                }
            }
            if (gUnknown_030063D8->unk7A[slot] == 0 || empty >= spawned)
            {
                gUnknown_030063D8->unk7A[slot] = 0;
                break;
            }
            c = i + 1;
            do
                WaitFrame();
            while ((slot & 1) == (gFrameCounter & 1));
            EXIT_IF_LEFT();
        }
    }
    id = spawner->counts[0] + spawner->counts[1] + spawner->counts[2];
    if (id == 0)
        goto done;

pick:
    switch (spawner->mode)
    {
    case 0:
        tries = 0;
        do
        {
            tries++;
            pick = (u16)(Random() % 3);
            if (spawner->counts[pick] != 0)
                goto picked;
        } while (tries <= 5);
        pick = -1;
        for (i = 0; i <= 2; i++)
        {
            if (spawner->counts[i] != 0)
                pick = i;
        }
    picked:
        delay = (u16)(Random() % 30) + 60;
        break;
    case 1:
        pick = 0;
        counts = spawner->counts;
        if (spawner->counts[0] == 0)
        {
            do
            {
                counts++;
                pick++;
            } while (*counts == 0 && pick <= 2);
        }
        if (pick == 3)
            pick = -1;
        delay = -1;
        break;
    case 2:
        pick = 0;
        counts = spawner->counts;
        if (spawner->counts[0] == 0)
        {
            do
            {
                counts++;
                pick++;
            } while (*counts == 0 && pick <= 2);
        }
        if (pick == 3)
            pick = -1;
        delay = 1;
        break;
    }
    if (pick != -1)
    {
        a = spawner->kinds[pick];
        spawner->counts[pick]--;
        n = gUnknown_030063D8->unkAA;
        id = n + 8;
        gUnknown_030063D8->unkAA = n + 1;
        if (n > 0xF7)
        {
            do {} while (0);  // FAKE (decomp-permuter): fixes an address copy
            gUnknown_030063D8->unkAA = 1;
        }
        goto spawn;
    }

done:
again:
    empty = 0;
    for (c = 0; c < spawned; c++)
    {
        if (gUnknown_030063D8->unk48[slot][c] != 0)
        {
            if (!IsEnemyTypeActive(gUnknown_030063D8->unk48[slot][c]))
            {
                gUnknown_030063D8->unk48[slot][c] = 0;
                if (--gUnknown_030063D8->unk7A[slot] == 0 || (gUnknown_030063D8->unk7A[slot] & 0x8000))
                {
                    gUnknown_030063D8->unk7A[slot] = 0;
                    break;
                }
            }
        }
        else
        {
            empty++;
        }
    }
    if (gUnknown_030063D8->unk7A[slot] != 0 && empty < spawned)
    {
        do
            WaitFrame();
        while ((slot & 1) == (gFrameCounter & 1));
        EXIT_IF_LEFT();
        goto again;
    }
    gUnknown_030063D8->unk7A[slot] = 0;
    spawner->x = 0xFFFF;
    spawner->y = 0xFFFF;
    } while (0);
    gUnknown_030063D8->unkC[slot] = 0;
    gUnknown_030063D8->unk84 &= ~(1 << slot);
}
