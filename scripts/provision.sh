#!/bin/bash

#Install nginx
apt install -y nginx

#Enforce silent mode installation on MySQL server
export DEBIAN_FRONTEND="noninteractive"

#Input root password of MySQL server for silent mode installation
debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"

#Install MySQL server
apt install -y mysql-server

