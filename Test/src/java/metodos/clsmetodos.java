package metodos;

import java.sql.ResultSet;
import com.datos.ClsConexion;
import java.sql.PreparedStatement;

public class clsmetodos 
{
	public String armar_combo()
	{
		String combo="";
		//consulta
		String con1="Select * from autor";
		ResultSet rs=null;
		ClsConexion obj=new ClsConexion();
		
		//Combo select
		combo="<select name=comboaut>"; // siempre se debe usar los \ en un string

		// consulta
		
		try
		{
			rs=obj.Consulta(con1);
			while(rs.next())
			{
				// ahi va los options segun las x que se repitan	
				combo+="<option value="+rs.getInt(2)+">"+rs.getString(1)+"</option>";
				
			}
			combo +="</select>";
		}
		catch(Exception e)
		{
			
		}
		
		return combo;
	}

	public String armar_tablaID( String id)
	{
		String tabla="";
		
		// consultar elementos
		
				String sql="Select usuario.nombre_usuario, relationship_1.puntaje  from relationship_1,usuario where relationship_1.id_aspirante='"+id+"' and relationship_1.id_aspirante=usuario.id_usuario;" ;
				ResultSet rs=null;
				ClsConexion obj=new ClsConexion();
		// Armar tabla
		tabla="<table border=2>";
		
		// consulta
		tabla+="<tr><td>Usuario</td><td>Puntaje</td></tr>";
				try
				{
					rs=obj.Consulta(sql);
					while(rs.next())
					{
						// ahi va los options segun las x que se repitan
						
						tabla+="<tr> <td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td></tr>";
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
	
	public void ingresar(String titulo, String autor, String desc)
	{
		String sql= "insert into libro values ('"+titulo+"','" +autor+ "','"+desc+"')";
		System.out.println(sql);
		ClsConexion con = new ClsConexion();
		con.Ejecutar(sql);
		
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
        
             public String pregunta(String id){
            	ResultSet rs=null;
		ClsConexion obj=new ClsConexion();
                try {
                String con="Select pregunta from preguntas where id_pregunta='"+id+"'";
                rs=obj.Consulta(con);
                while(rs.next())
                {
                    return rs.getString(1);
                }   
            } catch (Exception e) {
                    System.err.println("error"+e);
            }
            return "Nada que ver ";
        }
             public String respueta(String id){
            	ResultSet rs=null;
		ClsConexion obj=new ClsConexion();
                try {
                String con="Select pregunta from preguntas where id_pregunta='"+id+"'";
                rs=obj.Consulta(con);
                while(rs.next())
                {
                    return rs.getString(1);
                }   
            } catch (Exception e) {
                    System.err.println("error"+e);
            }
            return "Nada que ver ";
        }
}
