<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Birth Certificate - Admin Change Password</title>
</head>
<%@include file="allComponent/allCss.jsp" %>
<%@include file="allComponent/admin_base.jsp" %>
<body>

<%
				String msg = request.getParameter("msg");
				if ("notMatch".equals(msg)) {
			%>
			<script>
				alert("New password and Confirm password does not match!");
				window.location.assign("adminChangePassword.jsp");
			</script>
			<%
				}
			%>
			<%
				if ("wrong".equals(msg)) {
			%>
			<script>
				alert("Your old Password is wrong!");
				window.location.assign("adminChangePassword.jsp");
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

<div class="container mt-5">
	<div class="card shadow" style="min-height: 50vh">
		<div class="card-body">
			<h2 class="text-danger mt-2" style="border-bottom: 2px solid orange">Change Password</h2>

			<div class="container-fluid mt-5">
				<form action="adminChangePasswordAction.jsp" method="post" name="changepassword" onsubmit="return checkpassword()">
                  
                  <div class="form-row">
                    <div class="col-sm-9">
                        <div class="form-group">
                            <label>Current Password</label>
                            <input type="password" name="oldpassword" class="form-control" placeholder="Enter current password">
                        </div>
                    </div>
                  </div>

                <div class="form-row">
                    <div class="col-sm-9">
                        <div class="form-group">
                            <label>New Password</label>
                            <input type="password" name="newpassword" class="form-control" placeholder="Enter new password">
                       </div>
                    </div>
                 </div>

                <div class="form-row">
                    <div class="col-sm-9">
                        <div class="form-group">
                            <label>Confirm Password</label>
                            <input type="password" name="confirmpassword" class="form-control" placeholder="Enter confirm password">
                        </div>
                    </div>
                </div>
                <input type="Submit" value="Submit" class=" m-2 px-3 btn btn-primary" >
            </form>

				</div>
		</div>
	</div>
</div>

</body>
</html>