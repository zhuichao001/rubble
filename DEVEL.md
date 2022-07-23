#开启coredump
```
ulimit -c unlimited
```

#观察某进程占用的物理内存
```
cat /proc/`pidof {some.exe}`/smaps
```
