<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Birth Certificate: Admin Login</title>
<%@include file="allComponent/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="allComponent/navbar.jsp"%>
	<br>
	
	<%
		String validMsg = (String) session.getAttribute("validMsg");
		String invalidMsg = (String) session.getAttribute("invalidMsg");

		if (validMsg != null) {
	%>
	<script>
		alert("Logged In Successfully");
		window.location.assign("admin_home.jsp");
	</script>
	<%
		session.removeAttribute("validMsg");
		}
	%>
	<%
		if (invalidMsg != null) {
	%>
	<script>
		alert("Something went Wrong..!!");
	</script>
	<%
		session.removeAttribute("invalidMsg");
		}
	%>
	
	<div class="container p-3 mt-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h3 class="text-center">Admin Login</h3>				
                     <hr> 	
					
						<form action="adminlogin" method="post">
						
						    <div class="form-group">
							  <label>Username</label> 
							  <input type="text" class="form-control" name="username" required>
							</div>
														
							<div class="form-group">
							  <label>Password</label>
							  <input type="password" class="form-control" name="password" required>
							</div>
							
							<div class="text-center">
							  <button type="submit" class="btn btn-primary">Login</button><br>							  
							</div>
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>