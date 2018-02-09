<%-- 
    Document   : Historial
    Created on : 09/02/2018, 6:34:57
    Author     : USER
--%>
<%@ page language="java" %>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.DriverManager"%> 
<%@ page import = "java.sql.ResultSet"%> 
<%@ page import = "java.sql.Statement"%> 
<%@ page import = "metodos.clsmetodos"%> 

<%@page session='true'%>

<html>
    <head>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale1.0, minimun-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="css/consultas.css">
        
        
    </head>
<body>
    <div class="h1">
      
            <h1>HISTORIAL DE TEST</h1>
       
    </div>
<%
                metodos.clsmetodos obj=new metodos.clsmetodos();
                String tabla;
                
                out.print("<form action=Historial.jsp method=post class=form1>");
                out.print("<table align=center><tr><td class=t2>BUSQUEDA POR FECHA:</td><td><input type=text class=Fields name=fecha value=aaaa-mm-dd ></td><td><input type=submit name=buscar value=Consultar></td></tr></table>");
                out.print("<br>");
                out.print("<br>");
                out.print("</form>");
                String f;
                f=request.getParameter("fecha");
                
               tabla=obj.armar_tablafecha(f);
                              
               out.print(tabla);
%>

<br>
         <a href="menu.jsp" class="btn btn-default">Inicio</a>
</body>
</html>
