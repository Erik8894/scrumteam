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
<html>
<body>
<h1>CONSULTA DE RESULTADOS</h1>
<table><td>Ingrese ID:</td><td><input> </td></table>

<%
metodos.clsmetodos obj=new metodos.clsmetodos();
String tabla;
tabla=obj.armar_tablaID();
%>
<%=tabla%>
</body>
</html>