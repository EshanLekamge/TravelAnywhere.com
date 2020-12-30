package com.contact;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.contact.ContactDBUtil;


@WebServlet("/ContactInsert")
public class ContactInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("nam");
		String phone = request.getParameter("pho");
		String email = request.getParameter("em");
		String message = request.getParameter("message");
		
		
		boolean isTrue;
		
		isTrue = ContactDBUtil.insertcontactdetails(name, phone, email, message);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("successContact.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}

