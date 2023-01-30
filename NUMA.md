## numactl工具
numactl工具可用于查看当前服务器的NUMA节点配置、状态（也可通过该工具将进程绑定到指定CPU核上）  
- numactl -H 查看当前服务器的NUMA配置
- numastat 查看当前的NUMA运行状态

## NUMA优化
减少跨NUMA访问内存  
- （1）将设备中断绑定到特定CPU核上
```
echo $cpuNumber > /proc/irq/$irq/smp_affinity_list
//例如
echo 0-4 > /proc/irq/78/smp_affinity_list
echo 3,8 > /proc/irq/78/smp_affinity_list
```
- （2）通过numactl启动程序
```
//mongo只能在CPU core 0到core7运行(-C控制)
numactl -C 0-7 ./mongod
```
- （3）可以使用 taskset 命令把一个程序绑定在一个核上运行
```
taskset -c 0 ./redis-server
```
- （4）在C/C++代码中通过sched_setaffinity函数来设置线程亲和性

## NUMA内存分配策略
- 缺省default: 总是在本地节点分配(当前进程运行的节点上)
- 绑定bind: 强制分配到指定节点上
- 交叉interleavel: 在所有节点或者指定节点上交叉分配内存
- 优先preferred: 在指定节点上分配，失败则在其他节点上分配
```
  //查看当前NUMA策略
  numactl --show
```
