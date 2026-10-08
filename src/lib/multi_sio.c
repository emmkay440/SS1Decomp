#include "global.h"
#include "multi_sio.h"

// Nintendo MultiSio library (see include/multi_sio.h). This game's copy
// goes through its own interrupt helpers instead of writing REG_IME/REG_IE.

void DisableInterrupts(void);
void EnableInterrupts(void);
void EnableIntr(u16 flags);
void DisableIntr(u16 flags);

void MultiSioInit(void)
{
    s32 i;

    DisableInterrupts();
    DisableIntr(INTR_FLAG_SERIAL | MULTI_SIO_TIMER_INTR_FLAG);
    EnableInterrupts();
    REG_RCNT = 0;
    *(vu32 *)REG_ADDR_SIOCNT = SIO_MULTI_MODE;
    REG_SIOCNT |= SIO_INTR_ENABLE | SIO_115200_BPS;
    CpuFill32(0, &gMultiSioArea, sizeof(struct MultiSioArea));
    CpuCopy32(MultiSioRecvBufChange, gMultiSioRecvFuncBuf, sizeof(gMultiSioRecvFuncBuf));
    CpuCopy32(MultiSioIntr, gMultiSioIntrFuncBuf, sizeof(gMultiSioIntrFuncBuf));
    gMultiSioArea.sendBufCounter = -1;
    gMultiSioArea.nextSendBufp = (u16 *)&gMultiSioArea.sendBuf[0];
    gMultiSioArea.currentSendBufp = (u16 *)&gMultiSioArea.sendBuf[1];
    for (i = 0; i < MULTI_SIO_PLAYERS_MAX; i++)
    {
        gMultiSioArea.currentRecvBufp[i] = (u16 *)&gMultiSioArea.recvBuf[i][0];
        gMultiSioArea.lastRecvBufp[i] = (u16 *)&gMultiSioArea.recvBuf[i][1];
        gMultiSioArea.recvCheckBufp[i] = (u16 *)&gMultiSioArea.recvBuf[i][2];
    }
    DisableInterrupts();
    EnableIntr(INTR_FLAG_SERIAL);
    EnableInterrupts();
}

u32 MultiSioMain(void *sendp, void *recvp)
{
    struct SioMultiCnt sioCntBak;

    switch (gMultiSioArea.state)
    {
    case 0:
        sioCntBak = *(struct SioMultiCnt *)REG_ADDR_SIOCNT;
        if (!sioCntBak.id)
        {
            if (!sioCntBak.sd || sioCntBak.enable)
                break;
            if (!sioCntBak.si && gMultiSioArea.sendBufCounter == -1)
            {
                DisableInterrupts();
                DisableIntr(INTR_FLAG_SERIAL);
                EnableIntr(MULTI_SIO_TIMER_INTR_FLAG);
                EnableInterrupts();
                ((struct SioMultiCnt *)REG_ADDR_SIOCNT)->ifEnable = 0;
                REG_IF = INTR_FLAG_SERIAL | MULTI_SIO_TIMER_INTR_FLAG;
                REG_TM3CNT = MULTI_SIO_TIMER_COUNT;
                gMultiSioArea.type = SIO_MULTI_PARENT;
            }
        }
        gMultiSioArea.state = 1;
        // fallthrough
    case 1:
        if (gMultiSioArea.connectedFlags)
        {
            if (gMultiSioArea.recvFlagsAvailableCounter < 8)
                gMultiSioArea.recvFlagsAvailableCounter++;
            else
                gMultiSioArea.state = 2;
        }
        // fallthrough
    case 2:
        MultiSioRecvDataCheck(recvp);
        MultiSioSendDataSet(sendp);
        break;
    }
    gMultiSioArea.sendFrameCounter++;
    return gMultiSioArea.recvSuccessFlags
         | (gMultiSioArea.type == SIO_MULTI_PARENT) << 7
         | gMultiSioArea.connectedFlags << 8
         | (gMultiSioArea.hardError != 0) << 12
         | (sioCntBak.id >= MULTI_SIO_PLAYERS_MAX) << 13
         | (gMultiSioArea.recvFlagsAvailableCounter >> 3) << 15;
}

void MultiSioSendDataSet(void *sendp)
{
    s32 checkSum = 0;
    s32 i;

    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->frameCounter = gMultiSioArea.sendFrameCounter;
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->recvErrorFlags = gMultiSioArea.connectedFlags ^ gMultiSioArea.recvSuccessFlags;
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->checkSum = 0;
    CpuCopy32(sendp, &gMultiSioArea.nextSendBufp[2], MULTI_SIO_BLOCK_SIZE);
    for (i = 0; i < sizeof(struct MultiSioPacket) / 2 - 2; i++)
        checkSum += gMultiSioArea.nextSendBufp[i];
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->checkSum = ~checkSum - sizeof(struct MultiSioPacket) / 2;
    if (gMultiSioArea.type)
        REG_TM3CNT_H = 0;
    gMultiSioArea.sendBufCounter = -1;
    if (gMultiSioArea.type && gMultiSioArea.startFlag)
        REG_TM3CNT_H = TIMER_1CLK | TIMER_INTR_ENABLE | TIMER_ENABLE;
}

u32 MultiSioRecvDataCheck(void *recvp)
{
    u32 (*multiSioRecvBufChangeOnRam)(void) = (u32 (*)(void))gMultiSioRecvFuncBuf;
    s32 checkSum;
    vu32 recvCheck = 0;
    u8 syncRecvFlagBak[4];
    s32 i, ii;

    *(u32 *)syncRecvFlagBak = multiSioRecvBufChangeOnRam();
    gMultiSioArea.recvSuccessFlags = 0;
    for (i = 0; i < MULTI_SIO_PLAYERS_MAX; i++)
    {
        checkSum = 0;
        for (ii = 0; ii < sizeof(struct MultiSioPacket) / 2 - 2; ii++)
            checkSum += gMultiSioArea.recvCheckBufp[i][ii];
        // the sender stores ~sum - 12, so a good packet sums to -13
        if (syncRecvFlagBak[i] && (s16)checkSum == -13)
        {
            CpuCopy32(&((u8 *)gMultiSioArea.recvCheckBufp[i])[4], &((u8 *)recvp)[i * MULTI_SIO_BLOCK_SIZE], MULTI_SIO_BLOCK_SIZE);
            gMultiSioArea.recvSuccessFlags |= 1 << i;
        }
        CpuFill32(0, &((u8 *)gMultiSioArea.recvCheckBufp[i])[4], MULTI_SIO_BLOCK_SIZE);
    }
    gMultiSioArea.connectedFlags |= gMultiSioArea.recvSuccessFlags;
    return gMultiSioArea.recvSuccessFlags;
}

void MultiSioStart(void)
{
    if (gMultiSioArea.type)
        gMultiSioArea.startFlag = 1;
}

void MultiSioStop(void)
{
    DisableInterrupts();
    DisableIntr(INTR_FLAG_SERIAL | MULTI_SIO_TIMER_INTR_FLAG);
    EnableInterrupts();
    REG_SIOCNT = SIO_MULTI_MODE | SIO_115200_BPS;
    REG_TM3CNT = MULTI_SIO_TIMER_COUNT;
    REG_IF = INTR_FLAG_SERIAL | MULTI_SIO_TIMER_INTR_FLAG;
    gMultiSioArea.startFlag = 0;
}
