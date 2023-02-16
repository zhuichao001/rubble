Linux系统采用hugetlbfs的特殊文件系统来加入对2MB和1GB的大页内存的支持  

#### 查看CPU是否支持
```
cat  /proc/cpuinfo |grep --color pse
cat  /proc/cpuinfo |grep --color pdpe1gb
```

#### 查看内核是否支持
```
grep  -i hugetlb /boot/config-4.18.0-193.el8.x86_64 
CONFIG_ARCH_WANT_GENERAL_HUGETLB=y
CONFIG_CGROUP_HUGETLB=y
CONFIG_HUGETLBFS=y 
CONFIG_HUGETLB_PAGE=y
```

#### 大页内存使用情况
```
# grep Huge /proc/meminfo

AnonHugePages:  12544000 kB
ShmemHugePages:        0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
```

#### NUMA架构的大页内存查看
```
# cat /sys/devices/system/node/node*/meminfo|fgrep Huge

Node 0 AnonHugePages:    153600 kB
Node 0 HugePages_Total:     0
Node 0 HugePages_Free:      0
Node 0 HugePages_Surp:      0
Node 1 AnonHugePages:     30720 kB
Node 1 HugePages_Total:     0
Node 1 HugePages_Free:      0
Node 1 HugePages_Surp:      0
```

#### 分配大页内存
```
//分配2GB大页内存
echo 1024> /sys/kernel/mm/hugepages/hugepages-2048kB/nr_hugepages

//如果是NUMA架构
echo 1024> /sys/devices/system/node/node0/hugepages/hugepages-2048kB/nr_hugepages
echo 1024> /sys/devices/system/node/node1/hugepages/hugepages-2048kB/nr_hugepages
```

#### 分配超过2GB的大页内存
- 1.安装
```
yum install libhugetlbfs
```
- 2.更改启动文件
```
//修改/etc/grub2.cfg文件
transparent_hugepage=never default_hugepagesz=1G hugepagesz=1G hugepages=4
```
- 3.挂载
```
mkdir    /mnt/myhuge
mount -t hugetlbfs nodev /mnt/myhuge
```
