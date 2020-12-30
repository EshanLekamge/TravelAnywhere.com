package pkg.hotel;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RoomBookingServlet")
public class RoomBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String id = request.getParameter("cusid");
		
		try {
		List<RoomBooking> bookingInfo = RoomBookingDButil.validate(id);
		request.setAttribute("bookingInfo", bookingInfo);
		}catch (Exception e)
		{
			e.printStackTrace();
		}
		RequestDispatcher dis = request.getRequestDispatcher("displayBooking.jsp");
		dis.forward(request, response);
		
		
	}

}
