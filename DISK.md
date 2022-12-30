## 查看某类型文件总大小
```
ls -l *.log | awk '{sum += $5} END{print sum}'
```

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
