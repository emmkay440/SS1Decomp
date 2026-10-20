#include "global.h"
#include "data_record.h"
#include "item.h"
#include "menu.h"

extern u8 gUnknown_030004C8;      // menu page being drawn
extern u8 gUnknown_030004CC;      // blink timer
extern u16 gUnknown_03003CA0;     // character advance
extern struct SpriteObj gUnknown_03000510;

u8 sub_080460BC(void);
u8 sub_08045F78(void);
struct MenuSlotBytes *sub_08046004(void);
struct MenuSlotBytes *sub_08046170(void);
u16 *GetPlayerStats(void);
u16 sub_08041074(void);
u16 sub_080410BC(void);
void sub_08043B28(void);
bool32 sub_08045F50(void);
struct Item *sub_0804087C(struct MenuSlotBytes *slot);
struct Item *sub_08040C98(void);
u8 sub_0804611C(void);
void sub_08023330(u32 x, u32 y, struct Item *item, u32 flags);
void sub_08026B90(struct SpriteObj *obj, u32 a, u32 b, u16 c, u16 d);
u32 GetPlayerClass(void);
u32 sub_0800ED80(u16 *str);
void sub_0800EB30(u16 *str, s32 x, s32 y);

// Draws a string centered on x at y 0x8B.
#define DRAW_CENTERED(str, cx) \
    sub_0800EB30((u16 *)(str), (cx) - (s32)(sub_0800ED80((u16 *)(str)) * gUnknown_03003CA0) / 2, 0x8B)

// Draws the menu's help line for the current page (gUnknown_030004C8) and
// what sub_08045F78 says is selected: the text of one of the 0x9xxxx data
// records, the skill/stat point count, or the selected item's name. (What
// the pages and selections are is a guess from the record numbers.)
void sub_08043378(void)
{
    u16 digits[4];
    u16 blink[2];
    u8 *record;
    u32 x;
    u16 *name;
    struct MenuSlotBytes *slot;
    u16 n;
    u8 i;
    struct Item *item;

    if (sub_080460BC() == 1)
    {
        switch (sub_08045F78())
        {
        case 12:
            switch (gUnknown_030004C8)
            {
            case 2:
                record = GetDataRecord(0x90063);
                x = 0xDC;
                break;
            case 3:
                record = GetDataRecord(0x90065);
                x = 0xD2;
                break;
            case 4:
                record = GetDataRecord(0x90067);
                x = 0xC3;
                break;
            case 5:
                record = GetDataRecord(0x9006B);
                x = 0xD7;
                break;
            case 7:
                record = GetDataRecord(0x90069);
                x = 0xCD;
                break;
            }
            record += 10;
            DRAW_CENTERED(record, 0x78);
            blink[0] = 1;
            blink[1] = 0;
            if (gUnknown_030004CC++ > 10)
            {
                sub_0800EB30(blink, x, 0x8C);
                if (gUnknown_030004CC > 20)
                    gUnknown_030004CC = 0;
            }
            return;
        case 13:
            switch (gUnknown_030004C8)
            {
            case 2:
                record = GetDataRecord(0x90064);
                break;
            case 3:
                record = GetDataRecord(0x90066);
                break;
            case 4:
                record = GetDataRecord(0x90068);
                break;
            case 5:
                record = GetDataRecord(0x9006C);
                break;
            case 7:
                record = GetDataRecord(0x9006A);
                break;
            }
            record += 10;
            DRAW_CENTERED(record, 0x78);
            return;
        }
        return;
    }
    if (gUnknown_030004C8 == 8)
    {
        name = GetPlayerStats();
        slot = sub_08046004();
        switch (sub_08045F78())
        {
        case 0:
            if (slot->type == 7)
            {
                if (sub_08041074() == 0)
                {
                    record = GetDataRecord(0x9001F);
                    goto draw_line;
                }
                record = GetDataRecord(0x90021);
                record += 10;
                DRAW_CENTERED(record, 0x64);
                n = sub_08041074();
                for (i = 0; i <= 2; i++)
                    digits[i] = 0xFF;
                if (n > 99)
                {
                    digits[0] = n / 100 + 0xEF;
                    n = n % 100;
                    if (n == 0)
                        digits[1] = 0xEF;
                    else if (n <= 9)
                        digits[1] = 0xEF;
                    else
                    {
                        digits[1] = n / 10 + 0xEF;
                        n = n % 10;
                    }
                }
                else if (n > 9)
                {
                    digits[1] = n / 10 + 0xEF;
                    n = n % 10;
                }
                digits[2] = n + 0xEF;
                digits[3] = 0;
                sub_0800EB30(digits, 0xC0, 0x8B);
            }
            else
            {
                if (sub_080410BC() == 0)
                {
                    record = GetDataRecord(0x90020);
                    goto draw_line;
                }
                record = GetDataRecord(0x90022);
                record += 10;
                DRAW_CENTERED(record, 0x74);
                n = sub_080410BC();
                for (i = 0; i <= 2; i++)
                    digits[i] = 0xFF;
                if (n > 99)
                {
                    digits[0] = n / 100 + 0xEF;
                    n = n % 100;
                }
                if (n > 9)
                {
                    digits[1] = n / 10 + 0xEF;
                    n = n % 10;
                }
                digits[2] = n + 0xEF;
                digits[3] = 0;
                sub_0800EB30(digits, 0xD0, 0x8B);
            }
            break;
        case 6:
            switch (slot->subSlot)
            {
            case 0:
                record = GetDataRecord(0x90057);
                break;
            case 1:
                record = GetDataRecord(0x9005A);
                break;
            case 2:
                record = GetDataRecord(0x90059);
                break;
            case 3:
                record = GetDataRecord(0x90058);
                break;
            }
            goto draw_line;
        case 8:
            switch ((u8)GetPlayerClass())
            {
            case 0:
                switch (slot->subSlot)
                {
                case 0: record = GetDataRecord(0x9002B); break;
                case 1: record = GetDataRecord(0x9002C); break;
                case 2: record = GetDataRecord(0x9002D); break;
                case 3: record = GetDataRecord(0x9002E); break;
                case 4: record = GetDataRecord(0x9002F); break;
                case 5: record = GetDataRecord(0x90030); break;
                case 6: record = GetDataRecord(0x90031); break;
                case 7: record = GetDataRecord(0x90032); break;
                }
                break;
            case 1:
                switch (slot->subSlot)
                {
                case 0: record = GetDataRecord(0x90033); break;
                case 1: record = GetDataRecord(0x90034); break;
                case 2: record = GetDataRecord(0x90035); break;
                case 3: record = GetDataRecord(0x90036); break;
                case 4: record = GetDataRecord(0x90037); break;
                case 5: record = GetDataRecord(0x90038); break;
                case 6: record = GetDataRecord(0x90039); break;
                case 7: record = GetDataRecord(0x9003A); break;
                }
                break;
            case 2:
                switch (slot->subSlot)
                {
                case 0: record = GetDataRecord(0x9003B); break;
                case 1: record = GetDataRecord(0x9003C); break;
                case 2: record = GetDataRecord(0x9003D); break;
                case 3: record = GetDataRecord(0x9003E); break;
                case 4: record = GetDataRecord(0x9003F); break;
                case 5: record = GetDataRecord(0x90040); break;
                case 6: record = GetDataRecord(0x90041); break;
                case 7: record = GetDataRecord(0x90042); break;
                }
                break;
            case 3:
                switch (slot->subSlot)
                {
                case 0: record = GetDataRecord(0x90043); break;
                case 1: record = GetDataRecord(0x90044); break;
                case 2: record = GetDataRecord(0x90045); break;
                case 3: record = GetDataRecord(0x90046); break;
                case 4: record = GetDataRecord(0x90047); break;
                case 5: record = GetDataRecord(0x90048); break;
                case 6: record = GetDataRecord(0x90049); break;
                case 7: record = GetDataRecord(0x9004A); break;
                }
                break;
            }
        draw_line:
            record += 10;
            DRAW_CENTERED(record, 0x78);
            break;
        case 7:
        case 9:
            record = GetDataRecord(0x9000D);
            sub_08043B28();
            record += 10;
            DRAW_CENTERED(record, 0x78);
            break;
        }
        sub_0800EB30(name, 0x9D, 0x78);
        return;
    }
    if (gUnknown_030004C8 == 9)
    {
        if (sub_08045F78() == 16)
            goto help_e5;  // FAKE? (shares the case 9 code below; maybe original)
        slot = sub_08046004();
        switch (slot->type)
        {
        case 9:
            record = GetDataRecord(0x9005C);
            break;
        case 10:
            record = GetDataRecord(0x9005D);
            break;
        case 11:
            record = GetDataRecord(0x9005E);
            break;
        case 12:
            record = GetDataRecord(0x9005F);
            break;
        case 13:
            record = GetDataRecord(0x90060);
            break;
        case 14:
            record = GetDataRecord(0x90061);
            break;
        case 15:
            record = GetDataRecord(0x90062);
            break;
        }
        record += 10;
        DRAW_CENTERED(record, 0x78);
        return;
    }
    if (sub_08045F78() == 3)
        record = GetDataRecord(0x90005);
    else if (sub_08045F78() == 4)
        record = GetDataRecord(0x90001);
    else if (sub_08045F78() == 5)
        record = GetDataRecord(0x90002);
    else if (sub_08045F78() == 16)
    {
        switch (gUnknown_030004C8)
        {
        case 2:
            record = GetDataRecord(0x900E1);
            break;
        case 3:
            record = GetDataRecord(0x900E2);
            break;
        case 4:
            record = GetDataRecord(0x900E3);
            break;
        case 7:
            record = GetDataRecord(0x900E0);
            break;
        case 5:
            record = GetDataRecord(0x900DF);
            break;
        case 9:
        help_e5:
            record = GetDataRecord(0x900E5);
            break;
        }
    }
    else
        goto draw_item;
    sub_08043B28();
    record += 10;
    DRAW_CENTERED(record, 0x78);
    return;

draw_item:
    if (!sub_08045F50())
        item = sub_0804087C(sub_08046170());
    else
        item = sub_08040C98();
    sub_08023330(0x78, 0x8B, item, sub_0804611C() | 0x80000000);
    sub_08026B90(&gUnknown_03000510, 4, 0x94, 0x25, sub_0804611C());
}
