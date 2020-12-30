package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnection {

	//create database connection
	
		private static String url="jdbc:mysql://localhost:3306/hotelreservationsystem";
		private static String userName="root";
		private static String passwordDb="lekamge@1998";
		private static Connection con;
			
		public static Connection getConnection() {
			
			try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, userName, passwordDb);
			}catch (Exception e) {
				System.out.println("Database connection error..");
			}
			
			return con;
		}
			
}
