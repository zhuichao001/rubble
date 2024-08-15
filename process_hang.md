#### 查看进程的线程运行栈
```
pstack {PID}
```

```
strace -p {PID}
```

```
gdb -p {PID}
info threads
thread apply all bt
```

