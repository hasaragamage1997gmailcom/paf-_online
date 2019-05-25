package com.praticle_10.model;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class DBconnection {
	public static Connection createConnection() {
		
		Connection con = null;
		String url = "jdbc:mysql://localhost:3306/studentdb";
		String username = "root";
		String password = "root";
		
		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			}
			catch(ClassNotFoundException e) {
				e.printStackTrace();
			}
			con = (Connection) DriverManager.getConnection(url, username, password);
			System.out.println("printing connection object "+con);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return con;
		
	}

}
