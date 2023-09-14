<%-- 
    Document   : resultado
    Created on : Sep 13, 2023, 9:30:25 PM
    Author     : gr0v3r
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>la suma es </h1>
        <% int primerNumero = Integer.valueOf(request.getParameter("x"));
            int segundoNumero = Integer.valueOf(request.getParameter("y"));
            
            out.println(primerNumero + segundoNumero);
        %>
    </body>
</html>
