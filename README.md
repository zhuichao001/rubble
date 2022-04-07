# rubble
Common system operating tools

#### 查看进程的异常退出原因
```
dmesg | egrep -i 'killed process'
```

#### 查看某进程的打开文件数
```
lsof -p PID | wc -l
```

#### 通过删除inode来删除文件：
```
ls -i  //获取INODE-ID
find . -inum {INODE-ID} -exec rm {} \;
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
