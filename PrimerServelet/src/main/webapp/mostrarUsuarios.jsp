<%-- 
    Document   : mostrarUsuarios
    Created on : Sep 14, 2023, 9:16:04 PM
    Author     : gr0v3r
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.primerservelet.Servelets.Modelos.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar usuario</title>
    </head>
    <body>
        <h1>Lista de usuarios registrado</h1>
        
        <% List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
            int count = 1;
            for (Usuario user : listaUsuarios) {
        %>
        <p><b>Usuario nro. <%=count%> </b></p>
        <p>CI: <%=user.getCi()%> </p>
        <p>Nombre: <%=user.getNombre()%> </p>
        <p>Apellido: <%=user.getApellido()%> </p>
        <p>telefono: <%=user.getTelefono()%> </p>
        <p>---------------------------------------</p>
        
        <% count = count +1; }%>
    </body>
</html>
