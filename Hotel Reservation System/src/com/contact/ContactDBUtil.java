package com.contact;

import java.sql.Connection;
import java.sql.Statement;

public class ContactDBUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	
	
	public static boolean insertcontactdetails(String name, String phone, String email, String message) {
    	
    	boolean isSuccess = false;
    	
    		
    		try {
    		
    		 con = DBConnection.getConnection();
    	    stmt = con.createStatement();
    	    
    	    
    	    String sql = "insert into contact_us values (0,'"+name+"','"+phone+"','"+email+"','"+message+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
}
