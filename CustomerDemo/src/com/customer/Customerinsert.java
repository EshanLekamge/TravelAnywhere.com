package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Customerinsert")
public class Customerinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String name = request.getParameter("name");
		String email = request.getParameter("email"); 
		int cardnumber = Integer.parseInt(request.getParameter("cardnumber"));
		String expiredate = request.getParameter("expiredate");
		int securitycode = Integer.parseInt(request.getParameter("securitycode"));
		int amount = Integer.parseInt(request.getParameter("amount"));
		String username = request.getParameter("uid");
		String password = request.getParameter("psw");
		
		boolean isTrue;
		
		
		
		isTrue = CustomerDBUtil.insertcustomer(name, email,cardnumber,expiredate,securitycode,amount ,username,password);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
