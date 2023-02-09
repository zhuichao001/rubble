## 查看某个进程打开的文件数
```
lsof -a -p {PID}
ls -l /proc/{PID}/fd | wc -l
```
