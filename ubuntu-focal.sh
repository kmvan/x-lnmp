#!/bin/bash

# Update system
apt update && apt upgrade -y

# Install PHP/Nginx/MySQL etc
apt install certbot curl fish git htop iftop imagemagick mariadb-server neofetch nginx php7.4-bcmath php7.4-common php7.4-curl php7.4-exif php7.4-fpm php7.4-gd php-imagick php7.4-mbstring php-memcache php-memcached php7.4-mysql php7.4-opcache php-redis php7.4-sqlite3 php7.4-xml php7.4-zip redis-server screen software-properties-common tldr vim libwebp-dev

# Install swoole
apt install php7.4-dev php-pear
pecl install swoole

# Init MySQL/MariaDB
mysql_secure_installation

# PHP config: /etc/php/7.4/
# Nginx config: /etc/nginx/
# MySQL config: /etc/mysql/
# Redis config: /etc/redis/redis.conf
# Redis Database: /var/lib/redis/

