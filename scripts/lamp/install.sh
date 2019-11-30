#!/bin/bash
sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get install -y ufw
sudo apt-get install -y apache2
sudo ufw allow in "Apache Full"
sudo apt-get install -y curl
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get install -y mysql-server
sudo apt-get install -y php libapache2-mod-php php-mysql
sudo yes | sudo cp -rf ./dir.conf /etc/apache2/mods-enabled/dir.conf
sudo systemctl restart apache2
sudo apt install -y php-cli
