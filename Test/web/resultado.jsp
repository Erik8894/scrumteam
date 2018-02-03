<%-- 
    Document   : resultado
    Created on : Feb 1, 2018, 10:11:43 PM
    Author     : Erik
--%>

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
    <body> <%if (session.getAttribute("validacion").equals("1"));else out.println("hidden> <script type=\"text/javascript\">window.location=\"http://localhost:8084/Test/index.jsp\";</script");%>
        
        <h1>Respuestas</h1>
        <br/><br/>
         <%  String [] preg=(session.getAttribute("preg")+"").split(":");
            double promsum=0;
            ArrayList<EntidadTest> list=new ArrayList<EntidadTest>();
            EntidadTest et=new EntidadTest();
            for(int i=0;i<preg.length;i++){
            out.print(request.getParameter("rp"+preg[i]));
            String []st=(request.getParameter("rp"+preg[i])+"").split(":");
            et.setPregunta(st[0]);
            et.setValorPregunta(Double.parseDouble(st[1]));
            promsum=promsum+Double.parseDouble(st[1]);
            et.setRespuesta(st[2]);
            et.setValorRespuesta(Double.parseDouble(st[3]));
            et.setValorMaxRespuesta(Double.parseDouble(st[4]));
            list.add(et);
            }
        
        %>
    </body>
</html>
