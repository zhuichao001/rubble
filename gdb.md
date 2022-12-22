## gdb带参数启动程序
```
Method-I:
  $ gdb --args program arg1 arg2 ... argN  
  (gdb) r

Method-II:
  $ gdb program  
  (gdb) r arg1 arg2 ... argN
```

## 设置断点
```
  $ gdb program  
  (gdb) b function
  (gdb) b filename:function
  (gdb) b filename:linenum
  (gdb) b <...> if condition
```

## 查看调用栈帧
```
  $ gdb program  
  (gdb) backtrace (or bt as shortcut)
  # OR
  (gdb) info stack
```

## 执行到函数返回
```
  (gdb) fin
  #It will execute to the point where function returns.
```

## 观察变量或表达式
```
  (gdb) watch <<variable>>
```

##  Continue, Step-in or Next
```
  (gdb) c
  (gdb) s
  (gdb) n
```
