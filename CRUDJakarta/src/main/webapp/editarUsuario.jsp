<%-- 
    Document   : editarUsuario
    Created on : Sep 20, 2023, 8:51:47 PM
    Author     : gr0v3r
--%>
<%@page import="com.mycompany.crudjakarta.modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Usuario usuario = (Usuario)request.getSession().getAttribute("usuarioEditar");%>
        <h1>Editar Usuario</h1>
        
       <form action="SvEditar" method="POST">
           <p><label>CI:</label><input type="text" name="ci" value="<%=usuario.getCi()%>"/> </p>
            <p><label>Nombre:</label><input type="text" name="nombre" value="<%=usuario.getNombre()%>"/> </p>
            <p><label>Apellido:</label><input type="text" name="apellido" value="<%=usuario.getApellido()%>"/> </p>
            <p><label>telefono:</label><input type="text" name="telefono" value="<%=usuario.getTelefono()%>"/> </p>
            <button type="submit">Guardar</button>
        </form>
        
    </body>
</html>
