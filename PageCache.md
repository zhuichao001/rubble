
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
