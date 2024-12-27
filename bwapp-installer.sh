#!/bin/bash

m_ip=$(hostname -I | awk '{print $1}')


echo "sudo wget http://${m_ip}/bWAPPv2.2.zip && sudo chmod +x bWAPPv2.2.zip && sudo unzip bWAPPv2.2.zip -d /var/www/ && sudo chmod 777 /var/www/passwords/ /var/www/images/ /var/www/documents/ /var/www/logs/" > install.sh

sudo chmod 755 bWAPPv2.2.zip

sudo chmod 755 install.sh

sudo cp -r bWAPPv2.2.zip /var/www/html

sudo cp -r install.sh /var/www/html

sudo systemctl start apache2

echo "Please copy the next command and paste it in the metasbloitable2 command line"

echo "wget http://${m_ip}/install.sh && chmod 755 install.sh && ./install.sh"
