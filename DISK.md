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

## 测试磁盘写速度
```
dd if=/dev/zero of=test bs=64k count=4k oflag=dsync
```

## 测试磁盘读速度
```
dd if=/dev/zero of=image bs=8G count=1
dd if=./image of=/dev/null bs=4k
```
