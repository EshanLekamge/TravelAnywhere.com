package pkg.hotel;

public class LuxuryRoom 
{
	private int luxuryRoomID;
	private int hotelID;
	private float luxuryRoomPrice;
	private int noOfLuxRooms;
	private int bookedLRooms;
	private String hotelName;
	private String roomType;
	private String IMG;
	
	public LuxuryRoom(int luxuryRoomID, int hotelID, float luxuryRoomPrice, int noOfLuxRooms, int bookedLRooms, String hotelName, String roomType, String IMG) 
	{

		this.luxuryRoomID = luxuryRoomID;
		this.hotelID = hotelID;
		this.luxuryRoomPrice = luxuryRoomPrice;
		this.noOfLuxRooms = noOfLuxRooms;
		this.bookedLRooms = bookedLRooms;
		this.hotelName = hotelName;
		this.roomType = roomType;
		this.IMG = IMG;
	}

	public String getHotelName() {
		return hotelName;
	}

	public String getRoomType() {
		return roomType;
	}
	
	public int getLuxuryRoomID() {
		return luxuryRoomID;
	}

	public int getHotelID() {
		return hotelID;
	}

	public float getLuxuryRoomPrice() {
		return luxuryRoomPrice;
	}

	public int getNoOfLuxRooms() {
		return noOfLuxRooms;
	}

	public int getBookedLRooms() {
		return bookedLRooms;
	}
	
	public String getIMG() {
		return IMG;
	}

}
