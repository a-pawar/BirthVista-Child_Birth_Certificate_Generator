<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.*"%>

<%
	String email = session.getAttribute("email").toString();
    int uid =1;
    String FirstName = "";
	String LastName = "";
	String MobileNumber = "";
	String Address = "";
	String RegDate = "";
	
	
%>


