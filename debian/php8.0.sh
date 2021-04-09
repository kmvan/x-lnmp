#!/bin/bash

# Update system
apt update && apt upgrade -y

# Install required dependencies
apt install -y ca-certificates apt-transport-https software-properties-common

# Use Surý APT repository
wget -qO - https://packages.sury.org/php/apt.gpg | sudo apt-key add - 

# Import repository key:
echo "deb https://packages.sury.org/php/ buster main" | sudo tee /etc/apt/sources.list.d/php.list

# Update
apt update

# install PHP/Nginx/MySQL etc
apt install -y php8.0-common php8.0-bcmath php8.0-fpm php8.0-mbstring php8.0-sqlite3 php8.0-mysqli php8.0-redis php8.0-opcache php8.0-exif php8.0-imagick php8.0-gd php8.0-zip php8.0-curl php8.0-xml php8.0-memcached \
nginx python-pip imagemagick mariadb-server redis-server curl certbot screen vim htop iftop git tldr neofetch fish

# init MySQL/MariaDB
mysql_secure_installation
