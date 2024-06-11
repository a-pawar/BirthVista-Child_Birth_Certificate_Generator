<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Birth Certificate - Profile </title>
<%@include file="allComponent/allCss.jsp" %>
</head>
<body>
<%@include file="allComponent/navbar1.jsp" %>
  <br>
  
   <div class="container mt-5">
     <h2 class="text-center text-danger">PROFILE</h2>
     <hr>
     
     <DIV class="row">
       <div class="col-md-6">
        <b>Full Name : </b>

       </div>
       <div class="col-md-6" style="text-transform: capitalize">
           <%out.println(FirstName +" "+LastName); %>  
       </div> 
     </DIV>
     <hr>
     
     <DIV class="row">
       <div class="col-md-6">
        <b>Email ID : </b>
        
       </div>
       <div class="col-md-6" style="text-transform: capitalize">
               <%out.println(email); %> 
       </div> 
     </DIV>
     <hr>
     
     <DIV class="row">
       <div class="col-md-6">
        <b>Mobile Number : </b>
        
       </div>
       <div class="col-md-6" style="text-transform: capitalize">
              <%out.println(MobileNumber); %>
       </div> 
     </DIV>
     <hr>
     
     <DIV class="row">
       <div class="col-md-6">
        <b>Address : </b>
        
       </div>
       <div class="col-md-6" style="text-transform: capitalize">
              <%out.println(Address); %>
       </div> 
     </DIV>
     <hr>  
     
     <DIV class="row">
       <div class="col-md-6">
        <b>Registration Date : </b>
        
       </div>
       <div class="col-md-6" style="text-transform: capitalize">
              <%out.println(RegDate); %>
       </div> 
     </DIV>
     <hr>          
     <a href="editProfile.jsp?id=<%=session.getAttribute("userId")%>" class="btn btn-primary mt-5">Edit Profile</a>
   </div>

</body>
</html>