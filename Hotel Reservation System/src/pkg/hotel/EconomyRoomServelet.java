package pkg.hotel;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EconomyRoomServelet")
public class EconomyRoomServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String id = request.getParameter("roomButton2");
		
		try {
		List<EconomyRoom> EconomyRoomlInfo = EconomyRoomDButil.validate(id);
		request.setAttribute("EconomyRoomlInfo", EconomyRoomlInfo);
		}catch (Exception e)
		{
			e.printStackTrace();
		}
		RequestDispatcher dis = request.getRequestDispatcher("HotelReservation_RoomsEco.jsp");
		dis.forward(request, response);
	
	}

}
