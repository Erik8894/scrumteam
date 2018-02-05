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
<h1>CONSULTA DE RESULTADOS</h1>

<form action="buscar" method="post" name="Busqueda" class="form-actions"> 
    <div class=" container">
    <div class="col-md-12">
        <table><td>Ingrese ID:</td><td>  </td><td><input type="text" name="cedula"><br> </td> <td><button type="button" class="boton" name="consultar" id="Btn_consultar" onClick="mifuncion()" alt="Envie sus mensaje"><img src= "img/buscar.png" height="auto" width="auto"></button></td> </table>
        <br>   
    </div>
</div>
</form>


<script lenguaje="javascript">
            function mifuncion()
            {
                alert('imprimiendo resultados');
                metodos.clsmetodos obj=new metodos.clsmetodos();
                String tabla;
                tabla=obj.armar_tablaID(request.getParameter("cedula")));
                document.body.appendChild(tabla);
            }
</script>


<%
                metodos.clsmetodos obj=new metodos.clsmetodos();
                String tabla;
                tabla=obj.armar_tablaID(request.getParameter("cedula"));
%>

<%=tabla%>
<br>
 <a href="menu.jsp" class="btn btn-default">Inicio</a>
</body>
</html>
