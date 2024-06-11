<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Birth Certificate - Add Application</title>
</head>
<%@include file="allComponent/allCss.jsp"%>
<%@include file="allComponent/navbar1.jsp"%>
<body>

	<%
		String succMsg = (String) session.getAttribute("succMsg");
		String failedMsg = (String) session.getAttribute("failedMsg");

		if (succMsg != null) {
	%>
	<script>
		alert("Application Added Successfully...");
		//window.location.assign("profile.jsp");
	</script>
	<%
		session.removeAttribute("succMsg");
		}
	%>
	<%
		if (failedMsg != null) {
	%>
	<script>
		alert("Something wrong on Server..!!");
	</script>
	<%
		session.removeAttribute("failedMsg");
		}
	%>

	<div class="container card shadow mt-5">
		<div class="card-body">
			<h5 class="p-2" style="border-bottom: 2px solid orange">Add
				Application</h5>
			<br>
			               
			<div class="container-fluid">

				<form action="addApplication" method="post">
					<div class="row">
						
						<div class="col-sm-12">
							<div class="form-group">
								<label>Date of Birth</label> <input type="date"
									name="DateofBirth" class="form-control" required>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Gender</label> <input type="radio" name="Gender"
									value="Male"> Male <input type="radio" name="Gender"
									value="Female"> Female
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Full Name</label> <input type="text" name="FullName"
									class="form-control" placeholder="Enter Full Name" required>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Place of Birth</label> <input type="text"
									name="PlaceofBirth" class="form-control"
									placeholder="Enter Place of Birth" required>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Father's Name</label> <input type="text"
									name="NameofFather" class="form-control"
									placeholder="Enter Father's Name" required>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Permanent Address</label>
								<textarea name="PermanentAdd" class="form-control"
									placeholder="Enter Permanent Address" required></textarea>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Postal Address</label>
								<textarea name="PostalAdd" class="form-control"
									placeholder="Enter Postal Address" required></textarea>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Contact Number</label> <input type="text"
									name="MobileNumber" class="form-control"
									placeholder="Enter Mobile Number" required maxlength="10">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Email ID</label> <input type="email" name="EmailId"
									class="form-control" placeholder="Enter Email ID" required>
							</div>
						</div>
					</div>
					<hr>
					<input type="hidden" name="email" value="<%out.println(email);%>">
					<input type="submit" value="Submit" class="btn btn-primary">
				</form>
			</div>
		</div>
	</div>

</body>
</html>