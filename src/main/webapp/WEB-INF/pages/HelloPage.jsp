<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>  <!-- Allow access to session attributes -->
<%@page import="servlet.HelloServlet.*"%>  <!-- Not used here -->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Demo JSP App</title>
    <style>
      .data {font-family:'Courier New'; font-weight:bold}
      .text {font-family:'Courier New'}
      body {-moz-tab-size:3}
    </style>
  </head>
  <body>
    <h2>Servlet JSP Application Demo</h2>
    <div>
      <span class="text">Application Name:</span>
      <span class="data">${appName} ${version}</span> <!-- requestScope attributes set by controller servlet -->
    </div>
    <div>
      <span class="text">Session Attribute:</span>
      <span class="data">${sessionScope.name}</span>  <!-- sessionScope attribute -->
    </div>
    <div>
      <span class="text">Request Attribute:</span>
      <span class="data">${requestScope.mydata}</span>  <!-- explicit requestScope attribute -->
    </div>

  </body>
</html>
