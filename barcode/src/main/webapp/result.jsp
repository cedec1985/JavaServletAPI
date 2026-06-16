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
    <body class="bg-light">
    <div style="text-align:center; margin-top:40px;">
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
  String codeType = request.getParameter("codeType");
  String msg = request.getParameter("msg");
  
  String imgUrl;
  
  if("qrcode".equals(codeType)){
    String size=request.getParameter("size");
    imgUrl = request.getContextPath() + "/QRCode?msg=" + msg + "&size=" + size;
    
    }else {
        String type = request.getParameter("type");
        String height = request.getParameter("height");
        String moduleWidth = request.getParameter("module-width");

        imgUrl = request.getContextPath()
                + "/Barcode?msg=" + msg
                + "&type=" + type
                + "&height=" + height
                + "&module-width=" + moduleWidth;
   }
    
 // String params = request.getQueryString();
%>

//<img src="<%= request.getContextPath() %>/Barcode?<%= params %>" alt="Code-barres" />
<img src="<%= imgUrl %>" style="border:1px solid #ccc; padding:10px;">
    <br><br>
    </div>

</body>
</html>
