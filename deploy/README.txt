# This deploy directory used by vagrant. 
#
#
# 1. To install a new deployment on a new VM:
#   - cd ../app/bin
#   - ./package-deploy.bsh Major Minor Issue
#   - cd ../../deploy
#   - vagrant up
# 
# 2. To install an existing deployment:
#   - rm vagrantfile bootstrap.sh
#   - tar xfz CM-Plan-Site-M.m.I.gz
#   - vagrant provision
#
# 3. To install a new deployment:
#   - cd ../app/bin
#   - ./server-deploy.bsh Major Minor Issue
#   - cd ../../deploy
#   - vagrant provision
# 
# This directory is used for automated deployments. The only file checked in
# Should be this README.txt to keep the directory available. The 
# ../.gitignore file is used to assist in enforcing this.

# Files vagrantfile and bootstrap.sh are maintained in /app/bin/vagrant
# for git commit purposes. 

##################################################################################
#
# HTML5 References:
#
# https://www.w3.org/TR/html51/
# https://www.w3.org/TR/html5/
# https://www.smashingmagazine.com/2009/08/designing-a-html-5-layout-from-scratch/
#
#   Training:
#
# https://www.w3schools.com/html/html5_intro.asp
# http://www.htmlgoodies.com/html5/client/learn-html5-in-5-minutes-.html
#
##################################################################################
