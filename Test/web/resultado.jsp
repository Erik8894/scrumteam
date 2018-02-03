<%-- 
    Document   : resultado
    Created on : Feb 1, 2018, 10:11:43 PM
    Author     : Erik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Respuestas</title>
         <%@page session='true'%>
    </head>
    <body> <%if (session.getAttribute("validacion").equals("1"));else out.println("hidden> <script type=\"text/javascript\">window.location=\"http://localhost:8084/Test/index.jsp\";</script");%>
        
        <h1>Respuestas</h1>
        <br/><br/>
        Pregunta 1: ${param.rp1} 
        <br/>
        Pregunta 2: ${param.rp2}
    </body>
</html>
