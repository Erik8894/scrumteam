/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.datos;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author Jhonny
 */
public class ClsConexion {

    
    Connection conexion = null;
    Statement comando = null;
    ResultSet registro;
    private Statement St;
    private String driver;
    private String user;
    private String pwd;
    private String cadena;
    private Connection con;

    public String getDriver() {
        return this.driver;
    }

    String getUser() {
        return this.user;
    }

    String getPwd() {
        return this.pwd;
    }

    String getCadena() {
        return this.cadena;
    }

    public Connection getConexion() {
        return this.con;
    }

    public ClsConexion() {

        this.con = this.crearConexion();

    }

    Connection crearConexion() {
       try {
            //Driver JDBC
            Class.forName("com.mysql.jdbc.Driver");
            //Nombre del servidor. localhost:3306 es la ruta y el puerto de la conexión 
            //panamahitek_text es el nombre que le dimos a la base de datos
            String servidor = "jdbc:postgresql://localhost:5432/isproyecto";
            //El root es el nombre de usuario por default. No hay contraseña
            String usuario = "postgres";
            String pass = "12345";
            //Se inicia la conexión
            conexion = DriverManager.getConnection(servidor, usuario, pass);
 
        } catch (ClassNotFoundException ex) {
           //JOptionPane.showMessageDialog(null, ex, "Error en la conexión a la base de datos: " + ex.getMessage(), JOptionPane.ERROR_MESSAGE);
            conexion = null;
        } catch (SQLException ex) {
          // JOptionPane.showMessageDialog(null, ex, "Error en la conexión a la base de datos: " + ex.getMessage(), JOptionPane.ERROR_MESSAGE);
            conexion = null;
        } catch (Exception ex) {
          // JOptionPane.showMessageDialog(null, ex, "Error en la conexión a la base de datos: " + ex.getMessage(), JOptionPane.ERROR_MESSAGE);
            conexion = null;
        } finally {
           // JOptionPane.showMessageDialog(null, "Conexión Exitosa");
            return conexion;
        }
    }
    

    public ResultSet Consulta(String sql) {
        String error = "";
        ResultSet reg = null;

        try {
            St = getConexion().createStatement();
            reg = St.executeQuery(sql);

        } catch (Exception ee) {
            error = ee.getMessage();
        }
        return (reg);
    }

    /*public String Ejecutar(String nombre, String correo, String nick,
            String celular, String fecha, String pass) {
        String sql = "Insert into public.\"Usuarios\" values('" + fecha + "','" + nick + "','" + nombre + "',"
                + "'" + pass + "','" + correo + "','+593" + celular + "')";
        String error = "";
        try {
            St = getConexion().createStatement();
            St.execute(sql);
            error = "Datos insertados";
        } catch (Exception ex) {
            error = ex.getMessage();
        }
        return (error);
    }*/
    
    
    public String contenido (String id_contenido) {
        String sentencia = "Select * from contenido where id_contenido='"+id_contenido+"';";
        ClsConexion c = new ClsConexion();
        ResultSet rs = null;
        String error="";

        try {
            rs = c.Consulta(sentencia);
            while (rs.next()) {
                
                error += rs.getString("informacion");
            }
        
        } catch (Exception ex) {
            error = ex.getMessage();
        }
        return (error);
    } 
    public ArrayList listado(int id_tutorial) {
        String sentencia = "Select * from contenido where id_tutorial="+id_tutorial+";";
        ClsConexion c = new ClsConexion();
        ResultSet rs = null;
        ArrayList error = new ArrayList();

        try {
            rs = c.Consulta(sentencia);
            while (rs.next()) {
                System.out.println(rs.getString("id_contenido"));
                error.add(rs.getString("id_contenido"));
            }
        
        } catch (Exception ex) {
           // ex.getMessage();
        }
        return (error);
    }
    
    
    public String titulo(int id_tutorial) {
        String sentencia = "Select * from tutorial where id_tutorial="+id_tutorial+";";
        ClsConexion c = new ClsConexion();
        ResultSet rs = null;
        String error="";

        try {
            rs = c.Consulta(sentencia);
            while (rs.next()) {
                
                error += rs.getString("nombre");
            }
        
        } catch (Exception ex) {
            error = ex.getMessage();
        }
        return (error);
    }

//
//    public String contraseña(String user) {
//        String sentencia = "select \"Password\" from public.\"Usuarios\""
//                + "where \"Correo\"='" + user + "'";
//        ClsConexion c = new ClsConexion();
//        ResultSet rs = null;
//        String contraseña = "";
//        String error="";
//
//        try {
//            rs = c.Consulta(sentencia);
//            while (rs.next()) {
//                contraseña += rs.getString("Password");
//            }
//        } catch (SQLException e) {
//            error=e.getMessage();
//            return error;
//        }
//        return contraseña;
//    }
//        public void qrtemporal(String qr, String correo){
//        String sql = "Update public.\"Usuarios\" set \"Temporal\" = '" + qr +"' where \"Correo\" ='"+correo+    "';";
//        
//        try {
//            St = getConexion().createStatement();
//                        St.execute(sql);
//                            System.out.println("*****Ejecuto");
//        } catch (SQLException ex) {
//                                        System.out.println("*****No Ejecuto");
//
//            Logger.getLogger(ClsConexion.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        
//        }
//    public String temporal(String user) {
//        String sentencia = "select \"Temporal\" from public.\"Usuarios\""
//                + "where \"Correo\"='" + user + "'";
//        ClsConexion c = new ClsConexion();
//        ResultSet rs = null;
//        String contraseña = "";
//        String error="";
//
//        try {
//            rs = c.Consulta(sentencia);
//            while (rs.next()) {
//                contraseña += rs.getString(1);
//            }
//        } catch (SQLException e) {
//            error=e.getMessage();
//            return error;
//        }
//        return contraseña;
//    }
}
