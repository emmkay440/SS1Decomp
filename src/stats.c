#include "global.h"
#include "enemy.h"
#include "player.h"
#include "player_stats.h"

void sub_080140AC(void);
void sub_08014114(void);
void sub_08014160(void);
void sub_0801574C(struct Player *player);
void sub_08016270(struct Player *player);
u16 sub_08014D98(void *rec);

// Called after equipment changes; probably recomputes the player's stats.
void sub_08016DC0(void)
{
    struct Player *player = &gPlayers[GetMultiplayerId()];

    sub_080140AC();
    sub_08014114();
    sub_08014160();
    sub_0801574C(player);
    sub_08016270(player);
}

// The 7-word stat block: STR, VIT, INT, DEX, ?, EXP, level, stat points.
void GetStatBlock(void *dest)
{
    CpuCopy32(&gPlayerStats.str, dest, 28);
}

void SetStatBlock(const void *src)
{
    CpuCopy32(src, &gPlayerStats.str, 28);
}

// Same block in gPlayers (+0x2C).
void sub_08016E24(void *dest)
{
    CpuCopy32(&gPlayers[GetMultiplayerId()].str, dest, 28);
}

// gPlayers +0x48..+0x53: ATK, DEF, ?, max SP, max HP, ?
void sub_08016E4C(void *dest)
{
    CpuCopy16(&gPlayers[GetMultiplayerId()].attack, dest, 12);
}

void sub_08016E70(const void *src)
{
    CpuCopy16(src, &gPlayers[GetMultiplayerId()].attack, 12);
}

u32 GetPlayerClass(void)
{
    return (u8)(gPlayerStats.classAndColor >> 2);
}

void GetSkillBlock(struct SkillBlock *dest)
{
    *dest = gPlayerStats.skillBlock;
}

void SetSkillBlock(const struct SkillBlock *src)
{
    gPlayerStats.skillBlock = *src;
}

u16 sub_08016EDC(void)
{
    return sub_08014D98(GetWeaponRecord((struct Item *)&gPlayerStats.weapons[gPlayerStats.currentWeapon]));
}

// Refills the local player's HP (and SP for class 1) and resets the state.
void sub_08016F00(void)
{
    struct Player *player = &gPlayers[GetMultiplayerId()];

    player->hp = player->maxHp;
    if ((u8)GetPlayerClass() == 1)
        player->sp = player->maxSp;
    player->state = 0;
    player->unk10 = 0x40;
}

// Takes amount * 12 off unk70 of the enemy of type `type` (not below 0).
void sub_08016F44(u32 type, u32 amount)
{
    struct Enemy *enemy;
    u32 i;

    for (i = 0; i < 5; i++)
    {
        enemy = &gEnemies[i];
        if (enemy->type == type)
            break;
    }
    if (i > 4)
        return;
    enemy->unk70 -= amount * 12;
    if (enemy->unk70 & 0x8000)
        enemy->unk70 = 0;
}

struct PlayerStats *GetPlayerStats(void)
{
    return &gPlayerStats;
}

// TRUE if the local player is in state 9 (sub-state 9-11) or 8, has no HP,
// or the pending damage would take the rest.
bool32 sub_08016FA0(void)
{
    struct Player *player = &gPlayers[GetMultiplayerId()];
    bool32 result;

    if (player->state == 9 && (u16)(player->unk0E - 9) <= 2)
        return TRUE;
    result = FALSE;
    if (player->state == 8 || player->hp == 0 || (s16)(player->hp - player->pendingDamage[0]) <= 0)
        result = TRUE;
    return result;
}

struct Unknown_080FB7C0
{
    u32 unk0[3];
};

extern const struct StatBlock gUnknown_080FB750[];     // per class
extern const struct Unknown_080FB7C0 gUnknown_080FB7C0[];

// A class's starting stat block and a second 12-byte block.
void sub_08016FF8(u32 class, struct StatBlock *stats, struct Unknown_080FB7C0 *other)
{
    *stats = gUnknown_080FB750[class];
    *other = gUnknown_080FB7C0[class];
}

// gPlayerStats +0x270 holds two 10-bit masks; the first is read as part of
// a halfword, the second from the whole word.
// The low mask, read as a halfword: a packed, 2-byte-aligned view under
// its own symbol (= gPlayerStats + 0x270).
struct Mask270Low
{
    u16 mask:10;
    u16 unk10:6;
} __attribute__((packed, aligned(2)));

extern struct Mask270Low gUnknown_03003F80;

struct Mask270High
{
    u32 unk0:10;
    u32 mask:10;
    u32 unk20:12;
};

#define STATS_270 ((u8 *)&gPlayerStats + 0x270)

// Number of bits 1-8 set in each mask.
u16 sub_0801702C(void)
{
    u32 count = 0;
    u32 i = 1;
    s32 mask = gUnknown_03003F80.mask;

    for (; i <= 8; i++)
        if ((mask >> i) & 1)
            count++;
    return count;
}

u16 sub_0801705C(void)
{
    u32 count = 0;
    u32 i = 1;
    s32 mask = ((struct Mask270High *)STATS_270)->mask;

    for (; i <= 8; i++)
        if ((mask >> i) & 1)
            count++;
    return count;
}

// Color scheme (0-3).
u32 GetPlayerColorScheme(void)
{
    return gPlayerStats.classAndColor & 3;
}
