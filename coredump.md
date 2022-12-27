## 设定Coredump捕获
```
cat "{coredump_path}" > /proc/sys/kernel/core_pattern
ulimit  -c unlimited
```
