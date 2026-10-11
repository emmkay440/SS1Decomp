#ifndef GUARD_SAVE_SELECT_H
#define GUARD_SAVE_SELECT_H

// Name entry cursor of the save select screen.
union CursorCell
{
    u16 raw;
    struct
    {
        u8 column;
        u8 row;
    } c;
};

struct CursorPos
{
    u8 x;
    u8 y;
};

extern struct CursorPos gUnknown_030005FC;   // cursor sprite position
extern union CursorCell gUnknown_03000600;   // cursor cell; 12, 6 is the END button

#endif // GUARD_SAVE_SELECT_H
