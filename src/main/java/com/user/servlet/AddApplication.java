package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ApplicationDAOImpl;
import com.DB.DBConnect;
import com.entity.Application;


@WebServlet("/addApplication")
public class AddApplication extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email=req.getParameter("email");
			email = email.trim();
			int applicationID = (int) (Math.random() * 100000000);
			String dateofBirth = req.getParameter("DateofBirth");
			String gender = req.getParameter("Gender");
			String fullName = req.getParameter("FullName");
			String placeofBirth = req.getParameter("PlaceofBirth");
			String nameofFather  = req.getParameter("NameofFather");
			String permanentAdd = req.getParameter("PermanentAdd");
			String postalAdd = req.getParameter("PostalAdd");
			String mobileNumber = req.getParameter("MobileNumber");
			String emailId = req.getParameter("EmailId");
			String dateofapply = req.getParameter("Dateofapply");
			String remark = req.getParameter("Remark");
			String status = req.getParameter("Status");
			String updationDate = req.getParameter("UpdationDate");
			
			
			Application app = new Application();
			app.setEmail(email);
			app.setApplicationID(applicationID);
			app.setDateofBirth(dateofBirth);
			app.setGender(gender);
			app.setFullName(fullName);
			app.setPlaceofBirth(placeofBirth);
			app.setNameofFather(nameofFather);
			app.setPermanentAdd(permanentAdd);
			app.setPostalAdd(postalAdd);
			app.setMobileNumber(mobileNumber);
			app.setEmailId(emailId);
			app.setDateofapply(dateofapply);
			app.setRemark(remark);
			app.setStatus(status);
			app.setUpdationDate(updationDate);
			
			                   		
            ApplicationDAOImpl dao = new ApplicationDAOImpl(DBConnect.getConn()); 
             			
			boolean f = dao.addApplication(app);

			HttpSession session = req.getSession();

			if (f) {
                session.setAttribute("succMsg", "Application Added Successfully...");
				resp.sendRedirect("addApplication.jsp");
			} else {
				session.setAttribute("failedMsg", "Something wrong on Server..!!");
				resp.sendRedirect("addApplication.jsp");
			}			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
