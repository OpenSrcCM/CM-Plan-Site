Purpose of /app/bin directory

Contains the elements that the CM System Site is build from.  The script
package-deploy.bsh assembles a tar gz file for deployment to an apache
website html directory. 

All deployment testing and automation occurs via the deploy directory.
Refer to the README.txt in the deploy directory for details.

Sub-Directories: (listed in order of development usage)

Learn

   Contents of this direct are used to experiment with a "best in class"
   approach to using html5 concepts.

workarea

   This directory is used to build the Site content. The primary tool is
   AsciidocFX. The asciidoc syntax is used to create html5 formated content
   for the CM System Site.

vagrant

   Contents of this directory include vagrant files bootstrap.sh and
   Vagrantfile. Vagrant is used to create VirtualBox VMs for testing the
   resulting apache website for the CM System Site.

Basis

   This directory contains the primary CM System Site components destined for
   the apache /var/www/html directory. The workarea directory is usually used
   to create elements for this directory.

about

   High level narative on what this website is about.

Overview

   Overview of the CM System Website.

Plan

   Default CM Plan documentation. This template is maintained to apply the
   latest appropriate Configuration Management concepts for the this site.

server

   This is the directory the where the deployment package is assembled and
   bundled from.
