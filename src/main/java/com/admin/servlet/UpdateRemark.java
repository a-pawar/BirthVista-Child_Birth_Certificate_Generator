package com.admin.servlet;

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
import com.entity.User;

@WebServlet("/remark")
public class UpdateRemark extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
		    int id=Integer.parseInt(req.getParameter("id"));
			String Remark = req.getParameter("Remark");
			String Status = req.getParameter("Status");
						
			Application ap = new Application();
			ap.setId(id);
			ap.setRemark(Remark);
			ap.setStatus(Status);
			
			
			ApplicationDAOImpl dao = new ApplicationDAOImpl(DBConnect.getConn());
			boolean f=dao.updateApplication(ap);
			
			HttpSession session=req.getSession();
			
			if(f) {
				session.setAttribute("succMsg", "Remark has been Updated");
				resp.sendRedirect("viewApplicationDtls.jsp?id="+id);
			}else {
				session.setAttribute("failedMsg", "somethng went wrong..!!!");
				resp.sendRedirect("viewApplicationDtls.jsp?id="+id);
			}		
	} catch (Exception e) {
		e.printStackTrace();
	}		
	}
}
