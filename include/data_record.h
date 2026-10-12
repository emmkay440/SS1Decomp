#ifndef GUARD_DATA_RECORD_H
#define GUARD_DATA_RECORD_H

// Records of the "SSDT" data archive (gDataArchive, docs/data.md).
// key = category << 16 | index.
void *GetDataRecord(u32 key);
// Number of records in a category.
u32 sub_08002E18(u32 category);

#endif // GUARD_DATA_RECORD_H
