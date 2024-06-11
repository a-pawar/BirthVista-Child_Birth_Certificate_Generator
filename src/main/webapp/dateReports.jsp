<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Birth Certificate - Date Reports</title>
</head>
<%@include file="allComponent/admin_base.jsp" %>
<%@include file="allComponent/allCss.jsp" %>
<body>


<div class="container mt-5">
	<div class="card shadow">
		<div class="card-body">
			<h2 class="text-danger mt-2" style="border-bottom: 2px solid orange">Date Report</h2>

			<div class="container-fluid mt-5">

                   <form action="dateReportDtls.jsp" method="post">
                        
					    <div class="form-row">
						  <div class="col-sm-12">
							<div class="form-group">
								<label>From Date</label>
                                <input type="date" name="fromdate" class="form-control" required>
							</div>
						  </div>

                          <div class="col-sm-12">
							<div class="form-group">
								<label>To Date</label>
                                <input type="date" name="todate" class="form-control" required>
							</div>
						  </div>
                        </div>
					    <hr>
					    <input type="submit" value="Submit" class="btn btn-primary">
				     </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>