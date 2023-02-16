#### 测试RAM顺序读速度
```
yum install sysbench
sysbench memory --memory-block-size=1G --memory-oper=read --threads=1 run
```

#### 测试RAM顺序写速度
```
yum install sysbench
sysbench memory --memory-block-size=1G --memory-oper=write --threads=1 run
```
