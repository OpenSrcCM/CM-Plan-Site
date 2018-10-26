Purpose of /app/site directory

Contains the elements that the CM Plan Site is built from.  The script
package-deploy.bsh assembles a tar gz file for deployment to an apache
website html directory. 

All deployment testing and automation occurs via the deploy directory.
Refer to the README.txt in the deploy directory for details.

Sub-Directories: (listed in order of development usage)

learn

   This directory is not linked to the website. It is available from the
   browser address bar only. It is intended for developer notes.

   Contents of this direct are used to experiment with a "best in class"
   approach to using html5 concepts.

workarea

   This directory is used to build the Site content. The primary tool is
   AsciidocFX. The asciidoc syntax is used to create html5 formatted content
   for the CM Plan Site. The resulting asciidoc and html5 files are maintained
   here.
   
   The html5 files (*.html) are then copied into their respective website
   directories where they are modified into index.html files for each site
   directory.

basis

   This directory contains the primary CM Plan Site components destined for
   the apache /var/www/html directory. The home page of the website is
   stored in this directory for packaging. It is updated and maintained in the
   workarea directory.
   
   The workarea directory is used to create elements for the other directories
   that become sub-directories of the website. These are gathered and tar`d in
   the $TargetTarDir directory. This variable is in the package-deploy.bsh
   script.

plan

   CM Plan documentation based on plan-example.html. This template is maintained
   to provide a real life example.

   The current contents where created based on the plan-template contents while
   considering updates based on my review of the following book:
   
      The Phoenix Project:
        A Novel about IT, DevOps, and Helping Your Business Win –
	January 10, 2013 by Gene Kim, Kevin Behr, and George Spafford

teamTools

   This directory contains links to all tools used by the team this site is
   designed to support. The links are arranged by company-wide tools to 
   organization tools.

overview

   Overview of the CM Plan Website.

about

   High level description on what this website is about including conventions
   used.

plan-template

   This directory is not linked to the website. It is available from the
   browser address bar only. It is intended for developer notes.

   CM Plan documentation based on cmplan.html. This template is maintained to
   consider the latest appropriate Configuration Management concepts for the
   this site.

$TargetTarDir  (package-deploy.bsh variable)

   This is the directory the where the deployment package is assembled and
   bundled from. It exists only while the package-deploy.bsh script is
   running.
