yum install bzip2

#from ftp: http://ftp.gnu.org/gnu/gcc/
wget http://ftp.gnu.org/gnu/gcc/gcc-11.3.0/gcc-11.3.0.tar.gz
tar xvzf gcc-11.3.0.tar.gz
cd gcc-11.3.0 

#auto install dependings: gmp, mpfr, mpc
./contrib/download_prerequisites 
mkdir build && cd build/
../configure -enable-checking=release -enable-languages=c,c++ -disable-multilib
# –enable-languages 表示你要让你的gcc支持哪些语言
# –disable-multilib 不生成编译为其他平台可执行代码的交叉编译器
# –disable-checking 生成的编译器在编译过程中不做额外检查，

make
make install
/usr/local/bin/gcc --version
