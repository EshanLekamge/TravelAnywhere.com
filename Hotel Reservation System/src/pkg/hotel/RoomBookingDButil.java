package pkg.hotel;

import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class RoomBookingDButil 
{
	public static List<RoomBooking> validate(String id)
	{
	
	ArrayList<RoomBooking> roombookings = new ArrayList<>();
	
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
		
		String sql = "select * from roombooking where CustomerID = '"+id+"'";
		
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next())
		{
			int bookingid = rs.getInt(1);
			String customerid = rs.getString(2);
			String customername = rs.getString(3);
			String hotelname = rs.getString(4);
			String roomtype = rs.getString(5);
			String noofrooms = rs.getString(6);
			int roomid = rs.getInt(7);
			int hotelid = rs.getInt(8);
			String checkindate = rs.getString(9);
			String checkoutdate = rs.getString(10);
			
			RoomBooking newBooking = new RoomBooking(bookingid, customerid, customername, hotelname, roomtype, noofrooms, roomid, hotelid, checkindate, checkoutdate);
			roombookings.add(newBooking);
		}
		
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return roombookings;
	
	}
	
}
