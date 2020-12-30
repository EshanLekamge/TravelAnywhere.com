package pkg.hotel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EcoBookingServelet")
public class EcoBookingServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String customerName = request.getParameter("CustomerName");
		String customerID = request.getParameter("CustomerID");
		String noOfRooms = request.getParameter("noOfRooms");
		String checkindate = request.getParameter("checkindate");
		String checkoutdate = request.getParameter("checkoutdate");
		String hotelName = request.getParameter("hotelname");
		String hotelId = request.getParameter("hotelid");
		String roomType = request.getParameter("roomtype");
		String roomId = request.getParameter("roomid");
		
		boolean valuetrue;
		
		valuetrue = EconomyRoomDButil.reserveEcoRoom(customerName, customerID, noOfRooms, checkindate, checkoutdate, hotelName, hotelId, roomType, roomId);
		
		if(valuetrue == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("yourBookings.jsp");
			dis.forward(request, response);
		}
		else
		{
			RequestDispatcher dis = request.getRequestDispatcher("Hotels.jsp");
			dis.forward(request, response);
		}
	}

}
