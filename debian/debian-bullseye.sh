#!/bin/bash

# Update system
apt update && apt upgrade -y

# install PHP/Nginx/MySQL etc
apt install software-properties-common python-pip php7.4-common php7.4-bcmath php7.4-fpm nginx php7.4-mbstring php7.4-sqlite3 php7.4-mysqli php7.4-redis php7.4-opcache php7.4-exif php7.4-imagick php7.4-gd php7.4-zip php7.4-curl imagemagick mariadb-server redis-server curl certbot screen vim htop iftop git php7.4-xml php7.4-memcached php7.4-memcache tldr neofetch fish

# init MySQL/MariaDB
mysql_secure_installation
