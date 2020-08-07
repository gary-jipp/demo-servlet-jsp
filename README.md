# JSP - the right way.

JSP's should always be buried in the WEB_INF folder, away from prying eyes.  Unfortunately  many JSP "tutorials" expose them to the outside world and the url contains ".jsp". The correct way is to have a servlet controller handle every request and then render the JSP using Request or Session Attributes.

- Build with Maven before running, although it will probably run without a Maven build.  


- Note: The extra "pages" Source location in the Eclipse project build path is still experimental. If it causes problems delete that source ebtry.  Maven copies to target regardless but the extra source entry allows for hot JSP editing
