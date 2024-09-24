#### find 10分钟前访问过的文件
```
find . -type f -amin +10
```

#### find 某一前缀的文件
```
find . -type f -name PREFIX
```

#### find 空子目录
```
find . -type d -empty -print
```
