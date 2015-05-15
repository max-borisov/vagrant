#!/usr/bin/env bash

DB_USER=root
DB_PASS=root

apt-get install debconf-utils -y

echo "mysql-server mysql-server/root_password password $DB_PASS" | debconf-set-selections
echo "mysql-server mysql-server/root_password_again password $DB_PASS" | debconf-set-selections

apt-get install -y mysql-server

mysql -u $DB_USER -p$DB_PASS -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '$DB_PASS' WITH GRANT OPTION; FLUSH PRIVILEGES;"

# /etc/mysql/my.cnf
# bind-address            = 0.0.0.0
# sudo service mysql restart
