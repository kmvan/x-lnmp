#!/bin/bash

# Install properties package
apt install software-properties-common

# Add ondrej's PHP repo
add-apt-repository ppa:ondrej/php

# Update system
apt update && apt upgrade -y

# Install the software that may be required
apt install certbot curl fish git htop iftop imagemagick mariadb-server neofetch nginx redis-server screen tldr vim libwebp-dev

# Install PHP
apt install php8.4-bcmath php8.4-common php8.4-curl php8.4-fpm php8.4-gd php8.4-imagick php8.4-mbstring php8.4-memcached php8.4-mysql php8.4-opcache php8.4-redis php8.4-sqlite3 php8.4-xml php8.4-zip

# Install swoole
apt install php8.4-dev php8.4-pear
pecl install swoole

# Init MySQL/MariaDB
mysql_secure_installation

# Use password login MySQL
# update mysql.user set plugin='mysql_native_password' where user='root';
# update mysql.user set password=password("YOUR ROOT PASSWORD") where user='root'; 
# FLUSH PRIVILEGES;

