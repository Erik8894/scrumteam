<%-- 
    Document   : menu
    Created on : 22/01/2018, 23:23:02
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale1.0, minimun-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos.css">
        <title>Menu</title>
    </head>
    <body<%if (session.getAttribute("validacion").equals("1"));else out.println("hidden> <script type=\"text/javascript\">window.location=\"http://localhost:8084/Test/index.jsp\";</script");%>>
        <h1>Elija una Opcion</h1>
     
        <a href="Registro.jsp" class="btn btn-default">Registro Aspirante</a>
   
        
        
    </body>
</html>
