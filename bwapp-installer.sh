#!/bin/bash

sudo get clone https://github.com/joseph-george1/bwapp-installer.git

cd bwapp-installer

chmod +x bWAPP2.2.zip

sudo unzip bWAPPv2.2.zip -d /var/www/

sudo chmod 777 /var/www/passwords/
sudo chmod 777 /var/www/images/
sudo chmod 777 /var/www/documents/
sudo chmod 777 /var/www/logs/
