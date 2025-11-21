#!/bin/bash

# Install properties package
sudo apt install software-properties-common

# Add ondrej's PHP repo
sudo add-apt-repository ppa:ondrej/php

# Update system
sudo apt update && sudo apt upgrade -y

# Install the software that may be required
sudo apt install certbot curl git htop iftop imagemagick mariadb-server nginx redis-server vim libwebp-dev

# Install PHP 8.5
# sudo apt install php8.5-bcmath php8.5-common php8.5-curl php8.5-fpm php8.5-gd php8.5-igbinary php8.5-intl php8.5-mbstring php8.5-odbc php8.5-mysql php8.5-pgsql php8.5-readline php8.5-redis php8.5-sqlite3 php8.5-tidy php8.5-xml php8.5-zip
# Install PHP 8.4
sudo apt install php8.4-bcmath php8.4-common php8.4-curl php8.4-fpm php8.4-gd php8.4-imagick php8.4-mbstring php8.4-memcached php8.4-mysql php8.4-opcache php8.4-redis php8.4-sqlite3 php8.4-xml php8.4-zip

# Install swoole for PHP 8.4
sudo apt install php8.4-dev php8.4-pear
sudo pecl install swoole

# Init MySQL/MariaDB
sudo mysql_secure_installation

# Use password login MySQL
# update mysql.user set plugin='mysql_native_password' where user='root';
# update mysql.user set password=password("YOUR ROOT PASSWORD") where user='root'; 
# FLUSH PRIVILEGES;

