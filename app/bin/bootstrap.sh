#!/bin/bash

########################################################
# Use this file for Provisioning updates to the current
# vagrant controlled VM with:
#  $ vagrant reload --provision
########################################################
# Install website
mkdir /var/www/deployment
cp html.1.0.0.gz /var/www/deployment
tar xfz /var/www/deployment/html.1.0.0.gz /var/www/deployment/
cp /var/www/deployment/html/* ../html/
# start apache2
apachectl start
#if ! [ -L /var/www ]; then
#  rm -rf /var/www
#  ln -fs /vagrant /var/www
#fi
