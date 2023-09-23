<%-- 
    Document   : index
    Created on : Sep 18, 2023, 9:03:23 PM
    Author     : gr0v3r
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/suitecrm7126","root","12345678");
            Statement s = conexion.createStatement();
            
            ResultSet listado = s.executeQuery("SELECT * FROM accounts");
            
            while (listado.next()){
            out.println(listado.getString("name")+" "+listado.getString("date_entered")+"<br/>");
            }
            
            conexion.close();
        %>
    </body>
</html>
