#### nc命令说明

```
nc [参数]：
  -g    <网关>         设置路由器跃程通信网关，最多可设置8个
  -G    <指向器数目>   设置来源路由指向器，其数值为4的倍数
  -h    <在线帮助>
  -i    <延迟秒数>     设置时间间隔，以便传送信息及扫描通信端口
  -l    <监听模式>
  -n    直接使用IP地址，而不通过域名服务器
  -o    <输出文件>     指定文件名称，把往来传输的数据以16进制字码倾倒成该文件保存
  -p    <通信端口>     设置本地主机使用的通信端口
  -r    随机指定本地与远端主机的通信端口
  -s    <来源位址>     设置本地主机送出数据包的IP地址
  -u    使用UDP传输协议
  -v    显示指令执行过程
  -w    <超时秒数>     设置等待连线的时间
  -z    使用0输入/输出模式，只在扫描通信端口时使用
```

#### 使用样例

- 传文件  
```
nc -l 1234 > dat.txt
nc 192.168.2.34 < dat.txt
```

- 简单聊天工具  
```
nc -l 1234
nc 192.168.2.34 1234
```

- 建立从本地1234端口到host.example.com的80端口连接，5秒超时  
```
nc -p 1234 -w 5 blog.51yip.com 80
```

- UDP server
```
nc -u 192.168.1.102 53
```

- Unix 域套接字上创建连接并侦听：
```
nc -lU /var/tmp/xxx.socket 
```

- 端口扫描

```
nc -v -w 2 192.168.1.34 -z 21-24            

nc: connect to 192.168.2.34 port 21 (tcp) failed: Connection refused
Connection to 192.168.2.34 22 port [tcp/ssh] succeeded!
nc: connect to 192.168.2.34 port 23 (tcp) failed: Connection refused
nc: connect to 192.168.2.34 port 24 (tcp) failed: Connection refused
```
