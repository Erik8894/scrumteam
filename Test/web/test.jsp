<%-- 
    Document   : test
    Created on : 07-ene-2018, 20:22:20
    Author     : Erik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>  
<!DOCTYPE html>
<html>
    <head>
        
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale1.0, minimun-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos.css">
        <title>TEST PAP</title>
        <%@page session='true'%>
        
    </head>
    <body  <%if (session.getAttribute("validacion").equals("1"));else out.println("hidden> <script type=\"text/javascript\">window.location=\"http://localhost:8084/Test/index.jsp\";</script");%>>
        <header>
        
        <div class="container">
            <div class="row">
                <center><h1>Banco de preguntas</h1></center>
                <center><h1>Bienvenido <%out.println(session.getAttribute("usuario"));%></h1></center>
            </div>
        </div>
        </header>
                <br>
        <form action="" class="formulario">
            <div class="radio-toolbar">
                <div class="form-group">
                    <h2>Pregunta 1</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="radio1" name="rp1">
                    <label for="radio1" id="r11" >Respuesta 1</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="radio2" name="rp1">
                    <label for="radio2" id="r21">Respuesta 2</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="radio3" name="rp1">
                    <label for="radio3" id="r31">Respuesta 3</label>
                    </div>
                        </div>
                </div>
                
                
                <div class="form-group">
                    <h2>Pregunta 2</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r12" name="rp2">
                    <label for="r12" id="r12">Respuesta 1</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r22" name="rp2">
                    <label for="r22" id="r22">Respuesta 2</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r32" name="rp2">
                    <label for="r32" id="r32">Respuesta 3</label>
                    </div>
                        </div>
                </div>
                
                    
                </div>
            
        </form>
        
    
    
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
