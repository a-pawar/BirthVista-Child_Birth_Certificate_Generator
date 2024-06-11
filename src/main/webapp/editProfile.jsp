<%@page import="com.DAO.UserDAOImpl"%>
<%@page import="com.entity.User" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Birth Certificate - Edit Profile</title>
<%@include file="allComponent/allCss.jsp"%>
</head>
<body>
	<%@include file="allComponent/navbar1.jsp"%>
	
	
	<div class="card shadow m-2">
      <div class="card-body">
        <h5 class="p-2 text-danger" style="border-bottom: 2px solid orange;">Edit Profile</h5>
        <div class="container-fluid">
				<hr>

				<%
					int id = Integer.parseInt(request.getParameter("id"));
				    UserDAOImpl dao= new UserDAOImpl(DBConnect.getConn());
					User u =dao.getUserById(id);
				%>
				<form action="editProfile" method="post">
				  
				  	<div class="row">
						   <div class="col-sm-6 form-group">
							  <label>First Name</label> 
							  <input type="text" class="form-control" name="FirstName" value="<%=u.getFirstName()%>">
						    </div>
							
							<div class="col-sm-6 form-group">
							  <label>Last Name</label> 
							  <input type="text" class="form-control" name="LastName" value="<%=u.getLastName()%>">
							</div>
						  </div>
						  
						  <div class="form-group">
							  <label>Mobile Number</label> 
							  <input type="number" class="form-control" name="MobileNumber" value="<%=u.getMobileNumber()%>">
						   </div>
							
							<div class="form-group">
							  <label>Address</label> 
							  <textarea name="Address" class="form-control"><%=u.getAddress()%></textarea>
							</div>
							
							<div class="form-group">
							  <label>Email Address</label> 
							  <input type="email" class="form-control" name="Email" value="<%=u.getEmail() %>" readonly>
							</div>							
											
						 <input type="hidden" name="id" value="<%=u.getId()%>" >

						<div class="text-center">
							<button type="submit" class="btn btn-primary">Update</button>
						</div>
						
					</div>
			   </div>
			</form>
		</div>
	</div>
</div>
</body>
</html>