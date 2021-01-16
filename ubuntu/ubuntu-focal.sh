#!/bin/bash

# Can add PHP-8.0 repo
# add-apt-repository ppa:ondrej/php

# Update system
apt update && apt upgrade -y

# Install PHP/Nginx/MySQL etc
# PHP-7.4
apt install certbot curl fish git htop iftop imagemagick mariadb-server neofetch nginx php7.4-bcmath php7.4-common php7.4-curl php7.4-exif php7.4-fpm php7.4-gd php-imagick php7.4-mbstring php-memcache php-memcached php7.4-mysql php7.4-opcache php-redis php7.4-sqlite3 php7.4-xml php7.4-zip redis-server screen software-properties-common tldr vim libwebp-dev

# PHP-8.0
# apt install certbot curl fish git htop iftop imagemagick mariadb-server neofetch nginx php8.0-bcmath php8.0-common php8.0-curl php8.0-exif php8.0-fpm php8.0-gd php8.0-imagick php8.0-mbstring php8.0-memcached php8.0-mysql php8.0-opcache php8.0-redis php8.0-sqlite3 php8.0-xml php8.0-zip redis-server screen software-properties-common tldr vim libwebp-dev

# Install swoole
apt install php7.4-dev php-pear
# apt install php8.0-dev php8.0-pear
pecl install swoole

# Init MySQL/MariaDB
mysql_secure_installation


