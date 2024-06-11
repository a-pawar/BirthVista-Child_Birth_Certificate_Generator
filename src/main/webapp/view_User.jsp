<%@page import="java.sql.*"%>
<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.UserDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Birth Certificate - View User</title>
</head>
<body>
<%@include file="allComponent/admin_base.jsp" %>
<%@include file="allComponent/allCss.jsp" %>

    <%
		String msg = request.getParameter("msg");
		if ("detele".equals(msg)) {
	%>
	<script>
		alert("User has been Deleted...!!");
	</script>
	<%
		}
	%>
	
<div class="container card shadow mt-5">
    <div class="card-body">
		<h5 class="p-2" style="border-bottom: 2px solid orange">View All User</h5>
     <div class="container mt-5">
		<h1 class="text-success text-center"></h1>

		<table id="example" class="table table-striped table-bordered" style="width:100%">
			<thead style="background-color: #9e9e9e">
				<tr>
					<th>S No.</th>
					<th>Name</th>
					<th>Email ID</th>
					<th>Contact Number</th>
					<th>Address</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
			      <%				  
			      try
				   {						 
					Connection con=DBConnect.getConn();
					Statement st=con.createStatement();
					ResultSet rs = st.executeQuery("select * from user");
					int i =0;
					while(rs.next())
					{
						i++;
			      %>
			         
					   <td><%=i %></td>
					   <td><%=rs.getString("FirstName") %> <%=rs.getString("LastName") %></td>
					   <td><%=rs.getString("Email") %></td>
					   <td><%=rs.getString("MobileNumber") %></td>
					   <td><%=rs.getString("Address") %></td>
					   <td><a href="delete_User.jsp?id=<%=rs.getInt("id")%>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure to delete this User ?')">Delete</a></td>
					  </tr> 
					 <% 		
						}
					  }
					  catch(Exception e)
					  {
						  System.out.println(e);
					  }
					 %>    
			</tbody>
		</table>
	 </div>
   </div>
</div>

</body>
</html>