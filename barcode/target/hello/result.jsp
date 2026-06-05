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
<br>
<hr>

<p>Bienvenue sur <strong>${header["Host"]}</strong> !</p>

    <p>Vous accédez actuellement à la page <strong>${pageContext.request.requestURI}</strong></p>
    <p>Votre navigateur Web est : <strong>${header["user-agent"]}</strong>.</p>
    <p>${empty param ? "Vous n'avez pas envoyé de paramètre au serveur"
                        : "Vous avez envoyé des paramètres au serveur"}</p>
    <p>${empty monCookie ? "Vous n'avez pas envoyé de cookie au serveur"
                        : "Vous avez envoyé des cookies au serveur"}</p>
        <fmt:setLocale value="fr_BE"/>
        <c:out value="Quelle est la date du jour et l''heure ?" />
        <br>
	<fmt:formatDate value="${now}" pattern="dd/MM/yyyy HH:mm:ss" type="both"/>
        <p>Date et Heure formatées : 
            <br>
            ${now}</p>
        <p>Cookie : 
            <br>
            ${monCookie}</p>
        
        <p><h3>Informations du code barre</h3></p>
                ${code}
                ${label}


<a href="time.html>Retour</a>
</body>
</html>
