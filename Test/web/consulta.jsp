<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="metodos.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Libreria</title>
<link rel="stylesheet" type="text/css"
    href="estilo.css" media="screen">
</head>
<body>
<h1>Estanter�a</h1>
<%
clsmetodos obj=new clsmetodos();
String tabla;
tabla=obj.armar_tabla();
%>
<%=tabla%>
</body>
</html>