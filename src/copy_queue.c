#include "global.h"
#include "heap.h"
#include "copy_queue.h"

void InitCopyQueue(void)
{
    u32 i;

    gCopyQueue = Alloc(sizeof(struct CopyRequest) * COPY_QUEUE_SIZE);
    for (i = 0; i < COPY_QUEUE_SIZE; i++)
    {
        gCopyQueue[i].src = NULL;
        gCopyQueue[i].dest = NULL;
        gCopyQueue[i].size = 0;
    }
    gCopyQueueCount = 0;
}

void QueueCopy(const void *src, void *dest, u32 size)
{
    struct CopyRequest *req;

    if (gCopyQueueCount < COPY_QUEUE_SIZE)
    {
        req = &gCopyQueue[gCopyQueueCount];
        req->src = src;
        req->dest = dest;
        req->size = size;
        if ((size & 0x1F) == 0)
            req->size = size | COPY_FAST_FLAG;
        gCopyQueueCount++;
    }
}

void ProcessCopyQueue(void)
{
    struct CopyRequest *req = gCopyQueue;
    u32 i;

    for (i = 0; i < gCopyQueueCount; i++, req++)
    {
        if ((s32)req->size < 0)
            CpuFastSet(req->src, req->dest, ((req->size & ~COPY_FAST_FLAG) / 4) & 0x1FFFFF);
        else
            CpuSet(req->src, req->dest, ((req->size / 4) & 0x1FFFFF) | CPU_SET_32BIT);
    }
    gCopyQueueCount = 0;
}

void ClearCopyQueue(void)
{
    gCopyQueueCount = 0;
}
