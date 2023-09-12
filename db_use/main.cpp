#include <iostream>
#include <thread>
#include <unistd.h>

#include "include/leveldb/db.h"
#include "include/leveldb/write_batch.h"

int main(int arg, char **args) {
    leveldb::DB *db;
    leveldb::Options options;
    options.create_if_missing = true;
    leveldb::Status status =
            leveldb::DB::Open(options, args[1], &db);
    assert(status.ok());
    auto ro = leveldb::ReadOptions();
//#define WRITE_KEYS
#ifdef WRITE_KEYS
    auto wb = new leveldb::WriteBatch();
    for (int i = 1; i <= 1000000; ++i) {
        std::string key = "key_" + std::to_string(i);
        std::string value = "value_" + std::to_string(i);
        wb->Put(key, value);
        if (i % 100000 == 0) {
            auto opts = leveldb::WriteOptions();
            opts.sync = true;
            status = db->Write(opts, wb);
            assert(status.ok());
            wb->Clear();
        }
    }
#else
    int32_t count = 0;
    leveldb::Iterator *it = db->NewIterator(leveldb::ReadOptions());
    for (it->SeekToFirst(); it->Valid(); it->Next()) {
        ++count;
        std::cout << it->key().ToString() << ": " << it->value().ToString()
                  << std::endl;
        //db->Delete(leveldb::WriteOptions(), it->key());
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
