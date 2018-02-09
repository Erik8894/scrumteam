<%-- 
    Document   : menu
    Created on : 22/01/2018, 23:23:02
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale1.0, minimun-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos.css">
         <script type="text/javascript" src="js/alertify.js"></script>
        <title>Menu</title>
         <%@page session='true'%>
    </head>
    
    <body background="img/f1.jpg">
        <form class="form-group" action="/Test/Logout">
            <div class="container">
                <div class="control-label">
                    <h1>BIENVENIDO</h1>
                </div>
            </div>
       
         <div id="content_login_in">
                <table border="0" width="80%" heigth="100px" align="center" class="content_table">
                    <tr align="center">
                        <td>Registrar Datos</td>
                        <td>Consultar</td>
                        <td>Historial</td>
                    </tr>
                    <tr align="center">
                        <td><a id="img1" href="Registro.jsp"> <img src="img/registrar_datos.png" alt="Registrar Docentes" /> </a></td>
                        <td><a href="ConsultaID.jsp"> <img src="img/consulta.png" alt="Consultas" /></a></td>
                        <td><a href="Historial.jsp"> <img src="img/historial.png" alt="Historial" /></a></td> 
                    </tr>
                    
                    <tr><td>    </td></tr>
                    <tr><td></td></tr><tr><td></td></tr>
                    <tr align="center"><td colspan="3"><input type="submit" value="Cerrar Sesion"></td><td></td><td></td></tr>
                    
                </table>
         </div>
        </form>
        
    </body>
       
</html>
