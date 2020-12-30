package pkg.hotel;

public class EconomyRoom 
{
	private int economyRoomID;
	private int hotelID;
	private float economyRoomPrice;
	private int noOfEcoRooms;
	private int bookedERooms;
	private String hotelName;
	private String roomType;
	private String IMG;
	
	public EconomyRoom(int economyRoomID, int hotelID, float economyRoomPrice, int noOfEcoRooms, int bookedERooms, String hotelName, String roomType, String IMG) 
	{
		this.economyRoomID = economyRoomID;
		this.hotelID = hotelID;
		this.economyRoomPrice = economyRoomPrice;
		this.noOfEcoRooms = noOfEcoRooms;
		this.bookedERooms = bookedERooms;
		this.hotelName = hotelName;
		this.roomType = roomType;
		this.IMG = IMG;
	}

	public int getEconomyRoomID() {
		return economyRoomID;
	}

	public int getHotelID() {
		return hotelID;
	}

	public float getEconomyRoomPrice() {
		return economyRoomPrice;
	}

	public int getNoOfEcoRooms() {
		return noOfEcoRooms;
	}

	public int getBookedERooms() {
		return bookedERooms;
	}

	public String getHotelName() {
		return hotelName;
	}

	public String getRoomType() {
		return roomType;
	}
	
	public String getIMG() {
		return IMG;
	}

}


