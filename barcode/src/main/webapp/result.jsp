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
       <h1>Produit enregistré</h1>

<p>
    <strong>Produit :</strong>
    ${label}
</p>

<h2>Code barres enregistré</h2>
<p>
    <strong>Code :</strong>
    ${code}
</p>
<h2>Code-barres 2D</h2>
<%
  String params = request.getQueryString();
%>

<img src="<%= request.getContextPath() %>/Barcode?<%= params %>" alt="Code-barres" />

<hr>

</body>
</html>
