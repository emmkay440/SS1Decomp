#include "global.h"
#include "data_record.h"
#include "item.h"
#include "player_stats.h"

extern u16 gLanguage;
extern u16 gUnknown_03003CA0;      // character advance
extern const u32 gUnknown_080FBA9C[10];   // powers of ten, largest first

u32 sub_08007510(void);
u32 sub_080004A4(u32 *value, u32 divisor);
u32 sub_0800ED80(u16 *str);
void sub_0800EB30(u16 *str, s32 x, s32 y);

// The item word as the name drawing reads it (equipment).
struct ItemNameBits
{
    u32 unk0:4;
    u32 category:3;
    u32 id:7;
    u32 flag14:1;
    u32 prefix:5;      // +1: index of a 0xD0000 prefix record (weapons, armor)
    u32 plus:4;        // shown as "+n"
    u32 element:2;     // shown as a mark before the name (0: the record's)
    u32 flag26:1;      // shown as a single 0xFE character
    u32 unk27:5;
};

// Draws the name of `item` at (x, y) (centered on x when bit 31 of flags is
// set). flags & 0x7FFFFFFF picks the text: 0 the name (with the element
// mark, the prefix and "+n"), 1 the description (for usable items with the
// value filled in at the 0xEF mark, scaled by the Warrior's skill 4), 2 a
// second text. The record layouts (names per language at 56/40/68/48-byte
// strides) are read off the code; what modes 1 and 2 show is a guess.
void sub_08023330(s32 x, s32 y, struct Item *item, u32 flags)
{
    u16 buf[34];
    u16 digits[34];
    u32 n;
    u16 xOffset;
    u8 *usable;
    u32 flag26;
    u32 plus;
    u32 element;
    u16 *prefix;
    u16 *name;
    u32 mode;
    u8 *record;
    u8 i;
    s32 j;
    u32 value;
    u32 k;
    u32 at;

    if (item == NULL)
        return;
    prefix = NULL;
    flag26 = 0;
    plus = 0;
    element = 0;
    mode = flags & 0x7FFFFFFF;
    switch (item->category)
    {
    case 1:
        usable = GetDataRecord(item->id | 0xA0000);
        switch (mode)
        {
        case 0:
            name = (u16 *)(usable + gLanguage * 56);
            break;
        case 1:
            name = (u16 *)(usable + (gLanguage * 68 + 0x15C));
            break;
        case 2:
            name = (u16 *)(usable + (gLanguage * 68 + 0x2F4));
            break;
        }
        break;
    case 2:
        record = GetDataRecord(item->id | 0x50000);
        if (((struct ItemNameBits *)item)->prefix != 0)
            prefix = GetDataRecord((((struct ItemNameBits *)item)->prefix - 1) | 0xD0000);
        switch (mode)
        {
        case 0:
            name = (u16 *)(record + gLanguage * 56);
            break;
        case 1:
            name = (u16 *)(record + (gLanguage * 68 + 0x164));
            break;
        case 2:
            if (prefix == NULL)
                name = (u16 *)(record + (gLanguage * 48 + 0x2FC));
            else
                name = prefix + (gLanguage * 34 + 0xAE);
            break;
        }
        flag26 = ((struct ItemNameBits *)item)->flag26;
        plus = ((struct ItemNameBits *)item)->plus;
        element = ((struct ItemNameBits *)item)->element;
        if (element == 0)
            element = record[0x15B];
        break;
    case 3:
        record = GetDataRecord(item->id | 0x60000);
        if (((struct ItemNameBits *)item)->prefix != 0)
            prefix = GetDataRecord((((struct ItemNameBits *)item)->prefix - 1) | 0xD0000);
        switch (mode)
        {
        case 0:
            name = (u16 *)(record + gLanguage * 40);
            break;
        case 1:
            name = (u16 *)(record + (gLanguage * 68 + 0x104));
            break;
        case 2:
            if (prefix == NULL)
                name = (u16 *)(record + (gLanguage * 48 + 0x29C));
            else
                name = prefix + (gLanguage * 34 + 0xAE);
            break;
        }
        flag26 = ((struct ItemNameBits *)item)->flag26;
        plus = ((struct ItemNameBits *)item)->plus;
        element = ((struct ItemNameBits *)item)->element;
        break;
    case 4:
        record = GetDataRecord(item->id | 0x70000);
        if (((struct ItemNameBits *)item)->prefix != 0)
            prefix = GetDataRecord((((struct ItemNameBits *)item)->prefix - 1) | 0xD0000);
        switch (mode)
        {
        case 0:
            name = (u16 *)(record + gLanguage * 40);
            break;
        case 1:
            name = (u16 *)(record + (gLanguage * 68 + 0x104));
            break;
        case 2:
            if (prefix == NULL)
                name = (u16 *)(record + (gLanguage * 48 + 0x29C));
            else
                name = prefix + (gLanguage * 34 + 0xAE);
            break;
        }
        flag26 = ((struct ItemNameBits *)item)->flag26;
        plus = ((struct ItemNameBits *)item)->plus;
        element = ((struct ItemNameBits *)item)->element;
        break;
    case 5:
    {
        u8 *rec5 = GetDataRecord(item->id | 0xB0000);

        prefix = NULL;
        switch (mode)
        {
        case 0:
            name = (u16 *)(rec5 + gLanguage * 56);
            break;
        case 1:
            name = (u16 *)(rec5 + (gLanguage * 68 + 0x160));
            break;
        case 2:
            name = (u16 *)(rec5 + (gLanguage * 68 + 0x2F8));
            break;
        }
        flag26 = 0;
        plus = 0;
        break;
    }
    case 6:
    {
        u8 *text;

        record = GetDataRecord(item->id | 0x160000);
        text = GetDataRecord(0x900E9);
        switch (mode)
        {
        case 0:
            name = (u16 *)(record + gLanguage * 68);
            break;
        case 1:
            name = (u16 *)(text + 10);
            break;
        case 2:
        {
            // the (id + 1)th string of the list

            name = (u16 *)(text + 10);
            n = 0;
            while (1)
            {
                if (*name == 0)
                    n++;
                if (n != item->id + 1)
                    name++;
                else
                    break;
            }
            name++;
            break;
        }
        }
        break;
    }
        break;
    case 7:
        if (!sub_08007510())
        {
            u16 *p;
            u32 started;
            const u32 *table;

            n = item->count;
            table = &gUnknown_080FBA9C[4];
            p = digits;
            started = FALSE;
            for (k = 0; k <= 5; k++, table++)
            {
                u32 c = sub_080004A4(&n, *table) + 0xEF;

                *p = c;
                if (started || (u16)c != 0xEF)
                {
                    p++;
                    started = TRUE;
                }
            }
            p[0] = 0xB7;
            p[1] = 0;
            name = digits;
        }
        else
        {
            name = (u16 *)((u8 *)GetDataRecord(item->id | 0x170000) + gLanguage * 20);
        }
        break;
    case 0:
    default:
        return;
    }

    switch (mode)
    {
    case 0:
        if (flag26)
        {
            buf[0] = 0xFE;
            for (j = 0; name[j] != 0; j++)
                buf[j + 1] = name[j];
            buf[j + 1] = 0;
            break;
        }
        if (element)
        {
            buf[0] = element + 0xFA;
            j = 1;
        }
        else
        {
            j = 0;
        }
        for (i = 0; name[i] != 0; i++)
            buf[i + j] = name[i];
        j += i;
        if (prefix != NULL)
        {
            for (i = 0; *(u16 *)((u8 *)prefix + (gLanguage * 56 + i * 2)) != 0 && i <= 32; i++)
                buf[i + j] = *(u16 *)((u8 *)prefix + (gLanguage * 56 + i * 2));
            j += i;
        }
        i = j;
        if (plus != 0)
        {
            buf[i++] = 0xA3;
            j = plus / 10;
            plus = plus % 10;
            if (j != 0)
                buf[i++] = j + 0xEF;
            buf[i++] = plus + 0xEF;
            buf[i] = 0;
        }
        buf[i] = 0;
        break;
    case 1:
        i = 0;
        if (item->category == 1)
        {
            if (*(u16 *)(usable + 0x150) == 0)
            {
                if (GetPlayerClass() == 0)
                {
                    value = gPlayerStats.skillBlock.skills[4].level * 40 + 100;
                    value = *(s16 *)(usable + 0x152) * value / 100;
                }
                else
                {
                    value = *(s16 *)(usable + 0x152);
                }
                for (i = 0; name[i] != 0 && name[i] != 0xEF; i++)
                    buf[i] = name[i];
                k = i + 3;
                at = i;
                if (name[i] != 0)
                {
                    j = value / 100;
                    value = value % 100;
                    if (j != 0)
                    {
                        i++;
                        buf[at] = j + 0xEF;
                    }
                    j = value / 10;
                    value = value % 10;
                    buf[i++] = j + 0xEF;
                    buf[i++] = value + 0xEF;
                }
                while (name[k] != 0)
                {
                    buf[i] = name[k];
                    k++;
                    i++;
                }
            }
            else
            {
                for (i = 0; name[i] != 0; i++)
                    buf[i] = name[i];
            }
        }
        else
        {
            for (i = 0; name[i] != 0; i++)
                buf[i] = name[i];
        }
        buf[i] = 0;
        break;
    case 2:
        i = 0;
        if (flag26)
        {
            buf[0] = 0xFE;
            i = 1;
        }
        else
        {
            for (i = 0; name[i] != 0; i++)
                buf[i] = name[i];
        }
        buf[i] = 0;
        break;
    }
    xOffset = 0;
    if ((s32)flags < 0)
    {
        j = (s32)(sub_0800ED80(buf) * gUnknown_03003CA0) / 2;
        xOffset = -j;
    }
    sub_0800EB30(buf, x + (s16)xOffset, y);
}
