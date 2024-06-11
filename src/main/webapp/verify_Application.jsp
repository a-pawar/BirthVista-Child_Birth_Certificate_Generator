<%@page import="com.entity.Application"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.ApplicationDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Birth Certificate - Verify Application</title>
</head>
<body>
<%@include file="allComponent/admin_base.jsp" %>
<%@include file="allComponent/allCss.jsp" %>

<div class="container card shadow mt-5">
    <div class="card-body">
		<h5 class="p-2" style="border-bottom: 2px solid orange">Verified Application</h5>
     <div class="container mt-5">
		<h1 class="text-success text-center"></h1>

		<table id="example" class="table table-striped table-bordered" style="width:100%">
			<thead style="background-color: #9e9e9e">
				<tr>
					<th>S No.</th>
					<th>Application No.</th>
					<th>Name</th>
					<th>Contact Number</th>
					<th>Father's Name</th>
					<th>Status</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
			      <%				  
			        ApplicationDAOImpl dao = new ApplicationDAOImpl(DBConnect.getConn());
				    List<Application> list = dao.getAcceptApplication();
				    for (Application n : list) {
			      %>
			         
					   <td><%=n.getId() %></td>
					   <td><%=n.getApplicationID() %></td>
					   <td><%=n.getFullName() %></td>
					   <td><%=n.getMobileNumber() %></td>
					   <td><%=n.getNameofFather() %></td>
					   <td><%=n.getStatus() %></td>
					   <td><a href="viewApplicationDtls.jsp?id=<%=n.getId()%>" class="btn btn-sm btn-primary">View</a></td>
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