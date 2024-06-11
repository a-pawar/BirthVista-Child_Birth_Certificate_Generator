<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Birth Certificate : Register</title>
<%@include file="allComponent/allCss.jsp"%>
</head>

<script>
    function checkpass()
    {
      if(document.signup.Password.value!=document.signup.CPassword.value){
        alert('Password and Confirm Password field does not match');
        document.signup.CPassword.focus();
        return false;
      }
      return true;
    }
</script>

<body style="background-color: #f0f1f2;">
	<%@include file="allComponent/navbar.jsp"%>
	
	<%
		String successMsg = (String) session.getAttribute("successMsg");
		String errorMsg = (String) session.getAttribute("errorMsg");

		if (successMsg != null) {
	%>
	<script>
		alert("User Register Successfully...");
		window.location.assign("login.jsp");
	</script>
	<%
		session.removeAttribute("successMsg");
		}
	%>
	
	<%
		if (errorMsg != null) {
	%>
	<script>
		alert("Something went Wrong..!!");
	</script>
	<%
		}
	%>

	<div class="container p-2">
		<div class="row">
			<div class="col-md-6 offset-md-4 mr-3">
				<div class="card">
					<div class="card-body">
					  <h4 class="text-center">Registration Page</h4>
					  <hr>
					  <form action="register" method="post" name="signup" onsubmit="return checkpass();">
						    
						    <div class="row">
						    <div class="col-sm-6 form-group">
							  <label>First Name</label> 
							  <input type="text" class="form-control" name="FirstName" required>
							</div>
							
							<div class="col-sm-6 form-group">
							  <label>Last Name</label> 
							  <input type="text" class="form-control" name="LastName" required>
							</div>
							</div>
							<div class="form-group">
							  <label>Mobile Number</label> 
							  <input type="number" class="form-control" name="MobileNumber" required maxlength="10">
							</div>
							
							<div class="form-group">
							  <label>Address</label> 
							  <textarea name="Address" class="form-control" required></textarea>
							</div>
							
							<div class="form-group">
							  <label>Email Address</label> 
							  <input type="email" class="form-control" name="Email"required>
							</div>
							
							<div class="form-group">
							  <label>Password</label>
							  <input type="password" class="form-control" name="Password" required>
							</div>
							
							<div class="form-group">
							  <label>Confirm Password</label>
							  <input type="password" class="form-control" name="CPassword" required>
							</div>
							
							<center><button type="submit" class="btn btn-primary">Submit</button></center>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
 <%@include file="allComponent/footer.jsp" %>
</body>
</html>