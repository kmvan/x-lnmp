#!/bin/bash

# Install properties package
apt install software-properties-common

# Add ondrej's PHP repo
add-apt-repository ppa:ondrej/php

# Add ondrej's nginx mainline repo
add-apt-repository ppa:ondrej/nginx-mainline

# Update system
apt update && apt upgrade -y

# Install the software that may be required
apt install certbot curl fish git htop iftop imagemagick mariadb-server neofetch nginx redis-server screen tldr vim libwebp-dev

# Install PHP
apt install php8.2-bcmath php8.2-common php8.2-curl php8.2-fpm php8.2-gd php8.2-imagick php8.2-mbstring php8.2-memcached php8.2-mysql php8.2-opcache php8.2-redis php8.2-sqlite3 php8.2-xml php8.2-zip

# Install swoole
apt install php8.2-dev php8.2-pear
pecl install swoole

# Init MySQL/MariaDB
mysql_secure_installation

# Use password login MySQL
# update mysql.user set plugin='mysql_native_password' where user='root';
# update mysql.user set password=password("YOUR ROOT PASSWORD") where user='root'; 
# FLUSH PRIVILEGES;

