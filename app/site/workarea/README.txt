This directory is used in conjunction with the AsciidoxFX tool. Asciidoc html5
files are created for each of the website directories and merged with the
html5 website as defined in the app/bin/basis directory. This directory was
first populated using the AsciidocFX tool "sample book" option. 

Currently, the following webpages have been created for this site using this
directory:
  home
  plan
  about
  teamTools
  overview

Following are the high-level steps used to create website content one html
sub-directory at a time.

1. Create your website sub-directory content using AsciidocFX creating and adoc 
   file. Current examples include about.adoc, cmplan.adoc, overview.adoc.

2. When the page content is complete and ready to save use the "5 html" option
   in AsciidocFX to create files like about.html, cmplan.html, and overview.html.

3. Copy the currently created *.html file to it's corresponding directory under
   app/bin, i.e., about, plan, overview.

4. In the corresponding directory for the webpage, cp the new *.html file to
   vdr-style.css, then remove all none <style> elements in the vdr-style.css 
   page and save. Compare to app/bin/basis/vendor-style.css file and adjust it
   if needed.

5. Using an "already converted" index.html, adjust the new index.html file
   for website adjustments as indicated within the following comment text:
     <!-- **************************** -->
     <!-- **************************** -->
   There are several blocks on each end of the index.html file.

6. Verify that this subwebsite page directory is addressed in the 
   app/bin/package-deploy.bsh script subDir array. If it is new, you'll need
   to add a new subDir array variable and adjust the noOfDirs integer variable
   accordingly.

At this point, follow the instrutions in the deploy/README.txt file.

