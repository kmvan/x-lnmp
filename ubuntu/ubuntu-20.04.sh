#!/bin/bash

# Install properties package
apt install software-properties-common

# Add ondrej's PHP repo
add-apt-repository ppa:ondrej/php

# Add ondrej's nginx mainline repo
add-apt-repository ppa:ondrej/nginx-mainline

# Update system
apt update && apt upgrade -y

# PHP-8.1
# Install the software that may be required
apt install certbot curl fish git htop iftop imagemagick mariadb-server neofetch nginx redis-server screen tldr vim libwebp-dev
apt install php8.1-bcmath php8.1-common php8.1-curl php8.1-fpm php8.1-gd php8.1-imagick php8.1-mbstring php8.1-memcached php8.1-mysql php8.1-opcache php8.1-redis php8.1-sqlite3 php8.1-xml php8.1-zip

# Install swoole
apt install php8.1-dev php8.1-pear
pecl install swoole

# Init MySQL/MariaDB
mysql_secure_installation

# Use password login MySQL
# update mysql.user set plugin='mysql_native_password' where user='root';
# update mysql.user set password=password("YOUR ROOT PASSWORD") where user='root'; 
# FLUSH PRIVILEGES;

