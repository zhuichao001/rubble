## 通过cgroup来限制内存使用
```
mount -t cgroup -o memory memory /sys/fs/cgroup/memory
mkdir /sys/fs/cgroup/memory/test
#1MB limit memory 
echo 1048576 > /sys/fs/cgroup/memory/test/memory.limit_in_bytes
echo {PID} > /sys/fs/cgroup/memory/test/tasks
```
