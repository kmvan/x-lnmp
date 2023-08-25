#!/bin/bash

# Update system
apt update && apt upgrade -y

# Install required dependencies
apt install -y ca-certificates apt-transport-https software-properties-common

# Use Surý APT repository
wget -qO - https://packages.sury.org/php/apt.gpg | sudo apt-key add - 

# Import repository key:
echo "deb https://packages.sury.org/php/ bookworm main" | sudo tee /etc/apt/sources.list.d/php.list

# Update
apt update

# install PHP/Nginx/MySQL etc
apt install certbot curl fish git htop iftop imagemagick mariadb-server neofetch nginx redis-server screen tldr vim libwebp-dev
apt install php8.2-bcmath php8.2-common php8.2-curl php8.2-fpm php8.2-gd php8.2-imagick php8.2-mbstring php8.2-memcached php8.2-mysql php8.2-opcache php8.2-redis php8.2-sqlite3 php8.2-xml php8.2-zip

# init MySQL/MariaDB
mysql_secure_installation
