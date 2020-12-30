package pkg.hotel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateBookingServlet")
public class UpdateBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String customerName = request.getParameter("customername");
		String hotelName = request.getParameter("hotelname");
		String roomType = request.getParameter("roomtype");
		String noOfRooms = request.getParameter("noofrooms");
		String checkInDate = request.getParameter("checkindate");
		String checkOutDate = request.getParameter("checkoutdate");
		String bookingId = request.getParameter("bookingid");
		String customerId = request.getParameter("customerid");
		String roomId = request.getParameter("roomid");
		String hotelId = request.getParameter("hotelid");

		
		boolean value;
		
		value = UpdateBookingDButil.updateBooking(customerName, hotelName, roomType, noOfRooms, checkInDate, checkOutDate, bookingId, customerId, roomId, hotelId);
		
		if(value == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("yourBookings.jsp");
			dis.forward(request, response);
			
		}
		else
		{
			RequestDispatcher dis = request.getRequestDispatcher("HotelReservationSystemHome.jsp");
			dis.forward(request, response);
		}
		
	}

}
