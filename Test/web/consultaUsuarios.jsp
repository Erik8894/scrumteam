<%-- 
    Document   : consultaUsuarios
    Created on : Feb 7, 2018, 10:45:29 AM
    Author     : Asus
--%>

<%@page import="metodos.Procesos"%>
<%@page import="metodos.clsmetodos"%>
<%@page import="metodos.EntidadTest"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% 
                        Procesos p=new Procesos();
                        out.print(p.procesos(request.getParameter("histo")));
        //p.procesos(parametro);
        %>
        
        
        
        
    </body>
</html>
