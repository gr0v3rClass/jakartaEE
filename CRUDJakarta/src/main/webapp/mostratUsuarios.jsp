<%-- 
    Document   : mostratUsuarios
    Created on : Sep 19, 2023, 9:24:00 PM
    Author     : gr0v3r
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.crudjakarta.modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de usuarios Registrados</h1>
        
        <%
            List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
            int count = 1;
            for (Usuario user: listaUsuarios){
        %>
        
        <p><b>Usuario nro. <%=count %></b></p>
        <p>ID: <%=user.getId()%> </p>
        <p>CI: <%=user.getCi()%> </p>
        <p>Nombre: <%=user.getNombre()%> </p>
        <p>Apellido: <%=user.getApellido()%> </p>
        <p>Telefono: <%=user.getTelefono()%> </p>
        <p>===============================</p>
        <% count=count+1; } %>
        
    </body>
</html>
