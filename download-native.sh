#!/bin/bash
[ -f native.zip ] || curl -L https://github.com/warrenfalk/rocksdb-sharp/releases/download/v5.4.6.10/native-266ac24.zip --output native.zip
[ -f native.zip ] && { mkdir -p RocksDbNative/native; cd RocksDbNative/native && unzip ../../native.zip; }
[ -f native.zip -a -f native/amd64/librocksdb.so ] && rm native.zip
