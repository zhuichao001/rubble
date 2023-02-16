#### Install PMDK
```
yum repolist
yum makecache
yum install -y bash-completion*
yum install -y json-c*
yum install -y libudev*
yum install autoconf* -y
yum install ndctl ndctl-devel
yum install daxctl daxctl-devel
yum install pandoc

git clone git://anongit.freedesktop.org/pkg-config
cd pkg-config/
./autogen.sh --with-internal-glib
make && make install && 
cd ..

git clone https://github.com/pmem/pmdk.git
cd pmdk && make && make install
```
