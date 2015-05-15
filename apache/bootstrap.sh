#!/usr/bin/env bash

echo "Add virtual hosts"

echo "local.ontris-2.com"
cd /var/www/Vagrant/apache
cp ./hosts/local.ontris-2.com.conf /etc/apache2/sites-available/
cd /etc/apache2/sites-available
a2ensite local.ontris-2.com.conf

echo "localhost"
cd /var/www/Vagrant/apache
cp ./hosts/localhost.conf /etc/apache2/sites-available/
cd /etc/apache2/sites-available
a2ensite localhost.conf

echo "Turn on mod_rewrite module"
a2enmod rewrite

/etc/init.d/apache2 restart
