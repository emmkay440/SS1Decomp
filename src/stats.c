#include "global.h"
#include "player.h"
#include "player_stats.h"

void sub_080140AC(void);
void sub_08014114(void);
void sub_08014160(void);
void sub_0801574C(struct Player *player);
void sub_08016270(struct Player *player);
void sub_08013F64(u32 *item);
u16 sub_08014D98(void);

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

u8 GetPlayerClass(void)
{
    return gPlayerStats.classAndColor >> 2;
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
    sub_08013F64(&gPlayerStats.weapons[gPlayerStats.currentWeapon]);
    return sub_08014D98();
}
