<%-- 
    Document   : animales
    Created on : Sep 15, 2023, 8:20:39 PM
    Author     : gr0v3r
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>animales</title>
    </head>
    <body>
        <% 
            String nombreAnimal = request.getParameter("animal");
            String nombreImagen;
            
            if(nombreAnimal.equals("Gato")){
                nombreImagen = "./gato.jpeg";
            }else{
                nombreImagen = "./caracol.jpeg";
            }
            
            int veces = Integer.parseInt(request.getParameter("numero"));
            
            for (int i = 0; i < veces; i++) {
                    out.print("<img src=\""+ nombreImagen +"\" width=\"20%\">");
                }
        %>
    </body>
</html>
