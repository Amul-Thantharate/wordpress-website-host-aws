#!/bin/bash

# Install wget and unzip 
sudo apt-get install wget unzip -y

# Download wordpress
cd /tmp
wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz

# Move the wordpress files to /var/www/html
sudo mv wordpress/ /var/www/html

# Then move to the wordpress folder 
cd /var/www/html/wordpress
vi wp-config.php

# ip-address followed by wordpress
34.239.124.228/wordpress/   # This is the ip address of the EC2 instance there will be your ip address followed by wordpress

# Then change the directory to /etc/apache2/sites-available
cd /etc/apache2/sites-available
vi 000-default.conf

# Start the service and go to the browser and type the ip address followed by wordpress
sudo service systemctl restart apache2
http://followedbywordpressipaddress/

