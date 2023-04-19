#### 安装并启动mysql
```
wget https://dev.mysql.com/get/mysql57-community-release-el7-8.noarch.rpm
rpm -ivh mysql57-community-release-el7-8.noarch.rpm
rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022
cd /etc/yum.repos.d/
yum -y install mysql-server
systemctl start mysqld
```

#### 使用mysql
```
grep 'temporary password' /var/log/mysqld.log
mysql -uroot -p # input the password
set password for root@localhost = password(‘new passord for root’);
```
