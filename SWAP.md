## 设置swappiness
查看当前值：
```
cat /proc/sys/vm/swappiness
```

临时性修改： 
```
$ sudo sysctl vm.swappiness=10
```

永久性修改： 
/etc/sysctl.conf文件添加参数：
```
vm.swappiness=10
```
