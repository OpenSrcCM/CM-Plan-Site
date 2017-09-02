#!/bin/bash

########################################################
# Use this file for Provisioning updates to the current
# vagrant controlled VM with:
#  $ vagrant reload --provision
#
# Note that contents of /var/www/deployment can be
# used to diff with current deployment in /var/www/html.
########################################################
# Install website
cp -R /vagrant/html/* /var/www/html/
# start apache2
apachectl start
rm -r /vagrant/html/
#if ! [ -L /var/www ]; then
#  rm -rf /var/www
#  ln -fs /vagrant /var/www
#fi
