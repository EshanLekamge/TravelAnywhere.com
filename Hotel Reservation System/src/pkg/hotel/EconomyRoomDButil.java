package pkg.hotel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EconomyRoomDButil 
{
	public static List<EconomyRoom> validate(String id)
	{
	
	ArrayList<EconomyRoom> economyRooms = new ArrayList<>();
	
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
		
		String sql = "select * from economyroom where hotelID = '"+id+"'";
		
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next())
		{
			int ideconomyroom = rs.getInt(1);
			int hotelId = rs.getInt(2);
			float economyprice = rs.getFloat(3);
			int noOfEconomyRooms = rs.getInt(4);
			int bookedRooms = rs.getInt(5);
			String hotelname = rs.getString(6);
			String roomtype = rs.getString(7);
			String img = rs.getString(8);
			
			EconomyRoom newEconomyRoom = new EconomyRoom(ideconomyroom, hotelId, economyprice, noOfEconomyRooms, bookedRooms, hotelname, roomtype, img);
			economyRooms.add(newEconomyRoom);
		}
		
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return economyRooms;
	
	}
	
	public static boolean reserveEcoRoom(String customerName, String customerID, String noOfRooms, String checkindate, String checkoutdate, String hotelName, String hotelId, String roomType, String roomId)
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
		String sql2 = "update economyroom set BookedERooms = BookedERooms + '"+noOfRooms+"' where idEconomyRoom = '"+roomId+"'";
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
