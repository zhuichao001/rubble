#### 调整Page Cache的刷盘策略
```
# 后台异步刷脏页的阈值
vm.dirty_background_ratio = 0
vm.dirty_background_bytes = 1048576
# 前台同步刷脏页的阈值：当分配 PageCache 时大小达到比例以后，阻塞住，进行 LRU 淘汰
vm.dirty_ratio = 0
vm.dirty_bytes = 1048576
# 脏页写回到磁盘的时间间隔，单位为毫秒
vm.dirty_writeback_centisecs = 5000
# 表示脏页在内存中的最长停留时间，单位为毫秒
vm.dirty_expire_centisecs = 30000
```

#### 计算某个进程的Page Cache
```
#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <PID>"
    exit 1
fi

PID=$1

if [ ! -d "/proc/${PID}" ]; then
    echo "Process with PID ${PID} doest not exit."
    exit
fi

PAGE_CACHE_KB=$(grep -e "^Cached:" /proc/${PID}/smaps | awk `{sum+=$2} END {print sum}`)

echo "Page Cache used by process ${PID}: $PAGE_CACHE_KB} KB"
```

