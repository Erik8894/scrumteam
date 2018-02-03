/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package metodos;

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
}
