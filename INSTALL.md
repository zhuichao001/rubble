#### gcc g++
```
yum install bzip2

#from ftp: http://ftp.gnu.org/gnu/gcc/
wget http://ftp.gnu.org/gnu/gcc/gcc-11.3.0/gcc-11.3.0.tar.gz
tar xvzf gcc-11.3.0.tar.gz
cd gcc-11.3.0 

#auto install dependings: gmp, mpfr, mpc
./contrib/download_prerequisites 
mkdir build && cd build/
../configure -enable-checking=release -enable-languages=c,c++ -disable-multilib
make && make install
/usr/local/bin/gcc --version
```

#### cmake
```
yum install openssl openssl-devel
wget https://github.com/Kitware/CMake/releases/download/v3.23.1/cmake-3.23.1.tar.gz
tar xvzf cmake-3.23.1.tar.gz
cd cmake-3.23.1
./bootstrap
make && make install
```

#### gdb
```
yum install lzip gmp-devel
wget https://gmplib.org/download/gmp/gmp-6.2.1.tar.lz
tar xvf gmp-6.2.1.tar.lz --lzip
cd gmp-6.2.1
./configure 
make && make install
cd ..

wget https://ftp.gnu.org/gnu/gdb/gdb-12.1.tar.gz --no-check-certificate
tar xvzf gdb-12.1.tar.gz
cd gdb-12.1
./configure
make && make install
```

#### protobuf
```
sudo yum install dnf install autoconf automake libtool
wget https://github.com/protocolbuffers/protobuf/releases/download/v3.20.1/protobuf-all-3.20.1.tar.gz
tar xvzf protobuf-all-3.20.1.tar.gz 
cd protobuf-3.20.1/
./autogen.sh 
./configure 
make && make install 
protoc --version
```

#### rz & sz
```
yum install lrzsz
```

#### 安装gcc-5.3
```
wget http://ftp.gnu.org/gnu/gcc/gcc-5.3.0/gcc-5.3.0.tar.gz
tar -xvzf gcc-5.3.0.tar.gz

cd gcc-5.3.0
./contrib/download_prerequisites

cd ..
mkdir build_gcc_5.3.0

cd build_gcc_5.3.0
../gcc-5.3.0/configure --enable-checking=release --enable-languages=c,c++ --disable-multilib  

make -j8
sudo make install
```

#### 安装Cygwin
```
http://www.cygwin.com/setup-x86_64.exe
```
#### 升级Cygwin
```
curl -O https://cygwin.com/setup-x86.exe
chmod a+x setup-x86
./setup-x86 --no-desktop --no-shortcuts --no-startmenu --quiet-mode --upgrade-also --site http://mirrors.163.com/cygwin/
```
