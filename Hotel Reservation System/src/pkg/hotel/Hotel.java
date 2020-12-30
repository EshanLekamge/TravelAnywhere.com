package pkg.hotel;

public class Hotel
{
	private int hotelID;
	private String hotelName;
	private String email;
	private String contactNo;
	private int noOfLuxaryRooms;
	private int noOfEconomyRooms;
	private String location;
	private String IMG;
	
	
	public Hotel(int hotelID, String hotelName, String email, String contactNo, int noOfLuxaryRooms,int noOfEconomyRooms, String location, String IMG) 
	{
		
		this.hotelID = hotelID;
		this.hotelName = hotelName;
		this.email = email;
		this.contactNo = contactNo;
		this.noOfLuxaryRooms = noOfLuxaryRooms;
		this.noOfEconomyRooms = noOfEconomyRooms;
		this.location = location;
		this.IMG = IMG;
	}

	public int getHotelID() 
	{
		return hotelID;
	}

	public String getHotelName() 
	{
		return hotelName;
	}

	public String getEmail() 
	{
		return email;
	}

	public String getContactNo() 
	{
		return contactNo;
	}

	public int getNoOfLuxaryRooms() 
	{
		return noOfLuxaryRooms;
	}

	public int getNoOfEconomyRooms() 
	{
		return noOfEconomyRooms;
	}

	public String getIMG() 
	{
		return IMG;
	}

	public String getLocation() 
	{
		return location;
	}
}
