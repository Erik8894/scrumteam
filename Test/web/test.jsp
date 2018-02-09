<%-- 
    Document   : test
    Created on : 07-ene-2018, 20:22:20
    Author     : Erik
--%>

<%@page import="metodos.Procesos"%>
<%@page import="java.math.MathContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>  
<!DOCTYPE html>
<html>
    <head>
        <script src="js/custom.js"></script>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale1.0, minimun-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos.css">
        <title>TEST PAP</title>
        <%@page session='true'%>
        
    </head>
    <body background ="img/fondo_azul2.jpg" onload="nobackbutton();" <%if (session.getAttribute("validacion").equals("1"));else out.println("hidden> <script type=\"text/javascript\">window.location=\"http://localhost:8084/Test/index.jsp\";</script");%>>
        
        <header>
        
        <div class="container">
            <div class="row">
                <center><h1>Banco de preguntas</h1></center>
                <br/><br/>
                <center><h1>Bienvenido <%out.println(session.getAttribute("usuario"));Procesos pr=new Procesos();%></h1></center>
            </div>
        </div>
        </header>
                <br>
                <form action="resultado.jsp" class="formulario" method="post">
            <div class="radio-toolbar">
                 <%
                    session.setAttribute("data_Preguntas", "");
                    int[] lista=new int[5];
                    int repit=0;
                    while (repit<5){
                        
                    int numero = (int) (Math.random() * 30) + 1;
//                                                            System.out.println(numero+ "en posicion "+repit);

                    if(pr.busquedaLineal(lista, numero)){
                          repit--; 
                          //System.out.println(numero+ "en posicion "+repit+" no entro");             
                    }else{
                    // System.out.println(numero+ "en posicion "+repit+" entro");
                    lista[repit]=numero;
                    out.print(numero);
                    out.print(pr.rellenaMedios(numero));
                    }
                    repit++; 
                }
                    String vecEnvio="";
                    for (int i=0;i<lista.length;i++)
                    if(i==0)
                    vecEnvio=lista[i]+"";
                    else
                    vecEnvio=vecEnvio+":"+lista[i];
                    session.setAttribute("preg", vecEnvio);
                %>
                </div>
            <div class="button">
                <%--<center><button type="button" class="btn btn-success" id="enviar">Enviar Test</button></center>--%>
                <center><input class="btn btn-success" type="submit" name="enviar" id="enviar" value="Enviar Test"/> </center>
                
            </div>
            
        </form>
        
    
    
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>