package pkg.hotel;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hotelInfoServelet")
public class hotelInfoServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String destination = request.getParameter("SearchBar");
		
		try {
		List<Hotel> hotelInfo = HotelDBUtil.validate(destination);
		request.setAttribute("hotelInfo", hotelInfo);
		}catch (Exception e)
		{
			e.printStackTrace();
		}
		RequestDispatcher dis = request.getRequestDispatcher("HotelReserbation_Hotels.jsp");
		dis.forward(request, response);
		
		
	}

}
