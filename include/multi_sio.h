#ifndef GUARD_MULTI_SIO_H
#define GUARD_MULTI_SIO_H

// Nintendo's MultiSio library, version "MultiSio010214" (the string is at
// 0x08052B50). Names and layout follow the later "MultiSio4Sio32Load010528"
// as decompiled in SAT-R/sa1 (src/multi_sio.c); this older version has no
// Sio32 load support, a 16-byte data block, and a three-state main loop.

#define MULTI_SIO_BLOCK_SIZE    16      // bytes of game data per packet
#define MULTI_SIO_PLAYERS_MAX   4
#define MULTI_SIO_TIMER_COUNT   0xB1FC  // timer 3 reload
#define MULTI_SIO_TIMER_INTR_FLAG INTR_FLAG_TIMER3

#define SIO_MULTI_PARENT 8              // SIOCNT bit 3 (SD) as read by the parent

struct SioMultiCnt
{
    u16 baudRate:2;
    u16 si:1;
    u16 sd:1;
    u16 id:2;
    u16 error:1;
    u16 enable:1;
    u16 unused8:4;
    u16 mode:2;
    u16 ifEnable:1;
    u16 unused15:1;
    u16 data;
};

struct MultiSioPacket
{
    u8 frameCounter;
    u8 recvErrorFlags;
    u16 checkSum;
    u16 data[MULTI_SIO_BLOCK_SIZE / 2];
    u16 overrunCatch[2];
};                                      // size 0x18

struct MultiSioArea
{
    u8 type;                            // +0x00 SIO_MULTI_PARENT or 0
    u8 state;                           // +0x01 0, 1, 2
    u8 connectedFlags;                  // +0x02
    u8 recvSuccessFlags;                // +0x03
    u8 syncRecvFlag[4];                 // +0x04
    u8 startFlag;                       // +0x08
    u8 hardError;                       // +0x09
    u8 recvFlagsAvailableCounter;       // +0x0A
    u8 sendFrameCounter;                // +0x0B
    u8 recvFrameCounter[4][2];          // +0x0C
    s32 sendBufCounter;                 // +0x14
    s32 recvBufCounter[4];              // +0x18
    u16 *nextSendBufp;                  // +0x28
    u16 *currentSendBufp;               // +0x2C
    u16 *currentRecvBufp[4];            // +0x30
    u16 *lastRecvBufp[4];               // +0x40
    u16 *recvCheckBufp[4];              // +0x50
    struct MultiSioPacket sendBuf[2];   // +0x60
    struct MultiSioPacket recvBuf[MULTI_SIO_PLAYERS_MAX][3]; // +0x90
};                                      // size 0x1B0

extern struct MultiSioArea gMultiSioArea;
extern u32 gMultiSioRecvFuncBuf[0x40 / 4];  // RAM copy of MultiSioRecvBufChange
extern u32 gMultiSioIntrFuncBuf[0x120 / 4]; // RAM copy of MultiSioIntr

// ARM routines kept as data in asm/code.s and run from RAM
void MultiSioRecvBufChange(void);
void MultiSioIntr(void);

void MultiSioInit(void);
u32 MultiSioMain(void *sendp, void *recvp);
void MultiSioSendDataSet(void *sendp);
u32 MultiSioRecvDataCheck(void *recvp);
void MultiSioStart(void);
void MultiSioStop(void);

#endif // GUARD_MULTI_SIO_H
