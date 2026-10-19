#include "global.h"
#include "enemy.h"
#include "item.h"
#include "player.h"
#include "player_stats.h"
#include "sound.h"

u32 GetPlayerClass(void);
u32 sub_080102C4(void);
bool32 sub_08007638(void);
int sub_08010E00(void);
int sub_08011200(void);
s16 sub_080119DC(s16 damage);
bool32 sub_08027790(u32 who, u32 a, u32 b, u32 c);
void sub_080184F8(s32 x, s32 y);
u16 Random(void);
int abs(int x);

// Bytes 1 and 3 of a weapon's item word: flag14 (an elemental weapon?)
// and the element bits (24-25, a guess).
struct WeaponByte1
{
    u8 unk0:6;
    u8 flag14:1;
    u8 unk7:1;
} __attribute__((packed));

struct WeaponByte3
{
    u8 element:2;
    u8 unk2:6;
} __attribute__((packed));

// Damage of the local player's attack on `enemy`: attack times a factor
// (by state, class and sub_080102C4) minus half of 10 * Enemy.unk70 (halved
// again with status 1), over 20, plus a random part; a critical hit (1 in
// 32, more with Player +0x4C) doubles it. Elemental weapons (flag14) scale
// it by the enemy's resistance and can give a status. Heals the player by
// sub_080119DC of the damage; the class 3 attack also lowers Enemy.unk70.
u16 sub_08017150(struct Player *player, struct Enemy *enemy)
{
    struct PlayerStats *stats;
    u32 crit;
    u8 *weapon;
    s16 roll;
    u16 damage;
    u16 defense;
    u32 flag;
    s16 chance;
    s32 percent;
    s16 power;
    s16 d;
    s32 t;

    stats = player->stats;
    weapon = GetWeaponRecord((struct Item *)&stats->weapons[stats->currentWeapon]);
    damage = 0;
    defense = enemy->unk70 * 10;
    if (!sub_08007638() && (enemy->statusMask & 1))
        defense = (s16)defense >> 1;
    if ((Random() & 0x1F) <= *(s16 *)player->unk4C + 1)
    {
        PlaySE(0x27);
        sub_080184F8(enemy->x, enemy->y);
        crit = TRUE;
    }
    else
    {
        PlaySE(0x1A);
        crit = FALSE;
    }
    roll = Random();
    if (crit)
        roll = 0xFFFF;

    if (player->state == 5)
    {
        switch ((s32)GetPlayerClass())
        {
        case 0:
            switch (sub_080102C4() - 1)
            {
            case 0:
            case 1:
                power = player->attack * (player->unk14 * 2 + 10);
                damage = (s16)(power - (s16)defense / 2) / 20;
                break;
            case 2:
                power = player->attack * 12;
                damage = (s16)(power - (s16)defense / 2) / 20;
                break;
            }
            break;
        case 2:
            switch (sub_080102C4() - 1)
            {
            case 0:
                power = player->attack * 12;
                damage = (s16)(power - (s16)defense / 2) / 20;
                break;
            case 1:
                power = player->attack * (player->unk14 * 2 + 10);
                damage = (s16)(power - (s16)defense / 2) / 20;
                break;
            }
            break;
        case 3:
            power = player->attack * (player->unk14 * 2 + 10);
                damage = (s16)(power - (s16)defense / 2) / 20;
            break;
        }
    }
    else
    {
        damage = ((s16)(player->attack * 10) - (s16)defense / 2) / 20;
    }

    d = damage;
    if (d <= 0)
    {
        damage = 1;
    }
    else
    {
        if (crit)
            roll = 15;
        damage = d + (((roll & 15) * d) >> 5);
    }

    switch (enemy->unk76)
    {
    case 1:
        percent = sub_08011200();
        goto scale;
    case 2:
        percent = sub_08010E00();
    scale:
        d = damage;
        damage = d + d * (s16)percent / 100;
        break;
    }
    if ((s16)damage <= 0)
        damage = 1;

    flag = ((struct WeaponByte1 *)((u8 *)&stats->weapons[stats->currentWeapon] + 1))->flag14;
    if (flag == 1)
    {
        switch (weapon[0x15B])
        {
        case 1:
            damage = (s16)damage * (110 - enemy->unk78) / 60;
            enemy->unk3E = 4;
            break;
        case 2:
            damage = (s16)damage * (110 - enemy->unk7A) / 60;
            chance = 70 - enemy->unk7A;
            if (chance > abs((s16)Random()) % 100)
                enemy->unk3E = flag;
            break;
        case 3:
            damage = (s16)damage * (110 - enemy->unk7C) / 60;
            enemy->unk3E = 5;
            break;
        }
        switch (((struct WeaponByte3 *)((u8 *)&stats->weapons[stats->currentWeapon] + 3))->element)
        {
        case 1:
            damage = (s16)damage * (110 - enemy->unk78) / 60;
            enemy->unk3E = 4;
            break;
        case 2:
            damage = (s16)damage * (110 - enemy->unk7A) / 60;
            chance = 70 - enemy->unk7A;
            if (chance > abs((s16)Random()) % 100)
            {
                enemy->unk3E = 1;
                PlaySE(0x29);
            }
            else
            {
                enemy->unk3E = 0;
            }
            break;
        case 3:
            damage = (s16)damage * (110 - enemy->unk7C) / 60;
            enemy->unk3E = 5;
            break;
        }
        if ((s16)damage <= 0)
            damage = 1;
    }
    if (crit)
        damage *= 2;

    // the damage is kept shifted up for both the call and the return value
    // (nothing more natural matched)
    t = damage << 16;
    player->hp += sub_080119DC(t >> 16);
    if (player->hp > player->maxHp)
        player->hp = player->maxHp;
    if (GetPlayerClass() == 3)
    {
        enemy->unk70 -= stats->skillBlock.skills[2].level * 12;
        if (enemy->unk70 & 0x8000)
            enemy->unk70 = 0;
        sub_08027790(0, 2, enemy->type, stats->skillBlock.skills[2].level);
    }
    return (u32)t >> 16;
}
