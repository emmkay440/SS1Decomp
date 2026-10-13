#ifndef GUARD_PLAYER_H
#define GUARD_PLAYER_H

// struct Player, see docs/variables.md for how each field was found.
// unk* fields aren't known yet.

#define MAX_PLAYERS 4

struct Enemy;

struct Player
{
    u16 facing;           // +0x00 0 down, 1 left, 2 up, 3 right (a guess from sub_080191FC)
    u8 unk02[0x8];
    u16 unk0A;            // +0x0A SpawnPlayer sets 4
    u16 state;            // +0x0C 8, 9 are special (see ApplyPendingDamage, UseItem)
    u16 unk0E;
    u16 unk10;            // +0x10 bit 7 set by sub_08027228
    u16 unk12;            // +0x12 cleared with unk14 (sub_0800C304)
    u16 unk14;            // +0x14 index (0-5) into the table sub_0800C304 copies
    u16 layer;            // +0x16 map layer the player is on (field items are drawn when it matches)
    u16 layer2;           // +0x18 layer of the second position (sub_080191FC)
    u8 unk1A[0x2];
    u16 *unk1C;           // +0x1C 3 ids; CalcExpGain doubles EXP for each 11 (equipped item ids?)
    u8 unk20[0xC];
    // +0x2C: copy of gPlayerStats' stat block, plus resistances
    u16 str;              // +0x2C
    u16 vit;              // +0x2E
    u16 int_;             // +0x30
    u16 dex;              // +0x32
    u16 unk34;            // +0x34 5, same as gPlayerStats +0x2C
    s16 resist[3];        // +0x36 elements 1-3; [2] = thunder (15 with 1 point in Thunder res)
    u32 exp;              // +0x3C
    u32 level;            // +0x40
    u8 unk44[0x4];
    s16 attack;           // +0x48 ATK in the status menu
    s16 defense;          // +0x4A DEF in the status menu (3 with the starting armor, 0 without)
    u8 unk4C[0x2];
    s16 maxSp;            // +0x4E SP (mana) in the status menu; 0 for the Warrior
    s16 maxHp;            // +0x50
    u8 unk52[0x2];
    u16 pendingDamage[2]; // +0x54
    s32 x;                // +0x58 fixed point
    s32 y;                // +0x5C
    u8 unk60[0x8];
    s32 x2;               // +0x68 second position (sub_080191FC)
    s32 y2;               // +0x6C
    u8 unk70[0x2];
    u16 unk72;            // +0x72 sub_0800BE2C counts its changes to even values
    u16 unk74;
    u16 unk76;            // +0x76 nonzero ends the state 5 loops (sub_0800C304)
    s16 sp;               // +0x78 probably current SP (equal to maxSp when checked)
    s16 hp;               // +0x7A
    u32 unk7C;            // +0x7C counter (sub_0800BE2C)
    u8 unk80[0x22];
    u16 unkA2;            // +0xA2 where sub_080297D4 starts looking for a free unkC8 record
    u8 unkA4[0x2];
    u16 status;           // +0xA6 (unverified)
    u8 unkA8[0x6];
    u16 enemyDistance[5]; // +0xAE per enemy slot; 0x7FFF = none (sub_0802C174)
    u16 enemyDirection[5]; // +0xB8 per enemy slot, in sixteenths of a turn
    u8 unkC2[0x6];
    struct Enemy *unkC8;  // +0xC8 five copies of enemies this player hit (slot 0xFFFF = free)
    u8 unkCC[0x4];
    void *unkD0;          // +0xD0
};                        // size 0xD4

// What Player.unkD0 points to: the player as other code looks it up
// (position in pixels, state, map layer). Accessed with halfword and byte
// loads.
struct PlayerInfo
{
    u16 unk0_0:4;
    u16 x:12;
    u16 y:12;
    u16 unk2_12:4;
    u16 state:4;       // 8 = not there (dead?)
    u16 layer:6;
    u16 unk4_10:6;
} __attribute__((packed, aligned(2)));

extern struct Player gPlayers[MAX_PLAYERS];

u32 GetMultiplayerId(void);

bool32 ApplyPendingDamage(struct Player *player);

#endif // GUARD_PLAYER_H
