<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.*"%>

<div class="container-fluid mr-5"
	style="height: 15px; background-color: #303f9f"></div>
<div class=container-fluidp-3p-3bg-light">
	<div class="row">
		<div class="col-md-5 text-info">
			<h3>
				<img src="images/child.png" width="40" height="40" >   BirthVista
			</h3>
		</div>

	</div>
</div>


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="#"></a>
	<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto justify-content-center">
			<li class="nav-item"><a class="nav-link active"
				aria-current="page" href="admin_home.jsp"><i class="fas fa-home"></i> Home</a></li>
		</ul>
		
		<ul class="navbar-nav ml-auto justify-content-center">
			<li class="nav-item"><a class="nav-link active"
				aria-current="page" href="view_User.jsp"><i class="fas fa-eye"></i> View User</a></li>

			<li class="nav-item dropdown active"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"><i class="fas fa-book"></i> Birth Application</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="new_Application.jsp">New Application</a>
					<a class="dropdown-item" href="verify_Application.jsp">Verified Application</a>
					<a class="dropdown-item" href="reject_Application.jsp">Reject Application</a>
					<a class="dropdown-item" href="all_Application.jsp">All Application</a>
				</div>
			</li>

			<li class="nav-item"><a class="nav-link active"
				aria-current="page" href="dateReports.jsp"><i class="fas fa-eye"></i> Dates Report</a></li>
			
			<li class="nav-item"><a class="nav-link active"
				href="adminChangePassword.jsp"><i class="fas fa-key"></i> Change Password</a></li>

			<li class="nav-item"><a class="nav-link active" href="logout.jsp"><i
					class="fas fa-power-off"></i> Logout</a></li>
			
			<div class="dropdown">
				<button class="btn btn-primary dropdown-toggle" type="button"
					id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">Welcome Admin</button>
				
			</div>
		</ul>
	</div>
</nav>