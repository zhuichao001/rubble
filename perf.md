# 环境准备
```
yum install perf perl -y
wget "https://github.com/brendangregg/FlameGraph/archive/refs/heads/master.zip"

```

## perf 观测火焰图
```

perf record -F 99 -g -p {PID}
//perf report -i perf.data
perf script -i perf.data &> perf.unfold

//download and prepare FlameGraph 
./stackcollapse-perf.pl ../perf.unfold &>../perf.fold
./flamegraph.pl ../perf.fold > ../perf.svg

```
