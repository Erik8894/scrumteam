<%-- 
    Document   : Registro
    Created on : 07-ene-2018, 15:32:57
    Author     : Wilson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <form action="registrarU" method="post">
        <h1>Ingrese los datos necesarios para poder trabajar con testPAP</h1>
        <h3>Ingrese su C.I</h3><input type="text" name="cedula"><br>
        <h3>Ingrese su nombre de Usuario</h3><input type="text" name="nomUs"><br>
        <h3>Ingrese su Profesion</h3><input type="text" name="prof"><br>
        <h3>Ingrese su C.I</h3><input type="text" name="pass"><br>
        <h3>Ingrese su C.I</h3><input type="submit" name="reg" value="REGISTRAR"><br>
        </form>
    </center>
    </body>
</html>
