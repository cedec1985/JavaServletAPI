<%-- 
    Document   : indexcode
    Created on : 2 juin 2026, 16:32:44
    Author     : cedri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    <h2>Générer un code-barres</h2   
    <form action="Barcode" method="post">
    
    <label>Message :</label>
    <input type="text" name="code" required>
    <br><br>    
    <label>Type :</label>
    <input type="text" name="label" required>
    <br><br>
   
    <button type="submit">Valider</button>
    </form>
    </body>
</html>
