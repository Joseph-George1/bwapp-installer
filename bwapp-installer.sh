#!/bin/bash

# Get the local IP address
m_ip=$(hostname -I | awk '{print $1}')

# Create an install.sh script with the necessary commands
echo -e "\033[1;32m sudo wget http://${m_ip}/bWAPPv2.2.zip && sudo chmod +x bWAPPv2.2.zip && sudo unzip bWAPPv2.2.zip -d /var/www/ && sudo chmod 777 /var/www/passwords/ /var/www/images/ /var/www/documents/ /var/www/logs/ \033[0m" > install.sh

# Set executable permissions for the bWAPP zip and install.sh
sudo chmod 755 bWAPPv2.2.zip
sudo chmod 755 install.sh

# Copy bWAPP zip and install.sh to the web server directory
sudo cp -r bWAPPv2.2.zip /var/www/html
sudo cp -r install.sh /var/www/html

# Start the Apache web server
sudo systemctl start apache2

# Provide instructions for metasploitable2
echo -e "\033[1;33m Please copy the next command and paste it in the metasbloitable2 command line \033[0m"
echo -e "\033[1;34m wget http://${m_ip}/install.sh && chmod 755 install.sh && ./install.sh \033[0m"
echo -e "\033[1;36m Visit the next site for installation \033[0m"
echo -e "\033[1;35m http:// <metasbloitable2 ip >/bWAPP/install.php \033[0m"
