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
```
