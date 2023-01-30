## 查看CPU信息
```
[root@xxx]# lscpu
```
```
Architecture:        x86_64
CPU op-mode(s):      32-bit, 64-bit
Byte Order:          Little Endian
CPU(s):              96
On-line CPU(s) list: 0-95
Thread(s) per core:  2
Core(s) per socket:  24
Socket(s):           2
NUMA node(s):        2
Vendor ID:           GenuineIntel
CPU family:          6
Model:               85
Model name:          Intel(R) Xeon(R) Gold 6267C CPU @ 2.60GHz
Stepping:            7
CPU MHz:             2999.653
CPU max MHz:         3400.0000
CPU min MHz:         1000.0000
BogoMIPS:            5200.00
Virtualization:      VT-x
L1d cache:           32K
L1i cache:           32K
L2 cache:            1024K
L3 cache:            33792K
NUMA node0 CPU(s):   0-23,48-71
NUMA node1 CPU(s):   24-47,72-95
Flags:               fpu vme de pse......
```
## 查询各级Cache容量
```
cat /sys/devices/system/cpu/cpu0/cache/index*/size
```

## 查看CacheLine大小
```
cat /sys/devices/system/cpu/cpu0/cache/index0/coherency_line_size
```

## CPU绑核并隔离
```
//Linux内核启动参数设置, 例如让CPU3/4不参加调度
echo "isolcpus=2,3" >> /boot/grub2.cfg

//查看设置的情况
cat /proc/cmdline
```
