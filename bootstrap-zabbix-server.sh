#!/bin/bash

wget http://repo.zabbix.com/zabbix/3.2/ubuntu/pool/main/z/zabbix-release/zabbix-release_3.2-1+xenial_all.deb
dpkg -i zabbix-release_3.2-1+xenial_all.deb

apt-get update
apt-get -y install apache2 php7.0-xml php7.0-bcmath php7.0-mbstring zabbix-server-mysql zabbix-frontend-php zabbix-agent

sudo service mysql start

