<%-- 
    Document   : Reporte
    Created on : 09/02/2018, 7:33:55
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="metodos.Procesos"%>
<%@page import="metodos.clsmetodos"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="css/consultas.css">
        
        <title>Resultados</title>
    </head>
    <body>
        <h1>Preguntas y Respuestas TEST Aspirante <% String a; a=request.getParameter("user");%><%=a%></h1>
        
        <% 
                        Procesos p=new Procesos();
                        out.print(p.procesos(request.getParameter("id")));
        //p.procesos(parametro);
        %>
    </body>
</html>
