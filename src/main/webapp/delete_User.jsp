<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.*"%>
<%
	String id = request.getParameter("id");
	try {
		Connection con = DBConnect.getConn();
		Statement st = con.createStatement();
		st.executeUpdate("delete from user where id='"+id+"'");
		response.sendRedirect("view_User.jsp?msg=delete");
	} catch (Exception e) {
		System.out.println(e);
	}
%>