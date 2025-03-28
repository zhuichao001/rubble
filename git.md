
#### 添加子项目
```
  git submodule add https://github.com/PROJ/REPO.git {DEST_DIR}/yyy
  git commit "some comments"

  git submodule init {DEST_DIR}/yyy
  git submodule update
```

#### 修改子项目的分支
```
cd path_to_submodule
git checkout target_branch
cd ..
git submodule sync
git add .gitmodules
git commit -m "Updated submodule to target_branch"
git submodule update --init --recursive --remote
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
  git config --global user.name {USER_NAME}
  git config --global user.email  {USER_EMAIL}
  //查看
  git config user.name 
  git config user.email 
```

#### 缓存账号信息[免密]
```
  git config --global credential.helper store
```

#### 连接并合并远程更新
```
  git remote add public https://github.com/PROJ/REPO.git
  git fetch public
  git merge public/master
```

#### 删除本地/远程分支
```
  git branch -d REPO
  git branch -D REPO
  git push origin --delete REPO
```

#### 重命名本地/远程分支
```
  git branch -m new_branch_name
  git push origin :old_branch_name new_branch_name
  git push origin -u new_branch_name
```

#### 复制远程分支
```
  git clone -b  {BRANCH_NAME}  https://github.com/xxx/yyy.git
  git remote set-url --push origin https://gitlab.com/eee/fff.git
  git push
```

#### 检出远程tag
```
  git tag
  git checkout {TAG_NAME}
  git checkout -b {BRANCH_NAME}
```

#### 递归克隆远程分支或tag
```
  git clone --recursive --branch <branch-name/tag-name> https://github.com/user/repo.git
```

#### 将远程submodule本地化
```
  git add .gitmodules
  git rm --cached {SUBMODULE_NAME}
  rm -f {SUBMODULE_NAME}/.git
  rm -rf .git/modules/{SUBMODULE_NAME} 删除 submodules
  .gitmodules 注释 submodules
  .git/config 注释 submodules
```

#### 将github仓库同步到gitlab
```
git clone https://github.com/username/repository.git
git remote rm origin
git remote add origin https://gitlab.com/username/new-repository.git
git fetch origin
git push origin HEAD:master
```

#### 查看远程仓库URL
```
git remote -v
```
 
#### 查看当前分支与远程分支的对应关系
```
git branch -vv
```
  
#### 查看.git目录的路径
```
git rev-parse --git-dir
```
   
#### 查看更详细的仓库信息，包括远程分支和标签
```
git remote show origin
```

#### 撤销最近一次提交
```
//保留内容
git reset --soft HEAD~1
//不保留内容
git reset --hard HEAD~1
```


#### 如何重试下载子模块
```
git submodule init
git submodule update --init --recursive
```

#### 把仓库内的子模块代码变成内部代码并推送至远程
```
# 1.删除子模块：
git submodule deinit <path_to_submodule>
git rm <path_to_submodule>
rm -rf .git/modules/<path_to_submodule>

# 2.添加子模块的代码到项目中：
git add <path_to_submodule>
git commit -m "Add submodule's content to the repository"

# 3.移除.gitmodules文件中的相关条目：
git add .gitmodules
git commit -m "Remove submodule entry from .gitmodules"

# 4推送更改到新的仓库：
git push origin <branch_name>
```

#### 大文件的上传
`
yum install -y git-lfs
git lfs install
git lfs track "*.gz"
git add .gitattributes
git add *.gz
git commit -m "your commit message"
git lfs ls-files
git push origin [Branch]
`
