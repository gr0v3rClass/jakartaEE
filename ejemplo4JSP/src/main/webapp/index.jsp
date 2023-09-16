<%-- 
    Document   : index
    Created on : Sep 15, 2023, 9:14:48 PM
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
        <h1>pintar una piramide</h1>
        <form method="get" action="piramide.jsp">
            introduzca la altura de la piramide <br/>
            <input type="number" min="1" max="10" name="altura">
            <br/>
            <input type="submit" value="Aceptar"/>
        </form>
    </body>
</html>
