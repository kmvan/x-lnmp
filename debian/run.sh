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
apt install php8.3-bcmath php8.3-common php8.3-curl php8.3-fpm php8.3-gd php8.3-imagick php8.3-mbstring php8.3-memcached php8.3-mysql php8.3-opcache php8.3-redis php8.3-sqlite3 php8.3-xml php8.3-zip

# init MySQL/MariaDB
mysql_secure_installation
