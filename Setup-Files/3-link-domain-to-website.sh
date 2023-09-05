#!/bin/bash

# Purchase a domain name from godaddy.com or and other domain name provider 
# and point the domain name to the public ip address of the EC2 instance

# Point your domain name to the public ip address of the EC2 instance

cd /etc/apache2/sites-available/
vi 000-default.conf

# Change the ServerName to your domain name and ServerAlias to www.yourdomainname.com

ServerName yourdomainname.com
ServerAlias www.yourdomainname.com

# Restart the apache2 service
sudo systemctl restart apache2

# Go to the browser and type your domain name

# If you get an error like this:
# This site can’t be reached
# then you need to point your domain name to the public ip address of the EC2 instance

www.yourdomainname.com # Hit to the browser