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
    u8 unk04[0x4];
    u16 unk08;
    u16 state;           // +0x0A
    u16 unk0C;
    u8 unk0E[0x2];
    s32 x;               // +0x10 fixed point
    s32 y;               // +0x14
    s32 homeX;           // +0x18 set to x by SpawnEnemy
    s32 homeY;           // +0x1C
    u8 unk20[0x2];
    u16 unk22;           // +0x22 5 sets a flag in the kind 4 queue entry (sub_080273DC)
    u16 unk24;
    u16 unk26;           // +0x26 map layer the enemy is on (compared with Player.layer)
    u16 pendingDamage;   // +0x28
    u16 unk2A;           // +0x2A the last hit's damage (sub_080297D4)
    u32 unk2C;           // +0x2C slot << 24 (sub_08036D28)
    u32 unk30;           // +0x30 the attacker's Player.unk7C
    u16 unk34;           // +0x34 the attacker's player id
    u16 unk36;
    u16 hp;              // +0x38
    u8 unk3A[0x4];
    u16 unk3E;
    u8 unk40[0x14];
    u32 unk54;
    u8 unk58[0x4];
    u32 unk5C;
    u8 unk60[0x4];
    u16 unk64;
    u16 unk66;
    u16 unk68;
    u16 unk6A;
    u16 unk6C;
    u16 unk6E;
    u16 unk70;           // +0x70 reduced by sub_08016F44 (amount * 12), floor 0
    u16 unk72;
    u16 unk74;
    u16 unk76;
    u16 unk78;
    u16 unk7A;
    u16 unk7C;
    u8 unk7E[0x4];
    u16 unk82;           // +0x82 index into gUnknown_080FB4B8 (body size)
    u8 unk84[0x8];
    u32 unk8C;
    u8 unk90[0x4];
};                       // size 0x94

// Three 12-byte records with an in-use mask (gUnknown_03005DA8); purpose
// unknown.
struct Unknown_03005DB0
{
    u32 unk0;
    u32 unk4;
    u32 unk8;
};

extern struct Enemy *gEnemies;
extern u32 gActiveEnemyMask;
extern struct Unknown_03005DB0 gUnknown_03005DB0[3];

bool32 ApplyEnemyDamage(struct Enemy *enemy);
bool32 IsEnemyTypeActive(u16 type);

#endif // GUARD_ENEMY_H
