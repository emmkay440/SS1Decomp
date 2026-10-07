#ifndef GUARD_DISPLAY_H
#define GUARD_DISPLAY_H

// gDispCnt mirrors REG_DISPCNT; functions here change it and optionally
// write it to the register.
union DispCnt
{
    u16 raw;
    struct
    {
        u16 mode:3;
        u16 cgbMode:1;
        u16 bmpFrame:1;        // bit 4
        u16 hblankOamAccess:1; // bit 5
        u16 obj1dMapping:1;    // bit 6
        u16 forcedBlank:1;     // bit 7
        u16 layers:5;          // BG0-3, OBJ
        u16 windows:3;         // WIN0, WIN1, OBJ window
    } bits;
};

extern union DispCnt gDispCnt;
extern u16 gPaletteBuffer[512];
extern u16 gPaletteBufferQueued;
extern u16 gBgRegsBuffer[];

void DisplayOn(void);
void DisplayOff(void);
void SetBgMode(u16 mode, u16 apply);
void EnableDisplayLayers(s16 layers, s16 windows, u16 apply);
void DisableDisplayLayers(u16 layers, u16 windows, u16 apply);
void SetDispCntFlags(u16 obj1dMapping, u16 hblankOamAccess, u16 bmpFrame, u16 unused, u16 apply);
void SetBgCnt(u16 bg, const u16 *cnt);
void LoadPalette(u32 index, const void *src, u32 count);
void FlushPaletteBuffer(void);
void CopyBgRegsBuffer(void);

#endif // GUARD_DISPLAY_H
