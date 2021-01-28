package com.tyrowebdev.GPMS.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.tyrowebdev.GPMS.Connectiondao.Connectiondao;
import com.tyrowebdev.GPMS.model.Admin;

public class AdminLogindao {

	public static boolean isUserValid(Admin a) 
	{
		boolean validStatus = false;
		
		try
		{
			Connection con = Connectiondao.getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from admin where username =  '"+a.getUsername()+"'and password = '"+a.getPassword()+"'");
			while(rs.next())
			{
				validStatus = true;
			}
		}catch (Exception e) {
			e.printStackTrace();
			}

		return validStatus;
		
	}
	
	
	
}
