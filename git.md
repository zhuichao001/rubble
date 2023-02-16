
## 连接并合并远程更新
```
  $ git remote add public https://github.com/xxx/yyy.git
  $ git fetch public
  $ git merge public/master
```

## 添加子项目
```
  $ git submodule add https://github.com/xxx/yyy.git {DEST_DIR}/yyy
  $ git commit "some comments"

  $ git submodule init {DEST_DIR}/yyy
  $ git submodule update
```
