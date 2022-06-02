package com.spring.app;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Main {

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
		String username="root";
		String password = "12345";
		
		String url = "jdbc:mysql://localhost:3306/player?useSSL=false";
		String driver = "com.mysql.cj.jdbc.Driver";
		Connection connection = null;
		try {
			Class.forName(driver);
			connection = DriverManager.getConnection(url, username, password);
			System.out.println("Connected");
		} catch(Exception e) {
			System.out.println(e.toString());
		} finally {
			connection.close();
		}

	}

}
