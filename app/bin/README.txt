Purpose of /app/bin directory

Contains the elements that the CM Plan Site is build from.  The script
package-deploy.bsh assembles a tar gz file for deployment to an apache
website html directory. 

All deployment testing and automation occurs via the deploy directory.
Refer to the README.txt in the deploy directory for details.

Sub-Directories: (listed in order of development usage)

learn

   This directory is not linked to the website. It is available from the
   browser address bar only.

   Contents of this direct are used to experiment with a "best in class"
   approach to using html5 concepts.

workarea

   This directory is used to build the Site content. The primary tool is
   AsciidocFX. The asciidoc syntax is used to create html5 formated content
   for the CM Plan Site. The resulting asciidoc html5 files are maintained
   here and copied into their respective website directories.

vagrant

   Contents of this directory include vagrant files bootstrap.sh and
   Vagrantfile. Vagrant is used to create VirtualBox VMs for testing the
   resulting apache website for the CM Plan Site.

   This directory is not part of the resulting website.

basis

   This directory contains the primary CM Plan Site components destined for
   the apache /var/www/html directory. The home page of the website is
   maintained in this directory.
   
   The workarea directory is used to create elements for the other directories
   that become sub-directories of the website. These are gathered and tar`d in
   the server directory by the package-deploy.bsh script.

about

   High level description on what this website is about including conventions
   used.

overview

   Overview of the CM Plan Website.

plan-template

   CM Plan documentation based on cmplan.html. This template is maintained to
   consider the latest appropriate Configuration Management concepts for the
   this site.

plan

   CM Plan documentation based on plan-example.html. This template is maintained
   to provide a real life example loosely based on past engagements.

   The current contents where created based on the plan-template contents while
   considering updates based on my review of the following book:
   
      The Phoenix Project:
        A Novel about IT, DevOps, and Helping Your Business Win –
	January 10, 2013 by Gene Kim, Kevin Behr, and George Spafford

server

   This is the directory the where the deployment package is assembled and
   bundled from.
