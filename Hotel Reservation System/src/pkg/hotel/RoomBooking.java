package pkg.hotel;

public class RoomBooking 
{
	private int bookingID;
	private String customerID;
	private String customerName;
	private String hotelName;
	private String roomType;
	private String noOfRooms;
	private int roomID;
	private int hotelID;
	private String checkInDate;
	private String checkOutDate;
	
	public RoomBooking(int bookingID, String customerID, String customerName, String hotelName, String roomType,
			String noOfRooms, int roomID, int hotelID, String checkInDate, String checkOutDate) 
	{
		
		this.bookingID = bookingID;
		this.customerID = customerID;
		this.customerName = customerName;
		this.hotelName = hotelName;
		this.roomType = roomType;
		this.noOfRooms = noOfRooms;
		this.roomID = roomID;
		this.hotelID = hotelID;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
	}

	public int getBookingID() {
		return bookingID;
	}

	public String getCustomerID() {
		return customerID;
	}

	public String getCustomerName() {
		return customerName;
	}

	public String getHotelName() {
		return hotelName;
	}

	public String getRoomType() {
		return roomType;
	}

	public String getNoOfRooms() {
		return noOfRooms;
	}

	public int getRoomID() {
		return roomID;
	}

	public int getHotelID() {
		return hotelID;
	}

	public String getCheckInDate() {
		return checkInDate;
	}

	public String getCheckOutDate() {
		return checkOutDate;
	}

}
