package pkg.hotel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class LuxaryRoomDButil 
{
	public static List<LuxuryRoom> validate(String id)
	{
	
	ArrayList<LuxuryRoom> luxaryRooms = new ArrayList<>();
	
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
		
		String sql = "select * from luxaryroom where hotelID = '"+id+"'";
		
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next())
		{
			int idluxaryroom = rs.getInt(1);
			int hotelId = rs.getInt(2);
			float luxaryprice = rs.getFloat(3);
			int noOfLuxaryRooms = rs.getInt(4);
			int bookedRooms = rs.getInt(5);
			String hotelname = rs.getString(6);
			String roomtype = rs.getString(7);
			String img = rs.getString(8);
			
			LuxuryRoom newLuxaryRoom = new LuxuryRoom(idluxaryroom, hotelId, luxaryprice, noOfLuxaryRooms, bookedRooms, hotelname, roomtype, img);
			luxaryRooms.add(newLuxaryRoom);
		}
		
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return luxaryRooms;
	
	}
	
	
	public static boolean reserveLuxRoom(String customerName, String customerID, String noOfRooms, String checkindate, String checkoutdate, String hotelName, String hotelId, String roomType, String roomId)
	{
		boolean isSuccess = false;
		
		//database connection
		String url = "jdbc:mysql://localhost:3306/hotelreservationsystem";
		String user = "root";
		String password = "lekamge@1998";
		
		try{
			
		Class.forName("com.mysql.jdbc.Driver");
			
		Connection con = DriverManager.getConnection(url, user, password);
		Statement stmt = con.createStatement();
		
		String sql = "insert into roombooking values (0, '"+customerID+"', '"+customerName+"', '"+hotelName+"', '"+roomType+"', '"+noOfRooms+"', '"+roomId+"', '"+hotelId+"', '"+checkindate+"', '"+checkoutdate+"')";
		String sql2 = "update luxaryroom set BookedRooms = BookedRooms + '"+noOfRooms+"' where idLuxaryRoom = '"+roomId+"'";
		int rs = stmt.executeUpdate(sql);
		stmt.executeUpdate(sql2);
		
			if(rs > 0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}


}
