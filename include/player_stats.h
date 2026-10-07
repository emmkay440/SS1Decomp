#ifndef GUARD_PLAYER_STATS_H
#define GUARD_PLAYER_STATS_H

#include "item.h"

// The local player's character (gPlayerStats, 0x03003D10). This is the save
// slot: SaveGame writes its first 0x27C bytes plus a checksum byte to the
// flash sector numbered saveSlot. See docs/variables.md.
// unk* fields aren't known yet.

#define MAX_LEVEL 99

// gPlayerStats.classAndColor >> 2 (RAM, 2026-10-07)
#define CLASS_WARRIOR 0
#define CLASS_MAGE    1
#define INVENTORY_SIZE 25

// gPlayerStats.options (read from RAM, 2026-10-07)
struct Options
{
    u32 bgm:1;        // 1 = on
    u32 controls:1;   // 0 = type A, 1 = type B
    u32 windowR:5;    // window color, default 7
    u32 windowG:5;    // default 11
    u32 windowB:5;    // default 16
    u32 unk17:15;
};

// Skills in menu order (= array order, checked with watch.py), per class:
// Warrior: Sword, Axe, Spear, Def build-up, Efficacy, Mental power,
//          Cold res, Thunder res
// Mage:    Blaze, Freeze, Spark, Blast, Inferno, Res, Heal, Slow
#define NUM_SKILLS 8

struct Skill
{
    u16 level;        // 1 point in Thunder res = 1 (the menu shows 15)
    u16 unk2;
};

// gPlayerStats +0x24..+0x3F, copied with GetStatBlock/SetStatBlock
struct StatBlock
{
    u16 str;
    u16 vit;
    u16 int_;
    u16 dex;
    u16 unk8;
    u8 unkA[0x6];
    u32 exp;
    u32 level;
    u16 statPoints;
    u8 unk1A[0x2];
};

// gPlayerStats +0x40..+0x63, copied as a whole by GetSkillBlock/SetSkillBlock
struct SkillBlock
{
    u16 points;       // unspent; +1 per level up
    u8 unk2[0x2];
    struct Skill skills[NUM_SKILLS];
};

struct PlayerStats
{
    u16 name[16];     // +0x00 character codes; 'A' = 0xB1, 'B' = 0xB2?; 0-terminated
    u16 classAndColor; // +0x20 bits 0-1 color scheme (0-3), bits 2+ class (CLASS_*)
    u16 saveSlot;     // +0x22 flash sector SaveGame writes to
    // +0x24..+0x3F: the "stat block" (GetStatBlock / SetStatBlock)
    u16 str;          // +0x24
    u16 vit;          // +0x26
    u16 int_;         // +0x28 (always 0 for the Warrior)
    u16 dex;          // +0x2A
    u16 unk2C;        // +0x2C 5 on a level 2 Warrior
    u8 unk2E[0x6];
    u32 exp;          // +0x34 total EXP (AddExp)
    u32 level;        // +0x38
    u16 statPoints;   // +0x3C unspent; +4 per level up
    u8 unk3E[0x2];
    struct SkillBlock skillBlock; // +0x40 (GetSkillBlock / SetSkillBlock)
    u16 unk64;
    u16 unk66[3];
    u16 currentWeapon; // +0x6C index into weapons
    u8 unk6E[0x2];
    u32 weapons[3];   // +0x70 item words (category 2)
    u32 head;         // +0x7C item word (category 4); Bandana on the Warrior
    u32 armor;        // +0x80 item word (category 3, body)
    u32 unk84;        // +0x84 third equipment slot (category 5); empty so far
    struct Item inventory[INVENTORY_SIZE]; // +0x88
    u8 unkEC[0x184];
    u16 unk270_0:9;
    u16 unk270_9:1;   // +0x270 bit 9: shown on the save select screen (SaveSlotInfo.unk5)
    u16 unk270_10:6;
    u8 unk272[0x6];
    struct Options options; // +0x278 last saved word
};

#define SAVE_DATA_SIZE 0x27C  // bytes of gPlayerStats that SaveGame writes

extern struct PlayerStats gPlayerStats;
extern const u32 gExpTable[];

bool32 AddExp(struct PlayerStats *stats, u32 amount);
u32 GetExpToNextLevel(void);
void GetStatBlock(void *dest);
void SetStatBlock(const void *src);
u8 GetPlayerClass(void);
void GetSkillBlock(struct SkillBlock *dest);
void SetSkillBlock(const struct SkillBlock *src);

#endif // GUARD_PLAYER_STATS_H
