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
        <script src="js/jquery.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/logincss.css">
        <script src="js/bootstrap.js"></script>
        <script src="js/validaciones.js"></script>
        <title>Registro</title>
    </head>
    <div class = "col-12">
        <img src="img/scrum team medium.png" class="center-block" />
    </div>
    <body background="img/registroForm.jpg">
        
        <%-- <form role="form" action="registrarU" method="post" class="form-signin">
        <center>
      
        <h1>Ingrese los datos necesarios para poder trabajar con testPAP</h1>
        <h3>Ingrese su C.I</h3><input type="text" name="cedula"><br>
        <h3>Ingrese su Nombre de Usuario</h3><input type="text" name="nomUs"><br>
        <h3>Ingrese su Profesión</h3><input type="text" name="prof"><br>
        <h3>Ingrese una Contraseña</h3><input type="password" name="pass"><br>
        <h3>REGISTRAR</h3><input type="submit" name="reg" value="REGISTRAR"><br>
       
        </form>
    </center>
           <b><h1 class="form-signin-heading"><p class="text"><u>Ingrese los datos necesarios para poder trabajar con testPAP</u></p></h1></b>
             <div class="form-group">
    <label for="cedulaU">Ingrese su C.I</label>
    <input type="text" class="form-control" id="ced"
           placeholder="ingrese su cédula" name="cedula">
  </div>
</form>--%>
        <form action="registrarU" method="post">
        <div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
                    
        		<div class="panel-heading">
			    		<h3 class="form-signin-heading">Ingrese los datos necesarios para poder trabajar con testPAP</h3>
			 			</div>
			 			<div class="panel-body">
			    		<form role="form">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                                                    <input type="text" name="cedula" id="cedula" class="form-control input-sm" placeholder="Ingrese C.I">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="prof" id="profes" class="form-control input-sm" placeholder="Profesión">
			    					</div>
			    				</div>
			    			</div>
                                            	<div class="form-group">
			    				<input type="text" name="nomUs" id="nomUsuario" class="form-control input-sm" placeholder="Nombre de Usuario">
			    			</div>

			    			
			    				
			    					<div class="form-group">
			    						<input type="password" name="pass" id="password1" class="form-control input-sm" placeholder="Contraseña">
			    					</div>
                                        </form>
			    			</div>
                    <div class="form-group">
			    			<input type="submit" value="Registrar" class="btn btn-info btn-block" name="reg">
                    </div>
			    		
			    		</form>
			    	</div>
            
	    		</div>
          
    		</div>
              
    	</div>
</div>
</form>
    </body>
    
    
</html>
