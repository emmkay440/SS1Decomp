#ifndef GUARD_HEAP_H
#define GUARD_HEAP_H

void InitHeap(void);
void *Alloc(u32 size);
void Free(void *ptr);

#endif // GUARD_HEAP_H
