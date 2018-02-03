/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.datos;

import java.sql.*;
/*
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
*/


import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
public class ClsConexion {
	
	private Connection con;
	private Statement St;
	private ResultSet rs;
	private String driver;
	private String user;
	private String pwd;
	private String cadena;
	
	
	public String getDriver()
	{
		return this.driver;
	}
	String getUser()
	{
		return this.user;
	}
	String getPwd()
	{
		return this.pwd;
	}
	String getCadena()
	{
		return this.cadena;
	}
	public Connection getConexion()
	{ 
		return this.con; 
	}
	
	public ClsConexion() {
		this.driver ="org.postgresql.Driver";
		this.user="postgres";
		this.pwd="1234";
		this.cadena="jdbc:postgresql://localhost:5432/ISproyecto";// referencia ala bd
		this.con=this.crearConexion();
		
	}
	
	Connection crearConexion(){
		try {
			Class.forName("org.postgresql.Driver");
			}
			catch (ClassNotFoundException e) {
			
			}
		
		try{
			Class.forName(getDriver()).newInstance();
			Connection con=DriverManager.getConnection(getCadena(),getUser(),getPwd());
			return con;
		}
	catch(Exception ee)
	{
		System.out.println("Error: " + ee.getMessage());
		return null;
	}
	}

	public String Ejecutar(String sql) // insert,update y delete
	{
	String error="";
	try
	{
	St=(Statement) getConexion().createStatement();
	St.execute(sql);
	error="Datos insertados";
	}
	catch(Exception ex)
	{
	error = ex.getMessage();
	}
	return(error);
	}



	public ResultSet Consulta(String sql) // solo cuando se hace un select
	{
	String error="";
	ResultSet reg=null;
	
	try
	{
	St=(Statement) getConexion().createStatement();
	reg=St.executeQuery(sql);
	
	
	}
	catch(Exception ee)
	{
	error = ee.getMessage();
	}
	return(reg);

	
	}
}
