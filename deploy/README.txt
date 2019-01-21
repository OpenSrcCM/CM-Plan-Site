##################################################################################
# This deploy directory is where and how the deployment is managed. 
#
# 1. To setup the EM&M CM Plan Website development environment:
#    ./enable-functionality.bsh
#    ./cm-plan-site.bsh Major Minor Issue
#      The ~/bin/NE-startup.bsh installed script can also be used to include 
#      starting from the "git clone". This script should only be run when
#      the CM-Plan-Site has not been checked out.
#
#   Notes:
#     A. The arguments for Major, Minor, Issue are up to the current user. The
#        current values can be used to identify a tested or production release.
# 
#        Version 1.1.0 represents updates developed and tested and deployable
#        from the master branch.
#
#        Version 1.1.0 is the beginning of using ADRs. The first one is
#        documented in /doc/arch/adr-0001.md. The app/site/newstuff contents
#        have also been migrated to areas of app/site removing the need
#        for app/site/newstuff.
#
#        The version is maintained in the following directory files:
#         - app/site/basis/footer.html
#         - app/site/basis/subfooter.html
#         - app/site/sitemap/site-map.adoc (2nd line - use AsciidocFX)
#         - app/site/sitemap/site-map.pdf (AsciidocFX on site-map.adoc)
#     B. When developing and releasing for this repo, all changes made anywhere
#        require a final review of the following component directories of this
#        website. Refer to local README.txt files for further details of each:
#          a. app/bin
#          b. app/bin/vagrant
#                The vagrantfile is now using centos-7.5. 
#          c. app/site/basis
#          e. app/site/sitemap
#     C. Verify working versions of prerequisite applications each release:
#          a. Git version 2.20.1-64-bit.exe 
#          b. Oracle VirtualBox-5.2.24-128163-Win.exe
#          c. vagrant_2.2.3_x86_64.msi
#               NOTES:
#                  1. For vagrant ssh, .bash_profile setting:
#                     $ VAGRANT_PREFER_SYSTEM_BIN=1 vagrant ssh
#                        export VAGRANT_PREFER_SYSTEM_BIN=1
#                  2. Also added following to .bash_profile so python can
#                     be run from git bash window:
#                        alias python='winpty c:Python27/python.exe'
#                  3. Maintain copy of .bash_profile in /app/bin for backup.
#          d. AsciidoxFX 1.6.9
#     D. For each deployment occurrence vagrant along with other deployment
#        automation is disabled. So, for example, you will not be able to run 
#        "vagrant destroy" after a deployment. To enable vagrant and other
#        deployment tasks reference step 2.
# 
# 2. To enable development maintenance and deployment functionality:
#    ./enable-functionality.bsh
#
# 3. To remove the CM Plan Website Service:
#   - vagrant destroy
# 
# This directory is used for automated deployments. The only committed files
# are:
#       this README.txt file,
#       the cm-system-service.bsh, and
#       enable-functionality.bsh scripts.
# The purpose of these files is to allow development to occur along with
# multiple automated builds and deployments. These scripts promote the
# performance of the entire automated deployment system, not just patches done
# quickly in a development mode.
# 
#    NOTE: When executing cm-system-service.bsh, if it fails, review log
#          and run again. Failures in the past have been related to new
#          versions of build components used for this build process.
#
# The following files are copied to this directory from the /app/bin of this
# repo. Along with .gitignore modifications this encourages DevOps principles.
#    bootstrap.sh
#    vagrantfile
#    package-deploy.bsh
#      Note: Reference the following for details:
#         http://itrevolution.com/the-three-ways-principles-underpinning-devops/
#
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
