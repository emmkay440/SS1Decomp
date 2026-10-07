#ifndef GUARD_GBA_SYSCALL_H
#define GUARD_GBA_SYSCALL_H

#define CPU_SET_16BIT 0x00000000
#define CPU_SET_32BIT 0x04000000
#define CPU_SET_FILL  0x01000000
#define CPU_SET_SRC_FIXED      CPU_SET_FILL
#define CPU_FAST_SET_SRC_FIXED 0x01000000

void CpuSet(const void *src, void *dest, u32 control);
void CpuFastSet(const void *src, void *dest, u32 control);
void RegisterRamReset(u32 flags);
void VBlankIntrWait(void);
void LZ77UnCompWram(const void *src, void *dest);
s32 Div(s32 num, s32 denom);
u16 Sqrt(u32 num);
u16 ArcTan2(s16 x, s16 y);

#endif // GUARD_GBA_SYSCALL_H
