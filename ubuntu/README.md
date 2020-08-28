# Control command

- PHP: `systemctl [start|reload|restart|stop|status] php7.4-fpm`
- MySQL: `systemctl [start|restart|stop|status] mysql`
- Redis: `systemctl [start|restart|stop|status] redis`
- Nginx: `systemctl [start|reload|restart|stop|status] nginx`
- Nginx test: `Nginx -t`
- Memcached: `systemctl [start|restart|stop|status] memcached`


# PHP config paths

```
/etc/php
└── 7.4
    ├── cli
    │   ├── conf.d
    │   │   ├── 10-mysqlnd.ini -> /etc/php/7.4/mods-available/mysqlnd.ini
    │   │   └── ...
    │   ├── php-fpm.conf
    │   ├── php-fpm.conf.dpkg-dist
    │   ├── php.ini
    │   ├── php.ini.ucf-dist
    │   └── pool.d
    │       ├── www.conf
    │       └── www.conf.dpkg-dist
    └── mods-available
        ├── bcmath.ini
        ├── ...
```

# Nginx config paths

```
/etc/nginx/
├── conf.d
├── fastcgi.conf
├── fastcgi_params
├── koi-utf
├── koi-win
├── mime.types
├── modules-available
├── modules-enabled
│   ├── 50-mod-http-geoip.conf -> /usr/share/nginx/modules-available/mod-http-geoip.conf
│   ├── 50-mod-http-image-filter.conf -> /usr/share/nginx/modules-available/mod-http-image-filter.conf
│   ├── 50-mod-http-xslt-filter.conf -> /usr/share/nginx/modules-available/mod-http-xslt-filter.conf
│   ├── 50-mod-mail.conf -> /usr/share/nginx/modules-available/mod-mail.conf
│   └── 50-mod-stream.conf -> /usr/share/nginx/modules-available/mod-stream.conf
├── nginx.conf
├── proxy_params
├── scgi_params
├── sites-available
│   └── default
├── sites-enabled
│   ├── default -> ../sites-available/default
├── snippets
│   ├── fastcgi-php.conf
│   └── snakeoil.conf
├── uwsgi_params
└── win-utf
```

# MySQL config paths

```
/etc/mysql/
├── conf.d
│   ├── mysql.cnf
│   └── mysqldump.cnf
├── debian.cnf
├── debian-start
├── my.cnf -> /etc/alternatives/my.cnf
├── my.cnf.fallback
├── mysql.cnf
└── mysql.conf.d
    ├── mysqld.cnf
    └── mysqld_safe_syslog.cnf
```

# Redis config paths

```
/etc/redis/
└── redis.conf
```

# Redis Database paths

```
/var/lib/redis
└── dump.rdb
└── appendonly.aof

```
