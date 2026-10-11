#ifndef GUARD_MENU_CURSOR_H
#define GUARD_MENU_CURSOR_H

#include "menu.h"

// Menu cursor state (0x030005B8-0x030005DF). For the slots at
// gUnknown_030005D0 / D4 / C8, unk0 and unk1 are a screen position.
extern u8 gUnknown_030005B8;
extern u8 gUnknown_030005B9;                   // cursor mode (sub_08045234)
extern u8 gUnknown_030005BA;
extern u8 gUnknown_030005BF;
extern u16 gUnknown_030005C2;                  // keys (0x40 up, 0x80 down)
extern struct MenuSlotBytes gUnknown_030005C8; // drawn position
extern u8 gUnknown_030005CC[2];                // move: [0] frames, [1] frame counter
extern struct MenuSlotBytes gUnknown_030005D0; // target slot
extern struct MenuSlotBytes gUnknown_030005D4; // current slot

void sub_08045304(struct MenuSlotBytes *slot);
void sub_08045D80(void);

#endif // GUARD_MENU_CURSOR_H
