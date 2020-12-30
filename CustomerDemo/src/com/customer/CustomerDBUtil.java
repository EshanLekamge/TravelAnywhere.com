package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class CustomerDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
    public static List<Customer> validate(String userName, String password) {
	
	ArrayList<Customer> cus = new ArrayList<>();
	
	/*//create database connection
	String url = "jdbc:mysql://localhost:3306/hotel";
	String user = "root";
	String pass = "1234";
	*/
	
	
	
	//validate
	
	try {
	    
		con = DBConnect.getConnection();
	    stmt = con.createStatement();
	    String sql = "select * from paidcustomer where username='"+userName+"' and password='"+password+"'";	    
	    rs = stmt.executeQuery(sql);
	    
	    if(rs.next()) {
		int id = rs.getInt(1);
		String name = rs.getString(2);
		String email = rs.getString(3);
		int cardnumber = rs.getInt(4);
		String expiredate = rs.getString(5);
		int securitycode = rs.getInt(6);
		int amount = rs.getInt(7);
		String userU = rs.getString(8);
		String passU = rs.getString(9);
		
		
		
		Customer c = new Customer(id,name,email,cardnumber,expiredate,securitycode,amount,userU,passU);
		cus.add(c);
	    }
	    
	}
	catch(Exception e) {
	    e.printStackTrace();
	}
	
	return cus;
	
    }
    
    //Insert customer
    
    public static boolean insertcustomer(String name, String email, int cardnumber, String expiredate,int securitycode,int amount ,String username, String password) {
    	
    	boolean isSuccess = false;
    	
    	
    	
    	try {
    			con = DBConnect.getConnection();
    			stmt = con.createStatement();
    	       String sql = "insert into paidcustomer values (0,'"+name+"','"+email+"','"+cardnumber+"','"+expiredate+"','"+securitycode+"','"+amount+"','"+username+"','"+password+"')";
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

    //Update customer
    	public static boolean updatecustomer(String id,String name, String email, String cardnumber, String expiredate,String securitycode,String amount ,String username, String password) {
    		
    		
    		try {
    			
    			con = DBConnect.getConnection();
    			stmt = con.createStatement();
    			String sql = "update paidcustomer set name='"+name+"',email='"+email+"',cardnumber='"+cardnumber+"',expiredate='"+expiredate+"',securitycode='"+securitycode+"',amount='"+amount+"',username='"+username+"',password='"+password+"'"
    					+"where id ='"+id+"'";
    			int rs=stmt.executeUpdate(sql);
    			
    			if(rs>0) {
    				isSuccess = true;
    			}
    			else {
    				isSuccess = false;
    			}
    			
    		}
    		catch (Exception e) {
        		e.printStackTrace();
        	}
    		
    		return  isSuccess;
    	}
	
    	
    	
    	//data retrieve

	public static List<Customer> getCustomerDetails(String Id){
	
		int convertedId = Integer.parseInt(Id);
		
		ArrayList<Customer> cus = new ArrayList<Customer>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from paidcustomer where id ='"+convertedId+"'";
			 rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
										
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String email = rs.getString(3);
					int cardnumber = rs.getInt(4);
					String expiredate = rs.getString(5);
					int securitycode = rs.getInt(6);
					int amount = rs.getInt(7);
					String username = rs.getString(8);
					String password = rs.getString(9);
					
					Customer c = new Customer(id,name,email,cardnumber,expiredate,securitycode,amount,username,password);
					cus.add(c);
				}
		}
				
			
			
			
		
		
		catch (Exception e) {
    		e.printStackTrace();
    	}
		
		
		
		return cus;
	
		}
	//Customer delete
	public static boolean deletecustomer(String id) {
		
		int convertedid = Integer.parseInt(id);
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from paidcustomer where id='"+convertedid+"'";
			int r=stmt.executeUpdate(sql);
			
			if(r>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
    		e.printStackTrace();
    	}
		
		return  isSuccess;
	}
	
	
	
	}
    
    

