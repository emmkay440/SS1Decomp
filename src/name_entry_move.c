#include "global.h"
#include "save_select.h"

extern u8 gUnknown_030005F0;             // save select mode
extern u8 gUnknown_030005F2;             // name entry page (0-1 letters, 2 symbols)
extern u16 gUnknown_03000604;            // the d-pad key pressed (0x10 right, 0x20 left, 0x40 up, 0x80 down)
extern u16 gLanguage;

#define COLUMN gUnknown_03000600.c.column
#define ROW    gUnknown_03000600.c.row

// Mode 5 (name entry): moves the cursor cell by the d-pad key, wrapping
// around the grid of the current page (its size depends on the page and
// the language), with the END button at column 12, row 6.
void sub_08047F6C(void)
{
    if (gUnknown_030005F0 != 5)
        return;
    if (gUnknown_03000600.raw == 0x60C)
    {
        if (gUnknown_03000604 == 0x40)
        {
            u32 row = ROW;

            ROW = row - 1;
            switch (gLanguage)
            {
            case 0:
            case 1:
            case 3:
            case 4:
            case 5:
                ROW = row - 2;
                break;
            }
            if (gUnknown_030005F2 == 2)
                COLUMN++;
        }
        if (gUnknown_03000604 == 0x80)
        {
            ROW = 0;
            if (gUnknown_030005F2 == 2)
                COLUMN++;
        }
        if (gUnknown_030005F2 > 1)
            return;
        if (gUnknown_03000604 == 0x20)
            COLUMN = 9;
        if (gUnknown_03000604 == 0x10)
            COLUMN = 0;
        return;
    }
    if ((ROW > 4 && COLUMN > 9 && gUnknown_03000604 == 0x80)
     || (gUnknown_03000600.raw == 0x609 && gUnknown_03000604 == 0x10))
    {
        COLUMN = 12;
        ROW = 6;
        return;
    }
    switch (gUnknown_030005F2)
    {
    case 0:
    case 1:
        switch (gUnknown_03000604)
        {
        case 0x10:
            if (COLUMN <= 11)
                COLUMN++;
            else
                COLUMN = 0;
            break;
        case 0x20:
            if (COLUMN != 0)
                COLUMN--;
            else
                COLUMN = 12;
            break;
        case 0x80:
            if (ROW <= 5)
                ROW++;
            else
                ROW = 0;
            break;
        case 0x40:
            if (ROW != 0)
                ROW--;
            else if (COLUMN == 12)
                ROW = 6;
            else if (COLUMN > 9)
                ROW = 5;
            else
                ROW = 6;
            break;
        }
        break;
    case 2:
        switch (gUnknown_03000604)
        {
        case 0x10:
            switch (gLanguage)
            {
            case 0:
            case 1:
                if (COLUMN <= 12)
                    COLUMN++;
                else if (ROW > 4)
                    COLUMN = 11;
                else
                    COLUMN = 0;
                break;
            case 2:
            case 3:
            case 4:
            case 5:
                if (COLUMN <= 12)
                    COLUMN++;
                else if (ROW > 6)
                    COLUMN = 11;
                else
                    COLUMN = 0;
                break;
            }
            break;
        case 0x20:
            switch (gLanguage)
            {
            case 0:
            case 1:
                if (ROW > 4)
                {
                    if (COLUMN > 11)
                        COLUMN--;
                    else
                        COLUMN = 13;
                }
                else if (COLUMN != 0)
                    COLUMN--;
                else
                    COLUMN = 13;
                break;
            default:
                if (COLUMN != 0)
                    COLUMN--;
                else
                    COLUMN = 13;
                break;
            }
            break;
        case 0x80:
            switch (gLanguage)
            {
            case 0:
            case 1:
                if (ROW <= 3)
                    ROW++;
                else if (COLUMN > 10)
                {
                    COLUMN = 12;
                    ROW = 6;
                }
                else
                    ROW = 0;
                break;
            case 2:
                if (ROW <= 4)
                    ROW++;
                else if (COLUMN > 13)
                {
                    COLUMN = 12;
                    ROW = 6;
                }
                else
                    ROW = 0;
                break;
            case 3:
                if (ROW <= 3)
                    ROW++;
                else if (COLUMN > 10)
                {
                    COLUMN = 12;
                    ROW = 6;
                }
                else
                    ROW = 0;
                break;
            case 4:
                if (ROW <= 3)
                    ROW++;
                else if (COLUMN > 10)
                {
                    COLUMN = 12;
                    ROW = 6;
                }
                else
                    ROW = 0;
                break;
            case 5:
                if (ROW <= 3)
                    ROW++;
                else if (COLUMN > 10)
                {
                    COLUMN = 12;
                    ROW = 6;
                }
                else
                    ROW = 0;
                break;
            }
            break;
        case 0x40:
            if (ROW != 0)
                ROW--;
            else if (COLUMN > 10)
            {
                COLUMN = 12;
                ROW = 6;
            }
            else
                ROW = 4;
            break;
        }
        break;
    }
}
