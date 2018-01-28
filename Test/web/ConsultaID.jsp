<%-- 
    Document   : ConsultaID
    Created on : 27/12/2017, 20:15:13
    Author     : USER
--%>

<!-- Los import -->
<%@ page language="java" %>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.DriverManager"%> 
<%@ page import = "java.sql.ResultSet"%> 
<%@ page import = "java.sql.Statement"%> 
<%@page session='true'%>

<html>
    <head>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale1.0, minimun-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos.css">
        
        <script lenguaje="javascript">
            function mifuncion()
            {
                metodos.clsmetodos obj=new metodos.clsmetodos();
                String tabla;
                tabla=obj.armar_tablaID(request.getParameter("cedula"));
            }
        </script> 
    </head>
<body>
<h1>CONSULTA DE RESULTADOS</h1>
<table><td>Ingrese ID:</td><td><input type="text" name="cedula"><br> </td></table>

<input type="button" name="tuboton" onclick="mifuncion()"> Button
<br>
<%
metodos.clsmetodos obj=new metodos.clsmetodos();
String tabla;
tabla=obj.armar_tablaID(request.getParameter("cedula"));
%>
<%=tabla%>
<br>
 <a href="Menu.jsp" class="btn btn-default">Inicio</a>
</body>
</html>
