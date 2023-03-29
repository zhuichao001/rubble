#### 查看内存
```
top
free
vmstat
```

### 查看系统内存占用
```
cat /proc/meminfo
cat /proc/vmstat
```

### 查看某进程内存占用
```
cat /proc/{pid}/status
```

#### 修改ASLR
```
sysctl -w kernel.randomize_va_space=val
val=0:关闭内存地址随机化
val=1:使得 mmap 的基地址、栈地址和 VDSO 的地址随机化
val=2:则是在 1 的基础上增加堆地址的随机化
```

#### 永久更改ASLR
```
vim /etc/sysctl.conf
kernel.randomize_va_space = value
```

