# JSP - the right way.

JSP's should always be buried in the WEB_INF folder, away from prying eyes.  Unfortunately  many JSP "tutorials" expose them to the outside world and the url contains ".jsp". The correct way is to have a controller servlet handle every request and then render the JSP using Request or Session Attributes.

- Build with Maven before running to create the target/WebContent directory needed & copy web.xml  


- This application uses the classic style of defining servlets and url's in web.xml rather than annotations. This allows for more control over params and keeps them in a central place.  


- Note: The extra "pages" Source location in the Eclipse project build path is still experimental. If it causes problems delete that source ebtry.  Maven copies to target regardless but the extra source entry allows for hot JSP editing
