<%-- 
    Document   : nuevoUsuario
    Created on : Sep 22, 2023, 8:26:07 PM
    Author     : gr0v3r
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nuevo usuario</h1>
        
        <form action="SvUsuario" method="POST">
            <p><label class="form-label">CI:</label><input type="text" name="ci" /> </p>
            <p><label>Nombre:</label><input type="text" name="nombre" /> </p>
            <p><label>Apellido:</label><input type="text" name="apellido" /> </p>
            <p><label>telefono:</label><input type="text" name="telefono" /> </p>
            <button type="submit">Enviar</button>
        </form>
    </body>
</html>
