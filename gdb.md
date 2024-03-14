#### gdb带参数启动程序
```
Method-I:
  $ gdb --args program arg1 arg2 ... argN  
  (gdb) r

Method-II:
  $ gdb program  
  (gdb) r arg1 arg2 ... argN
```

#### 设置断点
```
  $ gdb program  
  (gdb) b function
  (gdb) b filename:function
  (gdb) b filename:linenum
  (gdb) b <...> if condition
```

#### 删除断点
```
  (gdb) d <<breakpoint num>>
```

####  Continue, Step-in, Step-out or Next
```
  (gdb) c
  (gdb) s
  (gdb) f
  (gdb) n
```

#### 查看调用栈帧
```
  $ gdb program  
  (gdb) backtrace (or bt as shortcut)
  # OR
  (gdb) info stack
```

#### 执行到函数返回
```
  (gdb) fin
  #It will execute to the point where function returns.
```

#### 观察变量或表达式
```
  (gdb) watch <<variable>>
```

#### 忽略断点
```
  (gdb) break test.cpp:18
  (gdb) info breakpoints
  Num     Type           Disp Enb Address            What
  1       breakpoint     keep y   0x00000000008005cd in main() at test.cpp:18
  (gdb) ignore 1 1000
  #Will ignore next 1000 crossings of breakpoint 1.
  (gdb) run
```

#### 多线程调试
```
  (gdb) info threads
  #显示所有线程
  (gdb) thread ID(1,2,3)
  #切换到指定ID的线程调试
  (gdb) break {filename}:{lineno} thread all
  #在所有线程中设置断点
  (gdb) thread apply ID1 ID2 command
  #让ID1 ID2两个线程执行GDB命令command
  (gdb) thread apply all command
  #让所有被调试线程执行GDB命令command
  (gdb) set scheduler-locking off 
  #不锁定任何线程，也就是所有线程都执行，这是默认值
  (gdb) set scheduler-locking on 
  #只有当前被调试程序会执行
  (gdb) set scheduler-locking on step
  #在单步的时候，除了next外只有当前线程会执行
```
