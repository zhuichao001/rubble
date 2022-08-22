## 释放进程
```
du -sh * #Real Used
df -h    #Total Used
sudo lsof | grep deleted | sort -nrk 7 | more
kill -9 {PID}
```
