package pkg.hotel;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LuxaryRoomServelet")
public class LuxaryRoomServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String id = request.getParameter("roomButton");
		
		try {
		List<LuxuryRoom> LuxuryRoomlInfo = LuxaryRoomDButil.validate(id);
		request.setAttribute("LuxuryRoomlInfo", LuxuryRoomlInfo);
		}catch (Exception e)
		{
			e.printStackTrace();
		}
		RequestDispatcher dis = request.getRequestDispatcher("HotelReservation_Rooms.jsp");
		dis.forward(request, response);
	}

}
