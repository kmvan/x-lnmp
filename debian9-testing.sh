#!/sbin/sh
apt update && apt upgrade -y
apt install software-properties-common python-pip php7.2-common php7.2-bcmath php7.2-fpm nginx php7.2-mbstring php7.2-sqlite3 php7.2-mysqli php7.2-redis php7.2-opcache php7.2-exif php7.2-imagick php7.2-gd php7.2-zip php7.2-curl imagemagick mariadb-server redis-server curl certbot screen vim htop iftop

mysql_secure_installation
