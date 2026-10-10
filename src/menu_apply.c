#include "global.h"
#include "item.h"
#include "player_stats.h"
#include "save.h"
#include "sound.h"

extern u8 gMenuPage;
extern struct Item *gMenuInventory;
extern u32 *gMenuWeapons;
extern u32 *gMenuEquipment;
extern u16 *gUnknown_03000494;
extern struct Item *gUnknown_030004A4;
extern struct Item *gUnknown_030004A8;
extern struct Options *gUnknown_030004B8;

void SetInventory(u32 *src);
void SetWeapons(u32 *src);
void sub_080140AC(void);
void sub_08013A64(u32 item);
void SetArmor(u32 item);
void sub_08013A84(u32 item);
void sub_08013AF8(u16 *src);
void SetStorage(struct Item *src);

// Writes the menu's working copies back: items and equipment on the item
// pages, the options on page 9. Pages 6 and 8 change nothing.
void ApplyMenuChanges(void)
{
    if (gMenuPage != 6 && gMenuPage != 8 && gMenuPage != 9)
    {
        SetInventory((u32 *)gMenuInventory);
        if (gMenuPage != 7)
        {
            SetWeapons(gMenuWeapons);
            sub_080140AC();
            sub_08013A64(gMenuEquipment[0]);
            SetArmor(gMenuEquipment[1]);
            sub_08013A84(gMenuEquipment[2]);
            sub_08013AF8(gUnknown_03000494);
        }
        if (gMenuPage != 1)
        {
            if (gMenuPage != 5)
                SetStorage(gUnknown_030004A8);
            else
                SetStorage(gUnknown_030004A4);
        }
    }
    else if (gMenuPage == 9)
    {
        SetOptions(gUnknown_030004B8);
        SetMusicEnabled(gUnknown_030004B8->bgm);
    }
}
