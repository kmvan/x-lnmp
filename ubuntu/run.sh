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
apt install php8.3-bcmath php8.3-common php8.3-curl php8.3-fpm php8.3-gd php8.3-imagick php8.3-mbstring php8.3-memcached php8.3-mysql php8.3-opcache php8.3-redis php8.3-sqlite3 php8.3-xml php8.3-zip

# Install swoole
apt install php8.3-dev php8.3-pear
pecl install swoole

# Init MySQL/MariaDB
mysql_secure_installation

# Use password login MySQL
# update mysql.user set plugin='mysql_native_password' where user='root';
# update mysql.user set password=password("YOUR ROOT PASSWORD") where user='root'; 
# FLUSH PRIVILEGES;

