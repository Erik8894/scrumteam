package metodos;

import java.sql.ResultSet;
import com.datos.ClsConexion;
import java.sql.PreparedStatement;
import java.util.ArrayList;

public class clsmetodos 
{
    private double max=0;

    public double getMax() {
        return max;
    }
	public String armar_tablaID(String id)
	{
		String tabla="";
		
		// consultar elementos
                String j=id;
                System.out.println(j);
		
				String sql="Select usuario.nombre_usuario, historico.valor, historico.fecha_test from historico,usuario where historico.id_usuario='"+id+"' and historico.id_usuario=usuario.id_usuario;" ;
				//String sql1="select nombre_usuario,tipo from usuario;";
                                ResultSet rs=null;
				ClsConexion obj=new ClsConexion();
		// Armar tabla
		tabla="<table border=2 class='tbConsulta'>";
		
		// consulta
		tabla+="<tr><td>Usuario</td><td>Fecha</td><td>Puntaje</td></tr>";
				try
				{
					rs=obj.Consulta(sql);
					while(rs.next())
					{
						// ahi va los options segun las x que se repitan
						
						tabla+="<tr> <td><a href>"+rs.getString(1)+"</a></td><td>"+rs.getString(3)+"</td><td>"+rs.getString(2)+"</td></tr>";
					}
					tabla +="</table>"; 
				}
				catch(Exception e)
				{
					
				}
				// concatena al del inicio
				System.out.println(tabla);
		
		return tabla;
		}
         public String armar_tablafecha(String f)
	{
		String tabla="";
		
		// consultar elementos
               String sql="Select historico.id_historico,usuario.nombre_usuario, historico.valor, historico.fecha_test from historico,usuario where historico.fecha_test='"+f+"' and historico.id_usuario=usuario.id_usuario;" ;
				//String sql1="select nombre_usuario,tipo from usuario;";
                                ResultSet rs=null;
				ClsConexion obj=new ClsConexion();
		// Armar tabla
		tabla="<table border=2 class='tbConsulta'>";
		
		// consulta
		tabla+="<tr><td>Usuario</td><td>Fecha</td><td>Puntaje</td></tr>";
				try
				{
					rs=obj.Consulta(sql);
					while(rs.next())
					{
						// ahi va los options segun las x que se repitan
						
						tabla+="<tr> <td>"+rs.getString(2)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(3)+"</td><td><a  href='Reporte.jsp?user="+rs.getString(2)+"&id="+rs.getString(1)+"&fc="+rs.getString(4)+"'>Descargar</a></td></tr>";
					}
					tabla +="</table>"; 
				}
				catch(Exception e)
				{
					
				}
				// concatena al del inicio
				System.out.println(tabla);
		
		return tabla;
		}
         
        public String armar_tabla(String id,String f)
	{
		String tabla="";
		
		// consultar elementos
               String sql="Select usuario.nombre_usuario, historico.valor, historico.fecha_test from historico,usuario where historico.id_usuario='"+id+"'and historico.fecha_test='"+f+"' and historico.id_usuario=usuario.id_usuario;" ;
				//String sql1="select nombre_usuario,tipo from usuario;";
                                ResultSet rs=null;
				ClsConexion obj=new ClsConexion();
		// Armar tabla
		tabla="<table border=2 class='tbConsulta'>";
		
		// consulta
		tabla+="<tr><td>Usuario</td><td>Fecha</td><td>Puntaje</td></tr>";
				try
				{
					rs=obj.Consulta(sql);
					while(rs.next())
					{
						// ahi va los options segun las x que se repitan
						
						tabla+="<tr> <td>"+rs.getString(1)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(2)+"</td></tr>";
					}
					tabla +="</table>"; 
				}
				catch(Exception e)
				{
					
				}
				// concatena al del inicio
				System.out.println(tabla);
		
		return tabla;
		}
	      
        public boolean autentificacion(String usuario, String contraseña)
        {
                String user;
                String pass;
		ResultSet rs=null;
		ClsConexion obj=new ClsConexion();
                try {
                String con="Select * from usuario where id_usuario='"+usuario+"' and pass='"+contraseña+"'";
                rs=obj.Consulta(con);
                while(rs.next())
                {
                user=rs.getString(1);
                pass=rs.getString(4);
                
                if(usuario.equals(user)&& contraseña.equals(pass))
                {
                    return true;
                }
                    
                }
                           
                
            } catch (Exception e) {
                    System.err.println("error"+e);
            }
            return false;
        }
      
        public boolean ingresarUsuario_1(String id_usuario, String nombre_usuario, String tipo,String pass)
	{
                String sql= "insert into usuario values ('"+id_usuario+"','"+nombre_usuario+"','"+tipo+"','"+pass+"')";
                System.out.println(sql);
		ClsConexion con = new ClsConexion();
		//con.e1
                if(con.Ejecutar(sql)!=null)
                {
                    return true;
                }
                return false;      
        }
        public String usuario(String id){
            	ResultSet rs=null;
		ClsConexion obj=new ClsConexion();
                try {
                String con="Select id_usuario,nombre_usuario from usuario where id_usuario='"+id+"'";
                rs=obj.Consulta(con);
                while(rs.next())
                {
                
                
                
                    return rs.getString(2);
                 
                }
                           
                
            } catch (Exception e) {
                    System.err.println("error"+e);
            }
            return "Nada que ver ";
        }
        
            
                 public EntidadTest pregunta(String id){
                 EntidadTest et=new EntidadTest();
            	ResultSet rs=null;
		ClsConexion obj=new ClsConexion();
                try {
                String con="Select id_pregunta, pregunta, valor from preguntas where id_pregunta='"+id+"'";
                rs=obj.Consulta(con);
                while(rs.next())
                {
                    
                    et.setId(rs.getString(1));
                    et.setTexto(rs.getString(2));
                    et.setValor(rs.getString(3));
                    return et;
                    
                }   
            } catch (Exception e) {
                    System.err.println("error"+e);
            }
            return et;
        }
             public ArrayList <EntidadTest> respueta(String id){
            	ResultSet rs=null;
                ArrayList list=new ArrayList();
		ClsConexion obj=new ClsConexion();
                try {
                String con="Select respuesta.id_respuesta, respuesta, banco_preguntas.valor from respuesta, banco_preguntas where banco_preguntas.id_respuesta=respuesta.id_respuesta and id_pregunta='"+id+"'";
                rs=obj.Consulta(con);
                max=0;
                while(rs.next())
                {
                                    EntidadTest et=new EntidadTest();
                     
                    et.setId(rs.getString(1));
                    et.setTexto(rs.getString(2));
                    et.setValor(rs.getString(3));
                    if (max<Double.parseDouble(rs.getString(3)))max=Double.parseDouble(rs.getString(3));
                   // out.println("id: "+rs.getString(1)+" respuesta: "+rs.getString(2)+" valor: "+rs.getString(3));
                    list.add(et);
                    
                }   
                //return list;
            } catch (Exception e) {
                    System.err.println("error"+e);
            }
            return list;
        }
              public boolean ingresarTest(String id_usuario, String id_preguntas, double valor, String fecha_test)
	{
                String sql= "INSERT INTO public.historico(\n" +
"	 id_usuario, id_preguntas, valor, fecha_test)\n" +
"	VALUES ( '"+id_usuario+"','"+id_preguntas+"',"+valor +",'"+fecha_test+"')";
                System.out.println(sql);
		ClsConexion con = new ClsConexion();
		//con.e1
                if(con.Ejecutar(sql)!=null)
                {
                    return true;
                }
                return false;      
        }
             public ArrayList <EntidadTest> envioProceso(){
            	ResultSet rs=null;
                ArrayList list=new ArrayList();
		ClsConexion obj=new ClsConexion();
                try {
                String con="Select id_historico, historico.id_usuario,nombre_usuario,id_preguntas, valor,fecha_test from historico, usuario where usuario.id_usuario=historico.id_usuario;";
                rs=obj.Consulta(con);
                max=0;
                while(rs.next())
                {
                                    EntidadTest et=new EntidadTest();
                     
                                    
                                    
                    et.setId(rs.getString("id_historico"));//id_historico
                    et.setUsuario(rs.getString("id_usuario"));//id_usuario
                    et.setNombreUsuario(rs.getString("nombre_usuario"));//nombre_usuario
                    et.setPregunta(rs.getString("id_preguntas"));//preguntas formato id_pregunta:id_respuesta*id_pregunta:id_respuesta
                    et.setValor(rs.getString("valor"));//valor del test
                    et.setTexto(rs.getString("fecha_test"));//fecha_rest
                    
                  //  if (max<Double.parseDouble(rs.getString(3)))max=Double.parseDouble(rs.getString(3));
                   // out.println("id: "+rs.getString(1)+" respuesta: "+rs.getString(2)+" valor: "+rs.getString(3));
                    list.add(et);
                    
                }   
                //return list;
            } catch (Exception e) {
                    System.err.println("error"+e);
            }
            return list;
        }
             public EntidadTest histo(String id){
            	ResultSet rs=null;
		ClsConexion obj=new ClsConexion();
                EntidadTest et=new EntidadTest();
                try {
                String con="Select id_historico, historico.id_usuario,nombre_usuario,id_preguntas, valor,fecha_test from historico, usuario where usuario.id_usuario=historico.id_usuario and id_historico="+id;
                rs=obj.Consulta(con);
                max=0;
                while(rs.next())
                {             
                    et.setId(rs.getString("id_historico"));//id_historico
                    et.setUsuario(rs.getString("id_usuario"));//id_usuario
                    et.setNombreUsuario(rs.getString("nombre_usuario"));//nombre_usuario
                    et.setPregunta(rs.getString("id_preguntas"));//preguntas formato id_pregunta:id_respuesta*id_pregunta:id_respuesta
                    et.setValor(rs.getString("valor"));//valor del test
                    et.setTexto(rs.getString("fecha_test"));//fecha_rest
                   
                   // if (max<Double.parseDouble(rs.getString(3)))max=Double.parseDouble(rs.getString(3));
                   // out.println("id: "+rs.getString(1)+" respuesta: "+rs.getString(2)+" valor: "+rs.getString(3));
                    
                }   
                //return list;
            } catch (Exception e) {
                    System.err.println("error"+e);
            }
            return et;
        }
             
        
             
            public String historial(String id)
            {
                String tabla="";
            	ResultSet rs=null;
		ClsConexion obj=new ClsConexion();
                EntidadTest et=new EntidadTest();
                try {
                String con="Select id_historico, historico.id_usuario,nombre_usuario,id_preguntas, valor,fecha_test from historico, usuario where usuario.id_usuario=historico.id_usuario and id_historico="+id;
                rs=obj.Consulta(con);
                
                max=0;
                while(rs.next())
                {             
                    et.setId(rs.getString("id_historico"));//id_historico
                    et.setUsuario(rs.getString("id_usuario"));//id_usuario
                    et.setNombreUsuario(rs.getString("nombre_usuario"));//nombre_usuario
                    et.setPregunta(rs.getString("id_preguntas"));//preguntas formato id_pregunta:id_respuesta*id_pregunta:id_respuesta
                    et.setValor(rs.getString("valor"));//valor del test
                    et.setTexto(rs.getString("fecha_test"));//fecha_rest
                   
                   // if (max<Double.parseDouble(rs.getString(3)))max=Double.parseDouble(rs.getString(3));
                   // out.println("id: "+rs.getString(1)+" respuesta: "+rs.getString(2)+" valor: "+rs.getString(3));
                    
                }   
                //return list;
            } catch (Exception e) {
                    System.err.println("error"+e);
            }
            return tabla;
        }
}
