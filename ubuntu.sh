#!/bin/bash

# add repository
add-apt-repository ppa:ondrej/php
add-apt-repository ppa:ondrej/nginx

# Update system
apt update && apt upgrade -y

# install PHP/Nginx/MySQL etc
apt install certbot curl fish git htop iftop imagemagick mariadb-server neofetch nginx php7.4-bcmath php7.4-common php7.4-curl php7.4-exif php7.4-fpm php7.4-gd php7.4-imagick php7.4-mbstring php7.4-memcache php7.4-memcached php7.4-mysqli php7.4-opcache php7.4-redis php7.4-sqlite3 php7.4-xml php7.4-zip python-pip redis-server screen software-properties-common tldr vim

# init MySQL/MariaDB
mysql_secure_installation

# PHP config: /etc/php/7.4/
# Nginx config: /etc/nginx/
# MySQL config: /etc/mysql/
# Redis config: /etc/redis/redis.conf
# Redis Database: /var/lib/redis/

