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
      
            <h1>CONSULTA DE RESULTADOS</h1>
       
    </div>
<%
                metodos.clsmetodos obj=new metodos.clsmetodos();
                String tabla;
                
                out.print("<form action=ConsultaID.jsp method=post class=form1>");
                out.print("<table align=center><tr><td class=t2>INGRESE EL ID:</td><td><input type=text class=Fields name=cedula></td><td><input type=submit name=buscar value=Consultar></td><tr><td><br></td></tr></tr></table>");
                out.print("<br>");
                out.print("<br>");
                out.print("</form>");
                String h,f;
                h=request.getParameter("cedula");
                f=request.getParameter("fecha");
               
                    tabla=obj.armar_tablaID(h);
                    // tabla=obj.armar_tablafecha(f);<tr><td class=t2>FECHA:</td><td><input type=text class=Fields name=fecha></td></tr>
                    //tabla=obj.armar_tabla(h,f);
                        
               out.print(tabla);
%>
<br>
         <a href="menu.jsp" class="btn btn-default">Inicio</a>
</body>
</html>
