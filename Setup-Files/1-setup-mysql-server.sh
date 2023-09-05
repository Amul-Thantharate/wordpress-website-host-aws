#!bin/bash

# Install and update ubuntu server
sudo apt-get update -y
sudo apt-get install -y apache2

# Install php runtime and php mysql connector
sudo apt install php libapache2-mod-php php-mysql -y

# Install mysql-server 
sudo apt-get install mysql-server -y

# Login to MySQL server
sudo mysql -u root

# Change authentication plugin to mysql_native_password (change the password to something strong)
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password by 'admin@123';

# Create a new database user for wordpress (change the password to something strong)
CREATE USER 'wp_user'@localhost IDENTIFIED BY 'admin@123';

# Create a database for wordpress
CREATE DATABASE wp;

# Grant all privilges on the database 'wp' to the newly created user
GRANT ALL PRIVILEGES ON wp.* TO 'wp_user'@localhost;

Exit or ctrl-D