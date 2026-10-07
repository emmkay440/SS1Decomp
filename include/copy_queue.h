#ifndef GUARD_COPY_QUEUE_H
#define GUARD_COPY_QUEUE_H

// Memory copies requested during a frame and performed in the next VBlank.
// Sizes that are a multiple of 32 bytes use CpuFastSet (flagged by bit 31).

#define COPY_QUEUE_SIZE 400
#define COPY_FAST_FLAG  0x80000000

struct CopyRequest
{
    const void *src;
    void *dest;
    u32 size;
};

extern struct CopyRequest *gCopyQueue;
extern u32 gCopyQueueCount;

void InitCopyQueue(void);
void QueueCopy(const void *src, void *dest, u32 size);
void ProcessCopyQueue(void);
void ClearCopyQueue(void);

#endif // GUARD_COPY_QUEUE_H
