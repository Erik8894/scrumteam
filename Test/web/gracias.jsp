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
        <link rel="stylesheet" href="css/graciascss.css">
        <title>TEST PAP</title>
        <%@page session='true'%>
        
    </head>
    <body <%if (session.getAttribute("validacion").equals("1"));else out.println("hidden> <script type=\"text/javascript\">window.location=\"http://localhost:8084/Test/index.jsp\";</script");%>>
        <header>
            
        <div class = "row">
        <div class = "col-12">
          <img src="img/scrum team medium.png" style="position: absolute; top: 0; right: 0;"/>
        </div>
        </div>
          <br/><br/> <br/> <br/> <br/> <br/> <br/> <br/> <br/> <br/>   
        <div class = "row">
        <div class = "col-12">
            <img src="img/gracias.png" class="center-block" />
        </div>
        </div>
          <br/> 
        <div class = "row">
        <div class = "col-12">
            <form action="index.jsp" method="post">
            <center><button type="submit" name="enviar" value="Enviar" class="btn-success" ></button></center>
            </form>
        </div>
        </div> 
       
            
        </header>
                
        
    
    
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>