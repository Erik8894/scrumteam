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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Respuestas</title>
         <%@page session='true'%>
    </head>
    <body> <%if (session.getAttribute("validacion").equals("1"));else out.println("hidden> <script type=\"text/javascript\">window.location=\"http://localhost:8080/Test/index.jsp\";</script");%>
        
        <h1>Respuestas</h1>
        <br/><br/>
        <%  String [] preg=(session.getAttribute("preg")+"").split(":");
            double promsum=0;
            double sum1=0;
            String pr="";
            ArrayList<EntidadTest> list=new ArrayList<EntidadTest>();
            for(int i=0;i<preg.length;i++){
            EntidadTest et=new EntidadTest();
            out.print(request.getParameter("rp"+preg[i]));
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
                            out.print("<br> "+session.getAttribute("usr"));
                            
                            double sum=0;
                             sum1=0;
                         for(int i=0;i<list.size();i++) {
                             double prop=(list.get(i).getValorPregunta()*100)/promsum;
                             double vf=(list.get(i).getValorRespuesta()*prop)/list.get(i).getValorMaxRespuesta();
                             out.print("<br> id Pregunta: "+list.get(i).getPregunta()+" Valor de pregunta: "+list.get(i).getValorPregunta()+" Id respuesta: "+list.get(i).getRespuesta()+" Valor de respuesta: "+list.get(i).getValorRespuesta()+"Valor maximo respuesta: "+list.get(i).getValorMaxRespuesta()+" Suma promedio preguntas: "+promsum);
                             out.print("<br> ValorPregunta/100 : "+prop+" Valor respuesta real: "+vf+" Incremental/100 :"+ (sum=sum+prop) + " incremental % : "+(sum1=sum1+vf));
                         }
            clsmetodos cls=new clsmetodos();
            Procesos p=new Procesos();
            String fecha=p.obtenerHora();
           
            cls.ingresarTest(session.getAttribute("usr")+"", pr,sum1,fecha);
        %>
    </body>
</html>
