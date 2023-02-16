#### 注：sync命令将刷新文件系统缓冲区（buffer）

#### 仅清除页面缓存（PageCache）
```
sync; echo 1 > /proc/sys/vm/drop_caches       
```

#### 清除目录项和inode
```
sync; echo 2 > /proc/sys/vm/drop_caches       
```

#### 清除页面缓存，目录项和inode
```
sync; echo 3 > /proc/sys/vm/drop_caches 
```
