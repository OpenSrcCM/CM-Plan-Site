The home.html file is maintained as follows:

1. Updated with the AsciidocFX tool in the workarea directory using home.adoc.
   When updates are completed, it is saved as a html5 complient page home.html
   along with saving the home.adoc file. In the workarea directory.
2. Prior to copying home.html file from the workarea directory to this directory.
   a. mv home.html to xxx-home.html
   b. mv index.html to xxx-index.html
   c. mv vendor-style.css to xxx-vendor-style.css
   d. Now copy home.html from the workarea to this directory
   e. Copy the new home.html to both index.html and vendor-style.html
3. Rebuild vendor-style.css by removing all non-style lines. Verify with
   xxx-vendor-style.css and account for all differences.
4. Rebuild index.html by removing all style lines and update html5 directives
   by referencing xxx-index.html.

   NOTE: for steps 3 and 4, a series of editing session like this:
         $ vim xxx-filename filename
