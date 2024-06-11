<%@page import="com.entity.Application"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.ApplicationDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Birth Certificate - View Application</title>
</head>
<%@include file="allComponent/allCss.jsp"%>
<%@include file="allComponent/navbar1.jsp"%>
<body>

	<div class="container card shadow mt-5">
		<div class="card-body">
			<h5 class="p-2" style="border-bottom: 2px solid orange">View
				Application Details</h5>
			<br>

			<%
			    int id = Integer.parseInt(request.getParameter("id"));
				ApplicationDAOImpl dao = new ApplicationDAOImpl(DBConnect.getConn());
				List<Application> list = dao.getViewAllApp(id);
				for (Application n : list) {
			%>

			<table class="table table-bordered">
				<tr>
					<td colspan="4" style="font-size: 20px; color: blue">User
						Details</td>
				</tr>

				<tr>
					<td colspan="4" style="font-size: 20px; color: green">Application
						Number : <%=n.getApplicationID()%></td>
				</tr>

				<tr>
					<th>First Name</th>
					<td>
						<%
							out.println(FirstName);
						%>
					</td>

					<th>Last Name</th>
					<td>
						<%
							out.println(LastName);
						%>
					</td>
				</tr>

				<tr>
					<th>Contact Number</th>
					<td>
						<%
							out.println(MobileNumber);
						%>
					</td>

					<th>Address</th>
					<td>
						<%
							out.println(Address);
						%>
					</td>
				</tr>

				<tr>
					<td colspan="4" style="font-size: 20px; color: blue">Application
						Details</td>
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

					<th>Permannent Address</th>
					<td><%=n.getPermanentAdd()%></td>
				</tr>

				<tr>
					<th>Postal Address</th>
					<td><%=n.getPostalAdd()%></td>

					<th>Contact Number</th>
					<td><%=n.getMobileNumber()%></td>
				</tr>

				<tr>
					<th>EmailId</th>
					<td><%=n.getEmailId()%></td>

					<th>Date of Apply</th>
					<td><%=n.getDateofapply()%></td>
				</tr>

				<tr>
					<%
						if (n.getRemark() == null) {
					%>

					<th>Remark</th>
					<td>Your Application Still Pending</td>

					<th>Status</th>
					<td><%=n.getStatus()%></td>
				</tr>
				<%
					} else {
				%>
				<tr>
					<th>Remark</th>
					<td><%=n.getRemark()%></td>

					<th>Status</th>
					<td><%=n.getStatus()%></td>
				</tr>
				
				<%
					}
				%>
               </table>
			
			<%
				}
			%>
		</div>
	</div>
</body>
</html>
