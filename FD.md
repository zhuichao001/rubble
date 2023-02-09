## 查看某个进程打开的文件数
```
lsof -a -p {PID}
ls -l /proc/{PID}/fd | wc -l
```

## 设置系统的最大打开文件数
```
echo 10000000 > /proc/sys/fs/file-max
```
