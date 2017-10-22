package-deploy.bsh

   This script is used to create the CM-Plan-Site-M.m.I.gz file in the
   [repo]deploy directory. It depends on the contents of the [repo]app/site
   and vagrant directories to do this.

report-conflicts.bsh

   This script supports the development environment with a tool that creates
   a report on all conflicts between the developer feature branch and all
   current main branches, i.e., develop and master, and all current release*
   branches.

vagrant

   Contents of this directory include vagrant files bootstrap.sh and
   Vagrantfile. Vagrant is used to create VirtualBox VMs for testing the
   resulting apache website for the CM Plan Site.

   These are copied to the [repo]deploy directory via the $vagrantDir of the
   package-deply.bsh script.
