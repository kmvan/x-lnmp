#!/bin/bash

# Update system
pacman -Syu

# install PHP/Nginx/MySQL etc
pcamsn -Sy nginx mariadb python-pip tldr neofetch fish redis curl certbot screen vim htop iftop git imagemagick\
php-common php-bcmath php-fpm php-mbstring php-sqlite php-mysqli php-redis php-opcache php-exif php-imagick php-gd php-zip php-curl php-xml php-memcached php-mongodb php-grpc php-igbinary php-sodium

# init MySQL/MariaDB
mysql_secure_installation
