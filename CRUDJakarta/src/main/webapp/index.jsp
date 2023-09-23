<%-- 
    Document   : index
    Created on : Sep 19, 2023, 8:25:39 PM
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <h1>Plantilla de usuarios</h1>
        <form action="SvNewUser" method="GET">
            <button type="submit" >nuevo usuario</button>
        </form>
        
        <%
            
            List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
            
            if(listaUsuarios != null) {
            int count = 1;
        %>
        
        
        <table class="table">
            <tr>
                <th>Nro.</th>
                <th>ID</th>
                <th>CI</th>
                <th>NOMBRE</th>
                <th>APELLIDO</th>
                <th>TELEFONO</th>
            </tr>
            <% for (Usuario user: listaUsuarios){ %>
            <tr>
                <td><%=count%></td>
                <td><%=user.getId()%></td>
                <td><%=user.getCi()%></td>
                <td><%=user.getNombre()%></td>
                <td><%=user.getApellido()%></td>
                <td><%=user.getTelefono()%></td>
                <td>
                    <form action="SvEditar" method="GET">
                        <input type="hidden" name="idEditar" value="<%=user.getId()%>"/>
                        <button type="submit" class="btn btn-primary"> Editar</button>
                    </form>
                </td>
                <td>
                    <form action="SvEliminar" method="POST">
                        <input type="hidden" name="id"  value="<%=user.getId()%>"/>
                        <button type="submit" class="btn btn-danger"> Eliminar</button>
                    </form>
                </td>
            </tr>
            <% count=count+1; } }%>
        </table>
        
        <form action="SvUsuario" method="GET">
            <button type="submit" > Lista de usuarios</button>
        </form>
        
        <!--<form action="SvUsuario" method="POST">
            <p><label>CI:</label><input type="text" name="ci" /> </p>
            <p><label>Nombre:</label><input type="text" name="nombre" /> </p>
            <p><label>Apellido:</label><input type="text" name="apellido" /> </p>
            <p><label>telefono:</label><input type="text" name="telefono" /> </p>
            <button type="submit">Enviar</button>
        </form>
        
        <h1>Lisgta de usuarios</h1>
        <form action="SvUsuario" method="GET">
            <button type="submit" > Lista de usuarios</button>
        </form>
        
        <h1>Eliminar Usuario</h1>
        <form action="SvEliminar" method="POST">
            <input type="text" name="id"/>
            <button type="submit" > Eliminar usuario</button>
        </form>
        
        <h1>Editar Usuario</h1>
        <form action="SvEditar" method="GET">
            <input type="text" name="idEditar"/>
            <button type="submit" > Editar usuario</button>
        </form>-->
        
    </body>
</html>
