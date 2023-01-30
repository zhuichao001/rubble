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
