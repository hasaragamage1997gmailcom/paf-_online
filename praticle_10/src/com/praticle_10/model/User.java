package com.praticle_10.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class User {
	
	public String login(String userN, String passw) {
		
		Connection con = null;
		Statement statement = null;
		ResultSet resultset = null;
		
		String userNameDB ="";
		String passwordDB ="";
		
		try {
			con = DBconnection.createConnection();
			statement = (Statement) con.createStatement();
			resultset = statement.executeQuery("select nameUsers, passUsers");
			
			while(resultset.next()) {
				userNameDB = resultset.getString("nameUsers");
				passwordDB = resultset.getString("passUsers"); 
				
				if(userN.equals(userNameDB) && passw.equals(passwordDB)) {
					return "SUCCESS";
				}
			}
		
		
	}
catch(SQLException e) {
	
	e.printStackTrace();
	
		}
		return "Invalid user credentials";
	
	}



}
