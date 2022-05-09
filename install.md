# 远程文件传送工具
```
yum install lrzsz
```

# cmake
```
yum install openssl openssl-devel
wget https://github.com/Kitware/CMake/releases/download/v3.23.1/cmake-3.23.1.tar.gz
tar xvzf cmake-3.23.1.tar.gz
cd cmake-3.23.1
./bootstrap
make && make install
```

# protobuf
```
sudo yum install dnf install autoconf automake libtool
wget https://github.com/protocolbuffers/protobuf/releases/download/v3.20.1/protobuf-all-3.20.1.tar.gz
tar xvzf protobuf-all-3.20.1.tar.gz 
cd protobuf-3.20.1/
./autogen.sh 
./configure 
make
sudo make install 
protoc --version
```
