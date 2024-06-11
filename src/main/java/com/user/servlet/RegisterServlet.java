package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String FirstName = req.getParameter("FirstName");
			String LastName = req.getParameter("LastName");
			String MobileNumber = req.getParameter("MobileNumber");
			String Address = req.getParameter("Address");
			String Email = req.getParameter("Email");
			String Password = req.getParameter("Password");
			
			User us = new User();
			us.setFirstName(FirstName);
			us.setLastName(LastName);
			us.setMobileNumber(MobileNumber);
			us.setAddress(Address);
			us.setEmail(Email);
			us.setPassword(Password);

			HttpSession session = req.getSession();

			
				UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
				boolean f = dao.userRegister(us);

				if(f) {
					session.setAttribute("successMsg", "User Register Successfully...");
					resp.sendRedirect("register.jsp");
				}
				else {
					session.setAttribute("errorMsg", "Something went Wrong..!!");
					resp.sendRedirect("register.jsp");
				}	
			

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}