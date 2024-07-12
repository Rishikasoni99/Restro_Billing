package com.database;

import java.sql.*;
import java.util.ArrayList;

public class DbConnection {
	public static Connection takeConnection()
	{
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String path="jdbc:mysql://localhost:3306/billingsite";
			String username="root";
			String password="992004";
			con= DriverManager.getConnection(path , username, password);
		}
		catch(Exception e) {
		e.printStackTrace();	
		}
		return con;
	}

		
		
	

    
}
