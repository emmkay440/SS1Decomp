#include "global.h"

#include "player_stats.h"

void sub_08014114(void);
void sub_08014160(void);
void sub_080141AC(void);

void GetInventory(u32 *dest)
{
    u32 *src = (u32 *)gPlayerStats.inventory;
    u8 i;

    for (i = 0; i < INVENTORY_SIZE; i++)
        *dest++ = *src++;
}

void SetInventorySlot(u8 i, u32 value)
{
    struct PlayerStats *s = &gPlayerStats;
    if (i > INVENTORY_SIZE - 1)
        i = 0;
    *((u32 *)s->inventory + i) = value;
}

void SetInventory(u32 *src)
{
    u32 *dest = (u32 *)gPlayerStats.inventory;
    u8 i;

    for (i = 0; i < INVENTORY_SIZE; i++)
        *dest++ = *src++;
}

u32 GetWeapon(u8 i)
{
    if (i > 2)
        i = 0;
    return gPlayerStats.weapons[i];
}

void GetWeapons(u32 *dest)
{
    u8 i;

    for (i = 0; i < 3; i++)
        *dest++ = gPlayerStats.weapons[i];
}

void SetWeapon(u8 i, u32 value)
{
    if (i > 2)
        i = 0;
    *(gPlayerStats.weapons + i) = value;
}

void SetWeapons(u32 *src)
{
    u8 i;

    for (i = 0; i < 3; i++)
        gPlayerStats.weapons[i] = *src++;
}

u32 GetArmor(void)
{
    return gPlayerStats.armor;
}

void SetArmor(u32 value)
{
    gPlayerStats.armor = value;
    sub_08014114();
}

u32 sub_08013A58(void)
{
    return gPlayerStats.head;
}

void sub_08013A64(u32 value)
{
    u32 *p = &gPlayerStats.head;
    *p = value;
    sub_08014160();
}

u32 sub_08013A78(void)
{
    return gPlayerStats.unk84;
}

void sub_08013A84(u32 value)
{
    u32 *p = &gPlayerStats.unk84;
    *p = value;
    sub_080141AC();
}

u16 GetCurrentWeaponIndex(void)
{
    return gPlayerStats.currentWeapon;
}

u16 sub_08013AA4(void)
{
    return gPlayerStats.unk64;
}

u16 sub_08013AB0(u16 i)
{
    return gPlayerStats.unk66[i];
}

void sub_08013AC4(u16 *dest)
{
    u16 i;

    for (i = 0; i < 3; i++, dest++)
        *dest = gPlayerStats.unk66[i];
}

void sub_08013AE4(u16 i, u16 value)
{
    gPlayerStats.unk66[i] = value;
}
