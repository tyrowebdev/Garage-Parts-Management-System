package com.tyrowebdev.GPMS.Connectiondao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connectiondao {

	public static Connection getConnection() 
	{
		Connection conn = null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gpms", "root", "admin");
		}catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
			
}
