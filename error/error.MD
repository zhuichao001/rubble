# error while loading shared libraries
```
vi /etc/ld.so.conf, 在"include ld.so.conf.d/*.conf"下方增加"/usr/local/lib"
/sbin/ldconfig -v
```
