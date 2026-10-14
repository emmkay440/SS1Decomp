#include "global.h"
#include "item.h"
#include "player.h"
#include "player_stats.h"

extern const struct StatBlock gUnknown_080FB750[];     // per class
// Item words for the starting equipment and the name bonuses.
extern const u32 gUnknown_080FB7F0;
extern const u32 gUnknown_080FB7F4;
extern const u32 gUnknown_080FB7F8;
extern const u32 gUnknown_080FB7FC;
extern const u32 gUnknown_080FB800;
extern const u32 gUnknown_080FB804;
extern const u32 gUnknown_080FB808;
extern const u32 gUnknown_080FB80C;
extern const u32 gUnknown_080FB810;
extern const u32 gUnknown_080FB814;
extern const u32 gUnknown_080FB818;
extern const u32 gUnknown_080FB81C;
extern const u32 gUnknown_080FB820;
extern const u32 gUnknown_080FB848;
extern const u32 gUnknown_080FB84C;
extern const u32 gUnknown_080FB850;
extern const u32 gUnknown_080FB854;
extern const u32 gUnknown_080FB858;
extern const u32 gUnknown_080FB85C;
extern const u32 gUnknown_080FB860;
extern const u32 gUnknown_080FB864;
extern const u32 gUnknown_080FB868;
extern const u32 gUnknown_080FB86C;
extern const u32 gUnknown_080FB870;

u32 GetPlayerClass(void);
u32 sub_080141F8(struct Item *item, u32 slot);
void SetInventorySlot(u8 i, u32 value);
void SetArmor(u32 value);
bool32 AddItemToInventory(struct Item *item);
u32 sub_080150D4(void);
void sub_080140AC(void);
void sub_08014114(void);
void sub_08014160(void);
void sub_0801574C(struct Player *player);
void sub_08016270(struct Player *player);

// New game setup of the local player: the class's starting stat block and
// equipment, then a bonus by sub_080150D4 (the index of the player's name
// in a name list): better armor and a stat for the right class, or items,
// else the default armor. Then the starting items and the stats
// recomputed, with SP and HP capped.
void sub_0801516C(void)
{
    struct PlayerStats *stats = &gPlayerStats;
    struct Player *player = &gPlayers[GetMultiplayerId()];

    *(struct StatBlock *)&stats->str = gUnknown_080FB750[stats->classAndColor >> 2];
    switch ((u8)GetPlayerClass())
    {
    case 0:
        sub_080141F8((struct Item *)&gUnknown_080FB7F0, 0);
        sub_080141F8((struct Item *)&gUnknown_080FB7F4, 1);
        sub_080141F8((struct Item *)&gUnknown_080FB7FC, 2);
        SetInventorySlot(0, gUnknown_080FB848);
        break;
    case 3:
        sub_080141F8((struct Item *)&gUnknown_080FB7F4, 0);
        sub_080141F8((struct Item *)&gUnknown_080FB800, 1);
        SetInventorySlot(0, gUnknown_080FB848);
        break;
    case 2:
        sub_080141F8((struct Item *)&gUnknown_080FB7F8, 0);
        sub_080141F8((struct Item *)&gUnknown_080FB7FC, 1);
        SetInventorySlot(0, gUnknown_080FB848);
        break;
    case 1:
        sub_080141F8((struct Item *)&gUnknown_080FB808, 0);
        sub_080141F8((struct Item *)&gUnknown_080FB80C, 1);
        SetInventorySlot(0, gUnknown_080FB84C);
        break;
    }
    switch (sub_080150D4())
    {
    case 0:
        if ((u8)GetPlayerClass() == 0)
        {
            SetArmor(gUnknown_080FB810);
            stats->str += 2;
        }
        else
            SetArmor(gUnknown_080FB804);
        break;
    case 1:
        if ((u8)GetPlayerClass() == 1)
        {
            SetArmor(gUnknown_080FB814);
            stats->int_ += 3;
        }
        else
            SetArmor(gUnknown_080FB804);
        break;
    case 2:
        if ((u8)GetPlayerClass() == 2)
        {
            SetArmor(gUnknown_080FB818);
            stats->vit += 5;
        }
        else
            SetArmor(gUnknown_080FB804);
        break;
    case 3:
        if ((u8)GetPlayerClass() == 3)
        {
            SetArmor(gUnknown_080FB81C);
            stats->dex += 5;
        }
        else
            SetArmor(gUnknown_080FB804);
        break;
    case 4:
        if ((u8)GetPlayerClass() == 3)
        {
            SetArmor(gUnknown_080FB820);
            stats->str += 5;
        }
        else
            SetArmor(gUnknown_080FB804);
        break;
    case 5:
        AddItemToInventory((struct Item *)&gUnknown_080FB850);
        SetArmor(gUnknown_080FB804);
        break;
    case 6:
        AddItemToInventory((struct Item *)&gUnknown_080FB854);
        SetArmor(gUnknown_080FB804);
        break;
    case 7:
        AddItemToInventory((struct Item *)&gUnknown_080FB858);
        SetArmor(gUnknown_080FB804);
        break;
    case 8:
        AddItemToInventory((struct Item *)&gUnknown_080FB86C);
        AddItemToInventory((struct Item *)&gUnknown_080FB86C);
        SetArmor(gUnknown_080FB804);
        break;
    case 9:
        AddItemToInventory((struct Item *)&gUnknown_080FB85C);
        AddItemToInventory((struct Item *)&gUnknown_080FB85C);
        SetArmor(gUnknown_080FB804);
        break;
    case 10:
        AddItemToInventory((struct Item *)&gUnknown_080FB860);
        AddItemToInventory((struct Item *)&gUnknown_080FB864);
        AddItemToInventory((struct Item *)&gUnknown_080FB868);
        AddItemToInventory((struct Item *)&gUnknown_080FB868);
        SetArmor(gUnknown_080FB804);
        break;
    case 11:
        if ((u8)GetPlayerClass() == 0)
            stats->str += 10;
        SetArmor(gUnknown_080FB804);
        break;
    case 12:
        if ((u8)GetPlayerClass() == 1)
            stats->int_ += 10;
        SetArmor(gUnknown_080FB804);
        break;
    case 13:
        if ((u8)GetPlayerClass() == 2)
            stats->dex += 10;
        SetArmor(gUnknown_080FB804);
        break;
    case 14:
        if ((u8)GetPlayerClass() == 3)
            stats->vit += 10;
        SetArmor(gUnknown_080FB804);
        break;
    default:
        SetArmor(gUnknown_080FB804);
        break;
    }
    stats->currentWeapon = 0;
    sub_080140AC();
    sub_08014114();
    sub_08014160();
    AddItemToInventory((struct Item *)&gUnknown_080FB86C);
    AddItemToInventory((struct Item *)&gUnknown_080FB870);
    sub_0801574C(player);
    sub_08016270(player);
    if (player->sp > player->maxSp)
        player->sp = player->maxSp;
    if (player->hp > player->maxHp)
        player->hp = player->maxHp;
}
