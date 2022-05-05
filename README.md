# rubble


#### 查看进程的异常退出原因
```
dmesg | egrep -i 'killed process'
```
#### 操作系统错误日志检查
```
cat /var/log/messages | grep ERROR
dmesg | grep ERROR
```

#### 查看某进程的打开文件数
```
lsof -p PID | wc -l
```

#### 查看某进程的堆栈空间
```
pstack
gstack
pstrace 
strace
gdb
```

#### 查看某进程的内存使用
```
pmap -d {PID}
/proc/{PID}/smaps
```

#### 查看磁盘IO
```
iostat
iotop
sar
```

#### 查看CPU
```
htop, top
vmstat
mpstat
dstat
```

#### 查看内存
```
top
free
vmstat
```

#### 网络监控
```
netstat
ss
iperf
```

#### 查看CPU核数
```
总核数 = 物理CPU个数 X 每颗物理CPU的核数
总逻辑CPU数 = 物理CPU个数 X 每颗物理CPU的核数 X 超线程数

查看物理CPU个数
cat /proc/cpuinfo| grep "physical id"| sort| uniq| wc -l

查看每个物理CPU中core的个数(即核数)
cat /proc/cpuinfo| grep "cpu cores"| uniq

查看逻辑CPU的个数
cat /proc/cpuinfo| grep "processor"| wc -l
```

#### 清除缓存
```
仅清除页面缓存（PageCache）
sync; echo 1 > /proc/sys/vm/drop_caches       

清除目录项和inode
sync; echo 2 > /proc/sys/vm/drop_caches       

清除页面缓存，目录项和inode
sync; echo 3 > /proc/sys/vm/drop_caches 

注：sync 将刷新文件系统缓冲区（buffer）
```

#### 通过删除inode来删除文件：
```
ls -i  //获取INODE-ID
find . -inum {INODE-ID} -exec rm {} \;
```

