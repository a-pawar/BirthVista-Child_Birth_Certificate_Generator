package com.admin.servlet;

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


@WebServlet("/adminlogin")
public class AdminLoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("username");
		String pass = req.getParameter("password");
		
		UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
		User u = dao.loginAdmin(email, pass);
		
		HttpSession session = req.getSession();
		
		if(u!=null) {
			session.setAttribute("username", email);
			session.setAttribute("validMsg", "Logged In Successfully");
			resp.sendRedirect("admin_login.jsp");
			
		}
		else {
			session.setAttribute("invalidMsg", "Something went Wrong..!!");
			resp.sendRedirect("admin_login.jsp");			
		}
	}
 
}
