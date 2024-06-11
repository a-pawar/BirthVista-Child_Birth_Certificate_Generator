<%@page import="com.entity.Application"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.ApplicationDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Birth Certificate - View Admin Details</title>
</head>
<%@include file="allComponent/admin_base.jsp"%>
<%@include file="allComponent/allCss.jsp"%>
<body>

	<%
		String succMsg = (String) session.getAttribute("succMsg");
		String failedMsg = (String) session.getAttribute("failedMsg");

		if (succMsg != null) {
	%>
	<script>
		alert("Remark has been Updated");
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
		alert("somethng went wrong..!!!");
	</script>
	<%
		session.removeAttribute("failedMsg");
		}
	%>

	<div class="container card shadow mt-5">
		<div class="card-body">
			<h5 class="p-2" style="border-bottom: 2px solid orange">View All
				Application Details</h5>
			<br>

			<!--  <%
				//int id = Integer.parseInt(request.getParameter("id"));
			
			//	ApplicationDAOImpl dao = new ApplicationDAOImpl(DBConnect.getConn());
			//	List<Application> list = dao.getViewApplicationDtls(id);
			//	for (Application n : list) {
			%> -->
			
			<%
			            String FirstName="";
			String LastName="";
			String MobileNumber="";
			String Address="";
			            int id=Integer.parseInt(request.getParameter("id"));
			        
						try {
							
							Connection con = DBConnect.getConn();
							Statement st = con.createStatement();
							Statement st1 = con.createStatement();
							ResultSet rs = st.executeQuery("SELECT application.*,user.FirstName,user.LastName,user.MobileNumber,user.Address from application inner join user on application.Email=user.Email where application.id="+id+"");
						   
							while (rs.next()) {
								
					%>

			<table class="table table-bordered">
				<tr>
					<td colspan="4" style="font-size: 20px; color: blue">User
						Details</td>
				</tr>

				<tr>
					<td colspan="4" style="font-size: 20px; color: green">Application
						Number : <%=rs.getInt("ApplicationID")%></td>
				</tr>

				<tr>
					<th>First Name</th>
					<td>
						<%=rs.getString("FirstName")%>
					</td>

					<th>Last Name</th>
					<td>
						<%=rs.getString("LastName")%>
					</td>
				</tr>

				<tr>
					<th>Contact Number</th>
					<td>
						<%=rs.getString("MobileNumber")%>
					</td>

					<th>Address</th>
					<td>
						<%=rs.getString("Address")%>
					</td>
				</tr>

				<tr>
					<td colspan="4" style="font-size: 20px; color: blue">Application
						Details</td>
				</tr>

				<tr>
					<th>Full Name</th>
					<td><%=rs.getString("FullName")%></td>

					<th>Gender</th>
					<td><%=rs.getString("Gender")%></td>
				</tr>

				<tr>
					<th>Date of Birth</th>
					<td><%=rs.getString("DateofBirth")%></td>
					

					<th>Place of Birth</th>
					<td><%=rs.getString("PlaceofBirth")%></td>
					
				</tr>

				<tr>
					<th>Name of Father</th>
					<td><%=rs.getString("NameofFather")%></td>
					

					<th>Permannent Address</th>
					<td><%=rs.getString("PermanentAdd")%></td>
					
				</tr>

				<tr>
					<th>Postal Address</th>
					<td><%=rs.getString("PostalAdd")%></td>
					

					<th>Contact Number</th>
					<td><%=rs.getString("MobileNumber")%></td>
					
				</tr>

				<tr>
					<th>EmailId</th>
					<td><%=rs.getString("EmailId")%></td>
					

					<th>Date of Apply</th>
					<td><%=rs.getString("Dateofapply")%></td>
					
				</tr>

				<%
					if (rs.getString("Remark") == null) {
				%>
				<tr>
					<th>Remark</th>
					<td>Your Application Still Pending</td>

					<th>Status</th>
					<td><%=rs.getString("Status")%></td>
				</tr>


				<%
					} else {
				%>

				<tr>
					<th>Remark</th>
					<td><%=rs.getString("Remark")%></td>

					<th>Status</th>
					<td><%=rs.getString("Status")%></td>
				</tr>
				<%
					}
				%>
			</table>
			<%
				if (rs.getString("Remark") == null) {
			%>
			<p align="center" style="padding-top: 20px">
				<button class="btn btn-primary waves-effect waves-light w-lg"
					data-toggle="modal" data-target="#myModal">Take Action</button>
			</p>
			<%
				}
			%>

			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Take Action</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<table class="table table-bordered table-hover data-tables">

								<form action="remark" method="post" name="submit">
									<tr>
										<th>Remark :</th>
										<td><textarea name="Remark" placeholder="Remark"
												rows="12" cols="14" class="form-control wd-450"
												required="true"></textarea></td>
									</tr>

									<tr>
										<th>Status :</th>
										<td><select name="Status" class="form-control wd-450"
											required="true">
												<option value="Verified" selected>Verified</option>
												<option value="Rejected">Rejected</option>
										</select></td>
									</tr>
							</table>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<input type="hidden" name="id" value="<%=rs.getInt("Id")%>">
							<button type="submit" name="submit" class="btn btn-primary">Update</button>

							</form>
						</div>
					</div>
				</div>
			</div>
			<%
						}
						} catch (Exception e) {
							System.out.println(e);
						}
					%>
		</div>
	</div>

</body>
</html>