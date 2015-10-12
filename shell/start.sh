#!/bin/sh
apt-get update -y
apt-get install -y git vim rsync curl nodejs nodejs-legacy npm php5 php5-fpm php5-cli php5-common php5-intl php5-json php5-mysql php5-gd php5-imagick php5-curl php5-mcrypt php5-dev php5-xdebug

npm install -g bower

# Enable disabled by default mcrypt
php5enmod mcrypt

#composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer
