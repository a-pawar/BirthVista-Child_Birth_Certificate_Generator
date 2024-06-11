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

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("Email");
		String pass = req.getParameter("Password");
		
		UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
		User u = dao.login(email, pass);
		
		HttpSession session = req.getSession();
		if(u!=null) {
			session.setAttribute("email", email);
			session.setAttribute("userId", u.getId());
			session.setAttribute("validMsg", "Logged In Successfully");
			resp.sendRedirect("login.jsp");			
		}
		else {
			session.setAttribute("invalidMsg", "Invalid Credential, Try Again..");
			resp.sendRedirect("login.jsp");			
		}
	}

}
