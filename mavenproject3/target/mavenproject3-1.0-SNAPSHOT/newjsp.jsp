<%-- 
    Document   : newjsp
    Created on : Sep 13, 2023, 8:57:40 PM
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
        <h1>Hello World! 111111</h1>
        <% out.println("<h3>saludo desde un println de</h3>"); %>
        <% String mensaje = "saludo desde una variable";
            out.println(mensaje);
        %>
        <br>
        <%= 2+2  %>
        
        <jsp:include page="mensaje.jsp"/>
        
        <% out.println("<b><i>"); %>
        Esta linea se a puesto en negrita y cursiva 
        <% out.println("</i></b>"); %>
        <br>
        <%= "<b><i>" %>
        Esta linea se a puesto en negrita y cursiva 
        <%= "</i></b>" %>
        
        <table border="2">
            <tr>
                <td>numero </td>
                <td>cuadrado </td>
            </tr>
            <% for(int i = 0; i<10;i++){
            out.println("<tr>");
            out.println("<td>"+i+"</td>");
            out.println("<td>");
            out.println(i*i);
            out.println("</td></tr>");
            } %>
        </table>
        
        <%
            out.println("fabricante de java:  "+ System.getProperty("java.vendor"));
        %>
        
        <br>
        input <input type="text" name="name" size="10">
        
        
        <form method="get" action="resultado.jsp">
            x <input type="text" name="x" /><br>
            y <input type="text" name="y" /><br>
            <input type="submit">
        </form>
        
        
    </body>
</html>
