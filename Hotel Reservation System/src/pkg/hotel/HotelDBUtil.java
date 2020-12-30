package pkg.hotel;

import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class HotelDBUtil 
{
	public static List<Hotel> validate(String destination)
	{
	
	ArrayList<Hotel> hotels = new ArrayList<>();
	
	//database connection
	
	String url = "jdbc:mysql://localhost:3306/hotelreservationsystem";
	String user = "root";
	String password = "lekamge@1998";
	
	//
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection(url, user, password);
		Statement stmt = con.createStatement();
		
		String sql = "select * from hotel where location = '"+destination+"'";
		
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next())
		{
			int hotelid = rs.getInt(1);
			String hotelname = rs.getString(2);
			String email = rs.getString(3);
			String phone = rs.getString(4);
			int noOfLuxary = rs.getInt(5);
			int noOfEconomy = rs.getInt(6);
			String location = rs.getString(7);
			String img = rs.getString(8);
			
			Hotel newHotel = new Hotel(hotelid, hotelname, email, phone, noOfLuxary, noOfEconomy, location, img);
			hotels.add(newHotel);
		}
		
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return hotels;
	
	}

}
