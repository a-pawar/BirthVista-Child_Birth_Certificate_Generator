<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Birth Certificate - Admin Home</title>
<style>
.glow {
  font-size: 80px;
  color: #fff;
  text-align: center;
  -webkit-animation: glow 1s ease-in-out infinite alternate;
  -moz-animation: glow 1s ease-in-out infinite alternate;
  animation: glow 1s ease-in-out infinite alternate;
}

@-webkit-keyframes glow {
  from {
    text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
  }

  to {
    text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
  }
}

/* Rounded border */
hr.rounded {
  border-top: 8px solid lightblue;
  border-radius: 5px;
}

.prjdiv:hover{
transform:translateY(-10px)
}
div .container1{
width:100%;
background-color:white;
border-radius:8px;
}
h2, h4{
 padding:10Px;
}
</style>

</head>
<%@include file="allComponent/allCss.jsp" %>
<%@include file="allComponent/admin_base.jsp" %>
<body style="background-color: #b2ebf2;">



<!-- Start Show All Data through Box -->
	<div class="container mt-5">
		<div class="row"> 
         <%
			try {
				int count = 0;
				Connection con = DBConnect.getConn();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from application where Status='Pending'");
				while (rs.next()) {
					count++;
				}
		%>     
			<div class="col-sm-4 text-center mydiv">
				<div class="container1">
				  <div class="card-body">
				    <h4 class="text-success">New Application</h4>
					<h2 class="text-primary"><%out.print(count);%></h2>
					
				  </div>
				
				<div class="card-footer">
				   <a href="new_Application.jsp">View Details >>></a>				   
				</div>
				</div>
			</div>
        <%
			
		%>             
        	<div class="col-sm-4 text-center mydiv">
				<%
				    int count1 = 0;
					ResultSet rs1 = st.executeQuery("select * from application where Status='Verified'");
					while (rs1.next()) {
						count1++;
					}
			    %>
				<div class="container1">
				<div class="card-body">
					<h4 class="text-success">Verified Application</h4>
					<h2 class="text-primary"><%out.print(count1);%></h2>
				</div>
				<div class="card-footer">
				   <a href="verify_Application.jsp">View Details >>></a>				   
				</div>
			</div>
			</div>

			<div class="col-sm-4 text-center mydiv"> 
		   	<%
				    int count2 = 0;
					ResultSet rs2 = st.executeQuery("select * from application where Status='Rejected'");
					while (rs2.next()) {
						count2++;
					}
			    %>
				<div class="container1">
				  <div class="card-body">
				    <h4 class="text-success">Reject Application</h4>
					<h2 class="text-primary"><%out.print(count2);%></h2>					
				</div>
				<div class="card-footer">
				   <a href="reject_Application.jsp">View Details >>></a>				   
				</div>
			</div>
			</div>
			 </div>
			 
		<div class="row mt-3">
		
			<div class="col-sm-4 text-center mydiv">
		  	  <%
		            int count3 = 0;
					ResultSet rs3 = st.executeQuery("select * from application");
					while (rs3.next()) {
						count3++;
					}
			    %>
				<div class="container1">
				 <div class="card-body">					
					<h4 class="text-success">All Application</h4>
					<h2 class="text-primary"><%out.print(count3);%></h2>
				</div>
				<div class="card-footer">
				   <a href="all_Application.jsp">View Details >>></a>				   
				</div>
			</div>
			</div>			
       
		
			<div class="col-sm-4 text-center mydiv">
			    <%
		            int count4 = 0;
					ResultSet rs4 = st.executeQuery("select * from user");
					while (rs4.next()) {
						count4++;
					}
			    %>
				<div class="container1">
				  <div class="card-body">	
				    <h4 class="text-success">All User</h4>
					<h2 class="text-primary"><%out.print(count4);%></h2>					
				  </div>
				<div class="card-footer">
				   <a href="view_User.jsp">View Details >>></a>				   
				</div>
			  </div>
			</div>				
		</div>		
	</div>
     <%
		} catch (Exception e) {
			System.out.println(e);
		}
	%> 
	<!-- End Show All Data through Box -->

		<footer class="container mt-5 text-center">
		  <p style="font-size: 30pt; color: blue; font-weight: bold">
			Copyright &copy;
			<script>
				document.write(new Date().getFullYear());
			</script>
			All Right Reserved <span style="color: brown">
			
			</span>
			<p></p>
			<span
				style="color: #006400">This website is made by Akhil and Anshul</span>
       </footer>
	</div>
</body>
</html>