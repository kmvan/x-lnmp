#!/bin/bash

# To add this repository please do:

if [ "$(whoami)" != "root" ]; then
    SUDO=sudo
fi

${SUDO} apt-get update
${SUDO} apt-get -y install lsb-release ca-certificates curl
${SUDO} curl -sSLo /tmp/debsuryorg-archive-keyring.deb https://packages.sury.org/debsuryorg-archive-keyring.deb
${SUDO} dpkg -i /tmp/debsuryorg-archive-keyring.deb
${SUDO} sh -c 'echo "deb [signed-by=/usr/share/keyrings/debsuryorg-archive-keyring.gpg] https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
${SUDO} apt-get update

# install PHP/Nginx/MySQL etc
${SUDO} apt install certbot imagemagick mariadb-server nginx redis-server libwebp-dev
${SUDO} apt install php8.4-bcmath php8.4-common php8.4-curl php8.4-fpm php8.4-gd php8.4-imagick php8.4-mbstring php8.4-memcached php8.4-mysql php8.4-opcache php8.4-redis php8.4-sqlite4 php8.4-xml php8.4-zip

# init MySQL/MariaDB
${SUDO} mysql_secure_installation
