<%@page import="com.entity.Application"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.ApplicationDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Birth Certificate - Certificate List</title>
</head>
<%@include file="allComponent/allCss.jsp"%>
<%@include file="allComponent/navbar1.jsp"%>
<body>

<div class="container card shadow mt-5">
		<div class="card-body">
		<h5 class="p-2" style="border-bottom: 2px solid orange">Certificate List</h5>
     <div class="container mt-5">
		<h1 class="text-success text-center"></h1>

		<table id="example" class="table table-striped table-bordered" style="width:100%">
			<thead>
				<tr>
					<th>User ID</th>
					<th>Application No.</th>
					<th>Name</th>
					<th>Mobile Number</th>
					<th>Father's Name</th>
					<th>Status</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
			      <%				  
				    ApplicationDAOImpl dao = new ApplicationDAOImpl(DBConnect.getConn());
				    List<Application> list =  dao.getAllCertificate(email);
				    for (Application n : list) {
			      %>
			         
					   <td><%=n.getId() %></td>
					   <td><%=n.getApplicationID() %></td>
					   <td><%=n.getFullName() %></td>
					   <td><%=n.getMobileNumber() %></td>
					   <td><%=n.getNameofFather()%></td>
					   <td><%=n.getStatus() %></td>
					   <td><a href="view_Certificate.jsp?id=<%=n.getId()%>" class="btn btn-sm btn-primary"><i class="fas fa-eye"></i> View</a></td>
					  </tr> 
					 <%
				         }
			         %>    
			 
			</tbody>
		</table>
	  </div>
	</div>
 </div>
</body>
</html>