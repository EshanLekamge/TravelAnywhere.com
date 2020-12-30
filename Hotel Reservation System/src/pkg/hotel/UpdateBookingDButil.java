package pkg.hotel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class UpdateBookingDButil 
{
	private static boolean successful;
	
	public static boolean updateBooking(String customerName, String hotelName, String roomType, String noOfRooms, String checkInDate, String checkOutDate, String bookingId, String customerId, String roomId, String hotelId)
	{		
		//database connection
		String url = "jdbc:mysql://localhost:3306/hotelreservationsystem";
		String user = "root";
		String password = "lekamge@1998";
				
		try{
					
			Class.forName("com.mysql.jdbc.Driver");
					
			Connection con = DriverManager.getConnection(url, user, password);
			Statement stmt = con.createStatement();
			
			String sql = "update roombooking set CustomerName = '"+customerName+"', hotelName = '"+hotelName+"', RoomType = '"+roomType+"', noOfRooms = '"+noOfRooms+"', checkINDate = '"+checkInDate+"', checkOUTDate = '"+checkOutDate+"' where BookingID ='"+bookingId+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) 
			{
				successful = true;
			}
			else
			{
				successful = false;
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return successful;
	}
	
	public static boolean deleteBooking(String bookingid)
	{
		//database connection
		String url = "jdbc:mysql://localhost:3306/hotelreservationsystem";
		String user = "root";
		String password = "lekamge@1998";
						
		try{
							
				Class.forName("com.mysql.jdbc.Driver");
							
				Connection con = DriverManager.getConnection(url, user, password);
				Statement stmt = con.createStatement();
				
				String sql = "delete from roombooking where BookingID ='"+bookingid+"'";
					
				int rs = stmt.executeUpdate(sql);
					
				if(rs > 0) 
				{
					successful = true;
				}
				else
				{
					successful = false;
				}
					
				}catch(Exception e)
				{
					e.printStackTrace();
				}
		
		return successful;

	}
}
