<%-- 
    Document   : resultado
    Created on : Feb 1, 2018, 10:11:43 PM
    Author     : Erik
--%>

<%@page import="metodos.Procesos"%>
<%@page import="metodos.clsmetodos"%>
<%@page import="metodos.EntidadTest"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="js/custom.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gracias</title>
         <%@page session='true'%>
         <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/graciascss.css">
    </head>
    <body  onload="nobackbutton();" <%if (session.getAttribute("validacion").equals("1"));else out.println("hidden> <script type=\"text/javascript\">window.location=\"http://localhost:8080/Test/index.jsp\";</script");%>>
        
        
        <br/><br/>
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
       
            
        </header >
        <div hidden="">
        <%  String [] preg=(session.getAttribute("preg")+"").split(":");
            double promsum=0;
            double sum1=0;
            String pr="";
            ArrayList<EntidadTest> list=new ArrayList<EntidadTest>();
            for(int i=0;i<preg.length;i++){
            EntidadTest et=new EntidadTest();
            //out.print(request.getParameter("rp"+preg[i]));
            request.getParameter("rp"+preg[i]);
            String []st=(request.getParameter("rp"+preg[i])+"").split(":");
            if (i!=0)pr=pr+";";
            pr=pr+st[0]+":"+st[2];
            et.setPregunta(st[0]);
            et.setValorPregunta(Double.parseDouble(st[1]));
            promsum=promsum+Double.parseDouble(st[1]);
            et.setRespuesta(st[2]);
            et.setValorRespuesta(Double.parseDouble(st[3]));
            et.setValorMaxRespuesta(Double.parseDouble(st[4]));
            list.add(et);
            }
                            //out.print("<br> "+session.getAttribute("usr"));
                            
                            double sum=0;
                             sum1=0;
                         for(int i=0;i<list.size();i++) {
                             double prop=(list.get(i).getValorPregunta()*100)/promsum;
                             double vf=(list.get(i).getValorRespuesta()*prop)/list.get(i).getValorMaxRespuesta();
                            
                             out.print("<br><p> id Pregunta: "+list.get(i).getPregunta()+" Valor de pregunta: "+list.get(i).getValorPregunta()+" Id respuesta: "+list.get(i).getRespuesta()+" Valor de respuesta: "+list.get(i).getValorRespuesta()+"Valor maximo respuesta: "+list.get(i).getValorMaxRespuesta()+" Suma promedio preguntas: "+promsum+"</p>");
                             out.print("<br> ValorPregunta/100 : "+prop+" Valor respuesta real: "+vf+" Incremental/100 :"+ (sum=sum+prop) + " incremental % : "+(sum1=sum1+vf));
                             
                         }
            clsmetodos cls=new clsmetodos();
            Procesos p=new Procesos();
            String fecha=p.obtenerHora();
           
            cls.ingresarTest(session.getAttribute("usr")+"", pr,sum1,fecha);
        %>
        </div>
        
                
        
    
    
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
