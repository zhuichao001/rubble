#### CPU 性能热点
```
$ perf top
Samples: 833  of event 'cpu-clock', Event count (approx.): 97742399
Overhead  Shared Object       Symbol
   7.28%  perf                [.] 0x00000000001f78a4
   4.72%  [kernel]            [k] vsnprintf
   4.32%  [kernel]            [k] module_get_kallsym
   3.65%  [kernel]            [k] _raw_spin_unlock_irqrestore
   ...
```
#每一行包含四列，分别是：  
 - 第一列 Overhead ，是该符号的性能事件在所有采样中的比例，用百分比来表示。
 - 第二列 Shared ，是该函数或指令所在的动态共享对象（Dynamic Shared Object），如内核、进程名、动态链接库名、内核模块名等。
 - 第三列 Object ，是动态共享对象的类型。比如 [.] 表示用户空间的可执行程序、或者动态链接库，而 [k] 则表示内核空间。
 - 最后一列 Symbol 是符号名，也就是函数名。当函数名未知时，用十六进制的地址来表示。
