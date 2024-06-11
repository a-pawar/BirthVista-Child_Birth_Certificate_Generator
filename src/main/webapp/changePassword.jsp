<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Birth Certificate -  Change Password</title>
<%@include file="allComponent/allCss.jsp" %>
</head>
<body>
  <%@include file="allComponent/navbar1.jsp" %>
  <br><br>
  
    <%
		String msg = request.getParameter("msg");
		if ("notMatch".equals(msg)) {
	%>
	<script>
		alert("New password and Confirm password does not match!");
		window.location.assign("changePassword.jsp");
	</script>
	<%
		}
	%>
	<%
		if ("wrong".equals(msg)) {
	%>
	<script>
		alert("Your old Password is wrong!");
		window.location.assign("changePassword.jsp");
	</script>
	<%
		}
	%>
	<%
		if ("done".equals(msg)) {
	%>
	<script>
		alert("Password changed successfully!");
		window.location.assign("index.jsp");
	</script>

	<%
		}
	%>
  
  <div class="container card shadow mt-5">
		<div class="card-body">
			<h5 class="p-2" style="border-bottom: 2px solid orange">Change Password</h5>
			<br>
			               
			<div class="container-fluid">
				<form action="changePasswordAction.jsp" method="post">
					<label>Old Password</label> 
					<input type="password" name="oldpassword" class="form-control" placeholder="Enter Old Password" required>
						
					<label>New Password</label> 
					<input type="password" name="newpassword" class="form-control" placeholder="Enter New Password" required>
					
					<label>Confirm Password</label> 
					<input type="password" name="confirmpassword" class="form-control" placeholder="Enter New Password Again" required>
					<hr>
					<input type="submit" class="btn btn-danger mt-2" value="Submit">					
				</form>
			</div>
		</div>
	</div>
</body>
</html>