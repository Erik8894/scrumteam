<%-- 
    Document   : resultadoUsuario
    Created on : Feb 7, 2018, 9:30:07 PM
    Author     : Asus
--%>

<%@page import="metodos.Procesos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <%@page session='true'%>

    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%
        
            Procesos p=new Procesos();
            out.print( p.rellenarProcesos());
            
        
        %>
    </body>
</html>
