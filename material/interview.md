1. C++构造函数有哪几种？分别有什么用途？
2. 阐述一下代码会发生什么？
```
class A{
    public:
        A(double i);  
        // explicit A(double i);  
        //virtual ~A(){}
};
A a = 2;
```

2. 写一个C++类，可以实现无类型操作，例如a=1, a='abc', a=3.134
3. C++的动态库加载dlopen，多线程使用单例有影响吗，是不是同一个对象？
4. 内存性能优化方面有没有经验
5. python性能调优经验
6. std::deque的底层实现,  std::queue的实现
7. std::make_shared的原理，
8. shared_from_this的作用
9. 对于延迟较大的网络（长肥管道），有哪些办法可以提升吞吐?
10. 说下mmap都用在什么地方（发散题目）
11. 线上系统负载高，但是cpu利用率并不高，可能会是什么原因，怎么排查?
12. 陈述一个多线程消息队列的实现，如何优化瓶颈?
13. T&、std::unique_ptr<T>、std::unique_ptr<T> &, std::unique_ptr<T> &&的区别?
