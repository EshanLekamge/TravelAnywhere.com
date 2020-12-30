package com.guest;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteGuestServlet")
public class DeleteGuestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("cusid");
		boolean isTrue;
		
		isTrue = GuestDBUtil.deleteGuest(id);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("GuestInsert.jsp");
			dis.forward(request, response);
		}
		
		else {
			List<Customer> cusDetails = GuestDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("userprofile.jsp");
			dis.forward(request, response);
		}
		
	}
}
