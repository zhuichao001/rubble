## 释放进程
```
du -sh * #Real Used
df -h    #Total Used
sudo lsof | grep deleted | sort -nrk 7 | more
kill -9 {PID}
```

## 测试磁盘速度
```
dd if=/dev/zero of=test bs=64k count=4k oflag=dsync
```
