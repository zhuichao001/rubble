#### 观察某进程占用的物理内存
```
cat /proc/`pidof {some.exe}`/smaps
```

#### 查看进程的异常退出原因
```
dmesg | egrep -i 'killed process'
```

#### 查看某进程的打开文件数
```
lsof -p PID | wc -l
```

#### 查看某进程的堆栈空间
```
pstack
gstack
pstrace 
strace
gdb
```

#### 查看某进程的内存使用
```
pmap -d {PID}
/proc/{PID}/smaps
```

#### 查看进程的启动时间
```
ps -eo pid,lstart,cmd | grep {PROC_NAME}
```
