<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Birth Certificate - Date Report</title>
</head>
<%@include file="allComponent/admin_base.jsp" %>
<%@include file="allComponent/allCss.jsp" %>
<body>

<div class="container mt-5">
	<div class="card shadow" style="min-height: 50vh">
		<div class="card-body">
			<h2 class="text-danger mt-2" style="border-bottom: 2px solid orange">View Date Report</h2>

			<div class="container-fluid mt-5">
              <h5 class="text-center text-primary"></h5>
           <table id="example" class="table table-striped table-bordered" style="width:100%">
			<thead>
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
				  try {
							
					String fromdate = request.getParameter("fromdate").toString();
					String todate = request.getParameter("todate").toString();

					Connection con = DBConnect.getConn();
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery(
					"Select * from application where date(Dateofapply) between '" + fromdate + "' and '" + todate + "'");
					int i = 0;
    				while (rs.next()) {
					i++;
	 			%>
					<td><%=i%></td>
					<td><%=rs.getInt("ApplicationID")%></td>
					<td><%=rs.getString("FullName")%></td>
					<td><%=rs.getString("MobileNumber") %></td>
					<td><%=rs.getString("NameofFather")%></td>
					<td><%=rs.getString("Status") %></td>
					<td><a href="viewApplicationDtls.jsp?id=<%=rs.getInt("id")%>" class="text-primary">View Details</a></td>
				</tr>
     			<%
				}
				%>
				<h5 align="center" style="color: blue">
					Report from
					<%
	    				out.println(fromdate);
					%>
					to
					<%
						out.println(todate);
					%>
				</h5>
					
				<br>
				<%
		    		} catch (Exception e) {
					System.out.println(e);
			    	}
				%>
			</tbody>
		</table>

            </div>
        </div>
    </div>
</div>

</body>
</html>