<%-- 
    Document   : index
    Created on : Sep 15, 2023, 8:35:55 PM
    Author     : gr0v3r
--%>

<%@page import="com.mycompany.ejemplo2jsp.Perro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perros</title>
        <link rel="stylesheet" type="text/css" href="estilos.css">
    </head>
    <body>
        <h1>Perros con clase</h1>
        <hr>
        <%
        Perro p1 = new Perro("firulays", "./perro1.jpeg");
        Perro p2 = new Perro("firulays", "./perro2.jpg");
        Perro p3 = new Perro("firulays", "./perro3.jpeg");
        
        out.println(p1);
        out.println(p2);
        out.println(p3);
        
        out.println(p1.ladrar());
        out.println(p2.comer("croquetas"));
        %>
    </body>
</html>
