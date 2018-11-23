#!/bin/bash

########################################################
# Use this file for Provisioning updates to the current
# vagrant controlled VM with:
#  $ vagrant provision
#
########################################################
# Install website
cp -R /vagrant/html/* /var/www/html/
# start apache2
apachectl start
rm -r /vagrant/html/
# Install containers
mkdir /containers
cp -r /vagrant/containers/* /containers/
mv /containers/daemon.json /etc/docker/
# Remove Deployment tools
rm -r /vagrant/package-deploy.bsh
rm -r /vagrant/bootstrap.sh
rm -r /vagrant/vagrantfile
rm -r /vagrant/containers
