<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Birth Certificate: User Login</title>
<%@include file="allComponent/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="allComponent/navbar.jsp"%>
	
	<%
		String validMsg = (String) session.getAttribute("validMsg");
		String invalidMsg = (String) session.getAttribute("invalidMsg");

		if (validMsg != null) {
	%>
	<script>
		alert("Logged In Successfully");
		window.location.assign("profile.jsp");
	</script>
	<%
		session.removeAttribute("validMsg");
		}
	%>
	<%
		if (invalidMsg != null) {
	%>
	<script>
		alert("Invalid Credential, Try Again..");
		window.location.assign("login.jsp");
	</script>
	<%
		session.removeAttribute("invalidMsg");
		}
	%>
	
	<br>
	<div class="container p-3 mt-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h3 class="text-center">User Login</h3>				
                     <hr> 	
					
						<form action="login" method="post">
						
						    <div class="form-group">
							  <label>Email ID</label> 
							  <input type="email" class="form-control" name="Email" required>
							</div>
														
							<div class="form-group">
							  <label>Password</label>
							  <input type="password" class="form-control" name="Password" required>
							</div>
							
							<div class="text-center">
							  <button type="submit" class="btn btn-primary">Login</button><br>							  
							  Not An any Account ?<a href="register.jsp">Create Account</a>
							</div>
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>