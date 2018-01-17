

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test PAP</title>
        <script src="js/jquery.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/bootstrap.js"></script>
        <script src="js/validaciones.js"></script>
    </head>
    <body background ="img/fondo.jpg">
        <div class="container">
            <div class="main main-center col-md-5 cmiddle-col" >
        
        <form action="iniciar" method="post">
            <h1>Sistema de Autentificación TEST PAP</h1>
            <div class="input-group">
            <span class="input-group-addon glyphicon glyphicon-user" id="basic-addon1"></span>
            <input type="text" class="form-control"  name="user"aria-describedby="basic-addon1" onchange="validar(this.value)" placeholder="Ingrese Usuario"/><br>
            </div>
            <div id="demo">
            </div>
            <div class="input-group">
            <span class="input-group-addon glyphicon glyphicon-asterisk" id="basic-addon1"></span>
            <input type="password" class="form-control" name="contra"aria-describedby="basic-addon1" onchange="validar(this.value)" placeholder="Ingrese Contraseña"/><br>
            </div>
            <input type="submit" value="Iniciar Sesión"/><br>
            
        </form>
            </div>
        </div>
    </body>
</html>
