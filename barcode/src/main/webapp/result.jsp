<%-- -
    Document   : result
    Created on : 1 juin 2026, 12:35:57
    Author     : cedric
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1>Code barre généré</h1>

<h2>Code-barres 2D</h2>
<%
  String params = request.getQueryString();
%>

<img src="<%= request.getContextPath() %>/Barcode?<%= params %>" alt="Code-barres" />
<hr>
</body>
</html>
