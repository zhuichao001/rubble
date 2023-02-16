#### 汇编、反汇编某动态库
```
gcc -fPIC -shared -fno-plt -o lib{some}.so {some}.c
objdump -S lib{some}.so
```
