#include <iostream>
#include <thread>
#include <unistd.h>

#include "include/leveldb/db.h"

int main(int arg, char** args) {
  leveldb::DB* db;
  leveldb::Options options;
  options.create_if_missing = true;
  leveldb::Status status =
      leveldb::DB::Open(options, "/home/whitesir/ldb/testdb", &db);
  assert(status.ok());
#define WRITE_KEYS
  auto ro = leveldb::ReadOptions();
#ifdef WRITE_KEYS
  for (int i = 0; i <= 100; ++i) {
    auto opts = leveldb::WriteOptions();
    opts.sync = true;
        if (i == 100) {
          ro.snapshot = db->GetSnapshot();
        }
    status = db->Put(opts, "key", "value_" + std::to_string(i));
    assert(status.ok());
  }
#else
  int32_t count = 0;
  leveldb::Iterator* it = db->NewIterator(leveldb::ReadOptions());
  for (it->SeekToFirst(); it->Valid(); it->Next()) {
    ++count;
    std::cout << it->key().ToString() << ": " << it->value().ToString()
              << std::endl;
    // db->Delete(leveldb::WriteOptions(), it->key());
  }
  std::cout << "key count : " << count << std::endl;
  std::cout << "status string" << it->status().ToString() << std::endl;
  assert(it->status().ok());  // Check for any errors found during the scan
  delete it;
#endif
  std::string value = "";
  db->Get(ro, "key", &value);
  std::cout << "value : " << value << std::endl;
  sleep(60);
}
