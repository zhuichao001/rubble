## 使用systemctl来接管服务
```
[Unit]
Description=Example daemon

[Service]
Type=simple
Restart=always
ExecStart=
ExecStop=/bin/kill -9 $MAINPID

[Install]
WantedBy=multi-user.target
```

## 安装
```
cp example.service /usr/lib/systemd/system/
systemctl enable example.service
systemctl daemon-reload
systemctl start example
systemctl status example
#systemctl stop example
```
