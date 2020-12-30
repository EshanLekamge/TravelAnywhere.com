package pkg.hotel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteBookingServlet")
public class DeleteBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String bookingid = request.getParameter("bookingid");
		
		boolean value;
		
		value = UpdateBookingDButil.deleteBooking(bookingid);
		
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
