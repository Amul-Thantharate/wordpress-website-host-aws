#!/bin/bash 

# Install certbot 

sudo apt-get update -y
sudo apt-get install software-properties-common -y
sudo apt-get install certbot certbot-apache -y

# Generate SSL certificate

sudo certbot --apache -d www.yourdomainname.com 
            or
sudo certbot --apache

# You will get a link to email addess and terms and conditions

https://www.yourdomainname.com