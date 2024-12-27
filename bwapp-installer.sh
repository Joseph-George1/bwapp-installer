#!/bin/bash

m_ip=$(hostname -I | awk '{print $1}')

chmod +x bWAPP2.2.zip

sudo cp -r bWAPPv2.2.zip /var/www/html

echo "sudo chmod +x bWAPP2.2.zip && sudo unzip bWAPPv2.2.zip -d /var/www/ && sudo chmod 777 /var/www/passwords/ /var/www/images/ /var/www/documents/ /var/www/logs/" > /var/www/html/install.sh

sudo chmod 755 /var/www/html/install.sh

sudo systemctl start apache2

echo "Please copy the next command and paste it in the metasbloitable2 command line"

echo "wget http://${m_ip}/bWAPPv2.2.zip && wget http://${m_ip}/install.sh && ./install.sh"
