#include "global.h"
#include "data_record.h"
#include "map.h"

// The item word with its random bonuses (equipment).
struct ItemBits
{
    u32 unk0:4;
    u32 category:3;
    u32 id:7;
    u32 flag14:1;
    u32 prefix:5;      // +1: index of a 0xD0000 prefix record
    u32 plus:4;        // "+n"
    u32 element:2;
    u32 hasBonus:1;    // set when any of the three is
    u32 unk27:5;
};

int abs(int x);
u16 Random(void);

// Rolls the random bonuses of a new equipment item: which of element (bit
// 0), prefix (bit 1) and "+n" (bit 2) it gets (kinds 1-7 at random when bit
// 0 of flags is set), the element, a prefix weighted by the prefix records'
// chances for the item's category, and the "+n" from one of three tables
// (flags bit 1, bit 2 scaled by the area, or the default). Items whose
// record has any of three flags set get no bonuses. (Names are guesses.)
void sub_080124E8(struct ItemBits *item, u32 flags)
{
    u32 count;
    u32 noBonus;
    u32 r;
    u32 kinds;
    u32 element;
    u32 prefix;
    u32 plus;
    u32 acc;
    u32 i;
    u8 *weapon;
    // FAKE (permuter): t1-t3 only hold the record offsets below, to steer
    // register allocation.
    int t1;
    char t2;
    int t3;

    count = sub_08002E18(0xD);
    if (!(flags & 1))
        noBonus = (Random() & 3) != 1;
    else
        noBonus = 0;
    r = abs((s16)Random()) & 15;
    kinds = 0;
    switch (item->category)
    {
    case 2:
        if (r <= 2)
        {
            kinds = 7;
        }
        else if (r <= 7)
        {
            r = abs((s16)Random()) & 15;
            if (r <= 4)
                kinds = 3;
            else if (r <= 9)
                kinds = 5;
            else
                kinds = 6;
        }
        else
        {
            r = abs((s16)Random()) & 15;
            if (r <= 4)
                kinds = 1;
            else if (r <= 9)
                kinds = 2;
            else
                kinds = 4;
        }
        break;
    case 3:
    case 4:
        if (r <= 7)
        {
            if ((u32)(abs((s16)Random()) & 15) <= 7)
                kinds = 2;
            else
                kinds = 4;
        }
        else
        {
            kinds = 6;
        }
        break;
    }
    if (noBonus)
        kinds = 0;
    if (flags & 1)
    {
        kinds = abs((s16)Random()) & 7;
        kinds++;
    }

    if (kinds & 1)
    {
        r = (s16)(Random() & 0x10);
        if (r <= 5)
            element = 3;
        else if (r <= 8)
            element = 2;
        else
            element = 1;
    }
    else
    {
        element = 0;
    }

    if (kinds & 2)
    {
        acc = 0;
        r = abs((s16)Random()) & 0xFF;
        prefix = 0;
        for (i = 0; i < count; i++)
        {
            u8 *record = GetDataRecord(0xD0000 | i);
            u32 next;
            u32 c;

            switch (item->category)
            {
            case 2:
                weapon = GetDataRecord(item->id | 0x50000);
                if (weapon[0x159] == 8)
                    c = record[0x157];
                else
                    c = record[0x156];
                next = c + acc;
                if (r >= acc && r < next)
                {
                    prefix = i + 1;
                    i = count;
                }
                else
                {
                    acc = next;
                }
                break;
            case 3:
            case 4:
                c = record[0x158];
                if (r >= acc && r < c + acc)
                {
                    prefix = i + 1;
                    i = count;
                }
                else
                {
                    acc += c;
                }
                break;
            }
        }
        if (prefix == 0)
            prefix = 1;
    }
    else
    {
        prefix = 0;
    }

    if (kinds & 4)
    {
        if (flags & 2)
        {
            r = (u32)abs((s16)Random()) % 15;
            if (r == 0)
                plus = 4;
            else if (r <= 2)
                plus = 3;
            else if (r <= 6)
                plus = 2;
            else
                plus = 1;
        }
        else if (flags & 4)
        {
            r = abs((s16)Random());
            r = ((abs((s16)Random()) << 16) | r) % 0x7FFF;
            if (gMapLayer_03003910.unk68 > 7 && r <= 1)
                plus = 15;
            else if (gMapLayer_03003910.unk68 > 6 && r <= 2)
                plus = 14;
            else if (gMapLayer_03003910.unk68 > 5 && r <= 6)
                plus = 13;
            else if (gMapLayer_03003910.unk68 > 4 && r <= 14)
                plus = 12;
            else if (gMapLayer_03003910.unk68 > 2 && r <= 30)
                plus = 11;
            else if (r <= 62)
                plus = 10;
            else if (r <= 126)
                plus = 9;
            else if (r <= 254)
                plus = 8;
            else if (r <= 510)
                plus = 7;
            else if (r <= 1022)
                plus = 6;
            else if (r <= 2046)
                plus = 5;
            else if (r <= 4094)
                plus = 4;
            else if (r <= 8190)
                plus = 3;
            else if (r <= 16382)
                plus = 2;
            else
                plus = 1;
        }
        else
        {
            r = (u32)abs((s16)Random()) % 0x1FF;
            if (r == 0)
                plus = 9;
            else if (r <= 2)
                plus = 8;
            else if (r <= 6)
                plus = 7;
            else if (r <= 14)
                plus = 6;
            else if (r <= 30)
                plus = 5;
            else if (r <= 62)
                plus = 4;
            else if (r <= 126)
                plus = 3;
            else if (r <= 254)
                plus = 2;
            else
                plus = 1;
        }
    }
    else
    {
        plus = 0;
    }

    switch (item->category)
    {
    case 2:
        weapon = GetDataRecord(item->id | 0x50000);
        if (weapon[0x159] == 8)
            element = 0;
        if ((flags & 1) && prefix == 0 && plus == 0 && element == 0)
            plus = 1;
        item->prefix = prefix;
        item->plus = plus;
        item->element = element;
        if (prefix != 0 || plus != 0 || element != 0)
            item->hasBonus = TRUE;
        else
            item->hasBonus = FALSE;
        for (i = 0; i <= 2; i++)
        {
            if (weapon[(t1 = 0x153) + i] != 0)
            {
                item->prefix = 0;
                item->plus = 0;
                item->element = 0;
                item->hasBonus = FALSE;
            }
        }
        break;
    case 4:
    {
        u8 *head = GetDataRecord(item->id | 0x70000);

        if ((flags & 1) && prefix == 0 && plus == 0)
            plus = 1;
        item->prefix = prefix;
        item->plus = plus;
        item->element = 0;
        if (prefix != 0 || plus != 0)
            item->hasBonus = TRUE;
        else
            item->hasBonus = FALSE;
        for (i = 0; i <= 2; i++)
        {
            if (head[(t2 = 0xF2) + i] != 0)
            {
                item->prefix = 0;
                item->plus = 0;
                item->element = 0;
                item->hasBonus = FALSE;
            }
        }
        break;
    }
    case 3:
    {
        u8 *armor = GetDataRecord(item->id | 0x60000);

        if ((flags & 1) && prefix == 0 && plus == 0)
            plus = 1;
        item->prefix = prefix;
        item->plus = plus;
        item->element = 0;
        if (prefix != 0 || plus != 0)
            item->hasBonus = TRUE;
        else
            item->hasBonus = FALSE;
        for (i = 0; i <= 2; i++)
        {
            if (armor[(t3 = 0xF2) + i] != 0)
            {
                item->prefix = 0;
                item->plus = 0;
                item->element = 0;
                item->hasBonus = FALSE;
            }
        }
        break;
    }
    }
}
