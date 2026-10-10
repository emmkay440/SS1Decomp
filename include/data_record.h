#ifndef GUARD_DATA_RECORD_H
#define GUARD_DATA_RECORD_H

// Records of the "SSDT" data archive (gDataArchive, docs/data.md).
// key = category << 16 | index.
void *GetDataRecord(u32 key);

#endif // GUARD_DATA_RECORD_H
