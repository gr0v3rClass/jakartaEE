<%-- 
    Document   : index
    Created on : Sep 15, 2023, 8:13:52 PM
    Author     : gr0v3r
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Anumales</title>
    </head>
    <body>
        <form method="POST" action="animales.jsp">
            selecciones el animal a visualizar
            <select name="animal">
                <option>Gato</option>
                <option>caracol</option>
            </select>
            <br />
            numero de animal a mostrar <input type="text" name="numero" size="3" />
            <br/>
            <input type="submit">
        </form>
    </body>
</html>
