## 查询各级Cache容量
```
cat /sys/devices/system/cpu/cpu0/cache/index*/size
```

## 查看CacheLine大小
```
cat /sys/devices/system/cpu/cpu0/cache/index0/coherency_line_size
```
