
#### 添加子项目
```
  $ git submodule add https://github.com/PROJ/REPO.git {DEST_DIR}/yyy
  $ git commit "some comments"

  $ git submodule init {DEST_DIR}/yyy
  $ git submodule update
```

#### 撤销最近一次提交
```
//回滚但不删除最近一次修改
git reset --soft HEAD^
//回滚并且删除最近一次修改
git reset --hard HEAD^
```

#### 检出远程分支
```
  git branch -r
  git checkout origin/REPO
  git checkout REPO
```

#### 设定全局的账号名
```
  $ git config --global user.name {USER_NAME}
  $ git config --global user.email  {USER_EMAIL}
  //查看
  $ git config user.name 
  $ git config user.email 
```

#### 缓存账号信息[免密]
```
  git config --global credential.helper store
```

#### 连接并合并远程更新
```
  $ git remote add public https://github.com/PROJ/REPO.git
  $ git fetch public
  $ git merge public/master
```

#### 删除本地/远程分支
```
  $ git branch -d REPO
  $ git branch -D REPO
  $ git push origin --delete REPO
```

#### 重命名本地/远程分支
```
  $ git branch -m new_branch_name
  $ git push origin :old_branch_name new_branch_name
  $ git push origin -u new_branch_name
```

#### 复制远程分支
```
git clone -b  {BRANCH_NAME}  https://github.com/xxx/yyy.git
git remote set-url --push origin https://gitlab.com/eee/fff.git
git push
```
