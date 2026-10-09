#ifndef GUARD_ENEMY_H
#define GUARD_ENEMY_H

// Field names come from reading SpawnEnemy / ApplyEnemyDamage, see
// docs/variables.md. unk* fields aren't known yet.

#define MAX_ENEMIES 5

#define ENEMY_STATE_DEAD 8

struct Enemy
{
    u16 slot;            // +0x00
    u16 type;            // +0x02
    u8 unk04[0x6];
    u16 state;           // +0x0A
    u8 unk0C[0x4];
    s32 x;               // +0x10 fixed point
    s32 y;               // +0x14
    s32 homeX;           // +0x18 set to x by SpawnEnemy
    s32 homeY;           // +0x1C
    u8 unk20[0x8];
    u16 pendingDamage;   // +0x28
    u8 unk2A[0x2];
    u32 unk2C;           // +0x2C slot << 24 (sub_08036D28)
    u8 unk30[0x8];
    u16 hp;              // +0x38
    u8 unk3A[0x5A];
};                       // size 0x94

extern struct Enemy *gEnemies;
extern u32 gActiveEnemyMask;

bool32 ApplyEnemyDamage(struct Enemy *enemy);
bool32 IsEnemyTypeActive(u16 type);

#endif // GUARD_ENEMY_H
