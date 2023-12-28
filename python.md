#### 安装pip
```
yum install python2-pip
#yum install python3-pip
```

#### 制作wheel包
```
#安装最新版的setuptools、wheel
#python3 -m pip install --user --upgrade setuptools wheel
python setup.py bdist_wheel
```

#### wheel包格式
```
wheel 包的命名格式为:
  {distribution}-{version}(-{build tag})?-{python tag}-{abi tag}-{platform tag}.whl
例如：
  tensorflow-2.3.1-cp36-cp36m-macosx_10_9_x86_64.whl
```
