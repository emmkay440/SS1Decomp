#ifndef GUARD_PLAYER_STATS_H
#define GUARD_PLAYER_STATS_H

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
#define OPTIONS_BGM_ON        (1 << 0)
#define OPTIONS_CONTROLS_B    (1 << 1)  // 0 = control type A, 1 = B
#define OPTIONS_WINDOW_R(x)   (((x) >> 2) & 0x1F)   // default 7
#define OPTIONS_WINDOW_G(x)   (((x) >> 7) & 0x1F)   // default 11
#define OPTIONS_WINDOW_B(x)   (((x) >> 12) & 0x1F)  // default 16

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
    // +0x40..+0x63: the "skill block" (GetSkillBlock / SetSkillBlock)
    u16 skillPoints;  // +0x40 unspent; +1 per level up
    u8 unk42[0x2];
    struct Skill skills[NUM_SKILLS]; // +0x44
    u16 unk64;
    u16 unk66[3];
    u16 currentWeapon; // +0x6C index into weapons
    u8 unk6E[0x2];
    u32 weapons[3];   // +0x70 item words (category 2)
    u32 unk7C;        // +0x7C equipment slot? (empty on both characters seen)
    u32 armor;        // +0x80 item word (category 3); guess
    u32 unk84;        // +0x84 equipment slot? (empty on both characters seen)
    u32 inventory[INVENTORY_SIZE]; // +0x88 item words, see docs/variables.md
    u8 unkEC[0x18C];
    u32 options;      // +0x278 OPTIONS_* bits; last saved word
};

#define SAVE_DATA_SIZE 0x27C  // bytes of gPlayerStats that SaveGame writes

extern struct PlayerStats gPlayerStats;
extern const u32 gExpTable[];

bool32 AddExp(struct PlayerStats *stats, u32 amount);
u32 GetExpToNextLevel(void);

#endif // GUARD_PLAYER_STATS_H
