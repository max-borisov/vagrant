#!/usr/bin/env bash

echo "Update Ubuntu"
apt-get update

echo "Install vim"
apt-get install -y vim

echo "Install mc"
# apt-get install -y mc > /dev/null
apt-get install -y mc

echo "Install tmux"
apt-get install -y tmux

echo "Install Git"
apt-get install -y software-properties-common python-software-properties
add-apt-repository ppa:git-core/ppa -y
apt-get update -y
apt-get install -y git

echo 'Install Nginx. Nginx requires software-properties-common and python-software-properties'
apt-get install -y python-software-properties software-properties-common
add-apt-repository ppa:nginx/stable
apt-get update
apt-get install -y nginx

echo "Install php5.6"
add-apt-repository -y ppa:ondrej/php5-5.6
apt-get update -y
apt-get install -y php5

# sudo apt-get install php5-phpdbg

echo "Install php extensions"
apt-get install -y php5-cli php5-dev php5-fpm php5-curl php5-memcache php5-gd php5-mcrypt php5-mysql php-pear php5-imagick php5-sqlite php5-tidy php5-xmlrpc php5-xsl php5-intl php5-pgsql php-apc php5-xdebug

# php.ini
# error_reporting = E_ALL
# display_errors = On
# display_startup_errors = On
# upload_max_filesize = 100M
# error_log = php_errors.log
# date.timezone = 'Europe/Copenhagen'

# do not need
#echo "Upadte libicu / ICU version"
#sudo add-apt-repository -y ppa:rzz/icu && sudo aptitude update

echo "Install composer"
cd /tmp
apt-get install -y curl
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
cd /var/www

# sudo find / -name vagrant -type d
