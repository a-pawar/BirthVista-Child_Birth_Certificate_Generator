<%@page import="com.entity.Application"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.ApplicationDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Birth Certificate - View Certificate</title>
</head>
<%@include file="allComponent/allCss.jsp"%>
<%@include file="allComponent/navbar1.jsp"%>
<body>

	<div class="container card shadow mt-5">
		<div class="card-body">
			<h5 class="p-2" style="border-bottom: 2px solid orange">Certificate
				Details</h5>
			<br>
			<div id="exampl">
				<h3 align="center">Birth Certificate</h3>
				<hr />
				
				<%
			    int id = Integer.parseInt(request.getParameter("id"));
			    ApplicationDAOImpl dao = new ApplicationDAOImpl(DBConnect.getConn());
				List<Application> list = dao.getViewCertificateDtls(id);
				for (Application n : list) {
			   %>

				<table class="table table-bordered">
					<tr>
						<td colspan="4" style="font-size: 20px; color: green">Application
							Number : <%=n.getApplicationID()%></td>
					</tr>

					<tr>
						<th>Full Name</th>
						<td><%=n.getFullName()%></td>

						<th>Gender</th>
						<td><%=n.getGender()%></td>
					</tr>

					<tr>
						<th>Date of Birth</th>
						<td><%=n.getDateofBirth()%></td>

						<th>Place of Birth</th>
						<td><%=n.getPlaceofBirth()%></td>
					</tr>

					<tr>
						<th>Name of Father</th>
						<td><%=n.getNameofFather()%></td>

						<th>Permanent Address</th>
						<td><%=n.getPermanentAdd()%></td>
					</tr>

					<tr>
						<th>Postal Address</th>
						<td><%=n.getPostalAdd()%></td>

						<th>Mobile Number</th>
						<td><%=n.getMobileNumber()%></td>
					</tr>

					<tr>
						<th>Email</th>
						<td><%=n.getEmailId()%></td>

						<th>Date of Apply</th>
						<td><%=n.getDateofapply()%></td>
					</tr>
				</table>
				<p align="left">
					<b>Certificate Genration Date : <%=n.getUpdationDate()%></b>
				</p>
				
				<%
				  }
			    %>

			</div>
			<center>
				<p>
					<i class="fa fa-print fa-2x" style="cursor: pointer;"
						OnClick="CallPrint(this.value)"></i>
				</p>
			</center>

		</div>
	</div>
	<script>
		function CallPrint(strid) {
			var prtContent = document.getElementById("exampl");
			var WinPrint = window
					.open('', '',
							'left=0,top=0,width=800,height=900,toolbar=0,scrollbars=0,status=0');
			WinPrint.document.write(prtContent.innerHTML);
			WinPrint.document.close();
			WinPrint.focus();
			WinPrint.print();
			WinPrint.close();
		}
	</script>


</body>
</html>