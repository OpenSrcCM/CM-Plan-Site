##################################################################################
# This deploy directory is where the deployment is managed from. 
#
# 1. To enable the CM Plan Website Service:
#    ./cm-system-service.bsh Major Minor Issue
#
#   Notes:
#     1. When developing and releasing for this repo, all changes made anywhere
#        need to be considered for the following component directories of this
#        website. Refer to local README.txt files for further details of each:
#          a. app/bin/vagrant
#          b. app/site/newstuff
#          c. app/site/sitemap
#     3. Current working versions of Prequisite applications:
#          a. Git 2.15.1.windows.2
#          b. Oracle VM VirtualBox 5.2.6
#          c. Vagrant 2.0.1
#               NOTE: Need to add the following to ~/.bash_profile for the
#                     vagrant ssh functionality:
#                     $ VAGRANT_PREFER_SYSTEM_BIN=1
#          d. AsciidoxFX 1.5.8
#     4. At this point vagrant is disabled so you will not be able to run 
#        "vagrant destroy" for example. To enable vagrant and other deployment
#        tasks reference step 2.
# 
# 2. To enable maintenance and deployment functionality:
#    ./enable-functionality.bsh
#
# 3. To remove the CM&M CM System Website Service:
#   - vagrant destroy
# 
# This directory is used for automated deployments. The only committed files
# are this README.txt file, the cm-system-service.bsh, and
# enable-functionality.bsh scripts.
#
# Files vagrantfile and bootstrap.sh are maintained in /app/bin/vagrant
# for git commit purposes.
#
# The package-deployment.bsh file is maintained in the /app/bin directory.
#
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
