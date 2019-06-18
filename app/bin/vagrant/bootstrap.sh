#!/bin/bash

########################################################
# Use this file for Provisioning updates to the current
# vagrant controlled VM with:
#  $ vagrant provision
#
########################################################
# Add Python based on Option 2: of
# https://phoenixnap.com/kb/how-to-install-python-3-centos-7
mkdir /app
mkdir /app/src
cd /app/src
## Download the Python3 version and install separately:
wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz
## Extract and compile the package:
tar xzf Python-3.7.3.tgz
cd Python-3.7.3
./configure --enable-optimizations
make altinstall
cd /usr/bin
ln -s /app/src/Python-3.7.3/python  python37
## Verify both python versions:
python --version
python37 --version
########################################################
# Install website
cp -R /home/vagrant/html/* /var/www/html/
# start apache2
apachectl start
rm -r /home/vagrant/html/
# Remove Deployment tools
rm -r /home/vagrant/package-deploy.bsh
rm -r /home/vagrant/bootstrap.sh
rm -r /home/vagrant/vagrantfile
