#### 查看某个进程打开的文件数
```
lsof -a -p {PID}
ls -l /proc/{PID}/fd | wc -l
```

#### 设置系统的最大打开文件数
```
echo 10000000 > /proc/sys/fs/file-max
```

#### 通过删除inode来删除文件：
```
ls -i  //获取INODE-ID
find . -inum {INODE-ID} -exec rm {} \;
```

