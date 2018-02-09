/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package metodos;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

/**
 *
 * @author Asus
 */
public class Procesos {
    clsmetodos cls=new clsmetodos();
    String x;
    EntidadTest et;
    int numero;
    public String rellenaMedios(int numero){
             this.numero=numero;
                   x="";
                    et=cls.pregunta(numero+"");
               x= x+("<div class=\"form-group\">\n"
                        + "<h2>"+et.getTexto()+"</h2>\n"
                        + "<br>\n");
                
                rellenaEnteros();
                
                x=x+(" </div>\n");
                
                return x;
         }
         private String rellenaEnteros(){
             ArrayList<EntidadTest> list=cls.respueta(numero+"");
             
             
             for(int i=0;i<list.size();i++) {
                x=x+("<div class=\"row\">\n"
                        + "<div class=\"col-lg-1\"></div>\n"
                        + "<div class=\"col-lg-10\">\n"
                        + "<input type=\"radio\" id=\"r"+numero+list.get(i).getId()+"\" name=\"rp"+numero+"\" value=\""+numero+":"+et.getValor()+":"+list.get(i).getId()+":"+list.get(i).getValor()+":"+cls.getMax()+"\">\n"
                        + "<label for=\"r"+numero+list.get(i).getId()+"\" id=\"r"+numero+list.get(i).getId()+"\" >"+list.get(i).getTexto()+"</label>\n"
                        + "</div>\n"
                        + "</div>\n");
               }
             
             
                
                
                
                
                return x;
         }
         public boolean busquedaLineal(int[] arreglo, int dato) {
        for (int i = 0 ; i < arreglo.length ; i++) {
            if (arreglo[i] == dato) {
                return true;
            }
        }
 
        return false;
    }
                     public String obtenerHora(){
        DateFormat df = new SimpleDateFormat("YYYY/MM/dd");
            return df.format(new java.util.Date());
    }
           
           
           public String rellenarProcesos(){
                ArrayList<EntidadTest> list=new ArrayList<EntidadTest>();
        clsmetodos cls=new clsmetodos();
        String envio="";
        list=cls.envioProceso();
        envio ="|   cedula  | nombre de usuario | valor | fecha test |<br>";
        for (int i=0; i<list.size();i++){
                            EntidadTest et= new EntidadTest();
                            et=list.get(i);
            envio=envio+"<a href=\"consultaUsuarios.jsp?histo="+et.getId()+"\"> | "+et.getUsuario()+"</a> | "+et.getNombreUsuario()+" | "+et.getValor()+" | "+et.getTexto()+" | <br>";
        }
               System.out.println(envio);
           return envio;
           }
          
           
           
           
           
           
           public String procesos(String id){
               String envio="";
               
                       clsmetodos cls=new clsmetodos();
                       EntidadTest et=new EntidadTest();
                       et=cls.histo(id);
                       envio=envio+(et.getNombreUsuario()+"<br>"
                               + "ha obtenido un puntaje de: "+et.getValor()+"<br>"
                               + "en la fecha "+et.getTexto()
                               + "en las preguntas con sus respectivas respuestas <br>");
                      String elemento=et.getPregunta();
                       String []pregRes=elemento.split(";");
                       for(int i=0;i<pregRes.length;i++)
                       {
                           String []resP=pregRes[i].split(":");
                           envio=envio+("Pregunta "+i+": id_pregunta"+resP[0]+"<br>");
                           envio=envio+("respuesta : id_respuesta"+resP[1]+"<br>");
                       }
                       
                       
                       return envio;
           }
           
            public String histopreguntas(String id){
               String envio="";
               
                       clsmetodos cls=new clsmetodos();
                       EntidadTest et=new EntidadTest();
                       et=cls.histo(id);
                      /* envio=envio+(et.getNombreUsuario()+"<br>"
                               + "ha obtenido un puntaje de: "+et.getValor()+"<br>"
                               + "en la fecha "+et.getTexto()
                               + "en las preguntas con sus respectivas respuestas <br>");*/
                      String elemento=et.getPregunta();
                      System.out.println("elemento");
                       String []pregRes=elemento.split(";");
                       for(int i=0;i<pregRes.length;i++)
                       {
                           String []resP=pregRes[i].split(":");
                           envio=resP[0];
                       }
                       
                       
                       return envio;
           }
            public String historespuestas(String id){
               String envio="";
               
                       clsmetodos cls=new clsmetodos();
                       EntidadTest et=new EntidadTest();
                       et=cls.histo(id);
                   /*    envio=envio+(et.getNombreUsuario()+"<br>"
                               + "ha obtenido un puntaje de: "+et.getValor()+"<br>"
                               + "en la fecha "+et.getTexto()
                               + "en las preguntas con sus respectivas respuestas <br>");*/
                      String elemento=et.getPregunta();
                      System.out.println("elemento");
                       String []pregRes=elemento.split(";");
                       for(int i=0;i<pregRes.length;i++)
                       {
                           String []resP=pregRes[i].split(":");
                           
                           envio=resP[1];
                       }
                       
                       
                       return envio;
           }
}

