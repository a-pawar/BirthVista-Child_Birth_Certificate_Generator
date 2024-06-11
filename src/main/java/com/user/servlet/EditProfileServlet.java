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

@WebServlet("/editProfile")
public class EditProfileServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  try {
		    int id=Integer.parseInt(req.getParameter("id"));
			String FirstName = req.getParameter("FirstName");
			String LastName = req.getParameter("LastName");
			String MobileNumber = req.getParameter("MobileNumber");
			String Address = req.getParameter("Address");
			String Email = req.getParameter("Email");
			
			User u = new User();
			u.setId(id);
			u.setFirstName(FirstName);
			u.setLastName(LastName);
			u.setMobileNumber(MobileNumber);
			u.setAddress(Address);
			u.setEmail(Email);
			
			
		    UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
			boolean f=dao.updateEditUser(u);
			
			HttpSession session=req.getSession();
			
			if(f) {
				session.setAttribute("succMsg", "Profile Updated Successfully..");
				resp.sendRedirect("profile.jsp");
			}else {
				session.setAttribute("failedMsg", "Something went wrong..!!!");
				resp.sendRedirect("profile.jsp");
			}		
	} catch (Exception e) {
		e.printStackTrace();
	}	
	}
}
