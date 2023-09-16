<%-- 
    Document   : piramide
    Created on : Sep 15, 2023, 9:15:07 PM
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
        <%
            int alturaTotal = Integer.parseInt(request.getParameter("altura"));
            int altura = 1;
            
            int espacios = alturaTotal - 1;
            
            while (altura <= alturaTotal) {
                    for (int i = 1; i <= espacios; i++) {
                            out.print("<img src=\"./blanco.jpeg\"width=\"20px\" >");
                        }
                    for (int i = 1; i < altura * 2; i++) {
                            out.print("<img src=\"./ladrillo.jpeg\" width=\"20px\">");
                        }
                    out.println("<br/>");
                    
                    altura++;
                    espacios--;
                }
        %>
    </body>
</html>
