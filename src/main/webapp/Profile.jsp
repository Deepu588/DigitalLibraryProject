<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ page import="edu.per.librarymanagement.Entity.User" %>
                <%@ page import="edu.per.librarymanagement.Entity.UserDaoImpl" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Profile</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="icon" href="/librarymanagementproject/images/liba.png">
<style>
body
        {
        background-image: url('/librarymanagementproject/images/lbg2.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            background-size:cover;
        }
li a{
text-color:white;
}
td,th{
font-size:24px;
font-weight:bold;
}
input[type="text"],[type="password"]{
height:39px;
}
strong{
text-shadow:1px 1px red;
font-size:16px;
letter-spacing:1px;
}
	</style>		


</head>
<body>


<nav class="navbar navbar-expand-lg text-light nav-light bg-dark">
    <a class="navbar-brand text-light" href="#">
        <img src="/librarymanagementproject/images/liba.png" width="30" height="30" class="d-inline-block align-top" alt="">
        Digital Library
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="about"><i class="bi bi-info-circle"></i> About</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="contact"><i class="bi bi-envelope"></i> Contact Us</a>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="profile"><i class="bi bi-gear"></i> Profile Settings</a>
            </li>
            <li class="nav-item">
               <a   class="nav-link" href="home"><i class="bi bi-house"></i> Home</a>
            </li>
        </ul>
    </div>
    <span class="navbar-link " >                <a class="nav-link" href="logout"><i class="bi bi-box-arrow-right"></i> Logout</a>
    
    </span>
</nav>
    
  
    <%

   
    User u = (User) request.getAttribute("user");
    // Use the user object here
    
%>
 
 
 
 
 <div class="col-md-6  border border-light p-1"  id="profileDiv"  style="position:absolute;left:11%;top:21%;background-color:rgba(0,0,0,0.4);opacity:0.9;">
  
 
 <table class="table table-borderless table-hover">
 <tr><th colspan="2" class="text-center text-lg text-light">My Profile</th></tr>
 <tr><td class="text-light text-center">Username</td><td class="text-light text-center"><%=u.getUserName() %></td></tr>
   <tr><td class="text-light text-center">Age</td><td class="text-light text-center"><%=u.getAge() %></td></tr>
 
  <tr><td class="text-light text-center">Email</td><td class="text-light text-center"><%=u.getEmail() %></td></tr>
    <tr><td class="text-light text-center">Password</td><td class="text-light text-center"><%=u.getPassword() %></td></tr>
  
  <tr><td class="text-light text-center">Contactno</td><td class="text-light text-center"><%=u.getContactno() %></td></tr>
  <tr><td class="text-light text-center">City</td><td class="text-light text-center"><%=u.getCity() %></td></tr>
 <tr><td colspan="2" align="center"><input type="submit" id="updateButton" value="EDIT INFO" class="btn btn-light text-dark btn-md  w-50"></td></tr>
 </table>
 
 
 </div>
 
 <div id="updateDiv" class="container col-md-4  my-5" style="position:absolute;background-color:rgba(0,0,0,0.3);top:10%;left:8%;opacity:0.9;display:none;">
    <!-- Content of the update div goes here
    <h4></h4>-->
    <h2 class="text-light mx-2  text-uppercase ">&nbsp;&nbsp;&nbsp;&nbsp; <b>UPDATE PROFILE</b></h2>
    
    <form method="POST" action="Profile">
    <input type="hidden" name="userId" value=<%=u.getUserId() %>>
<strong class="text-light mx-5" ><i class="bi-person"></i> NAME</strong><br>
<input type="text" name="userName" required class="mx-2 h-40 w-75 mb-2 " placeholder="Enter Your Name" value="<%=u.getUserName() %>"><br>
<strong class="text-light mx-5" ><i class="bi-calendar-minus"></i> AGE</strong><br>
<input type="text" name="age" required class="mx-2 h-40 w-75 mb-2" placeholder="Age should be in numericals" value="<%=u.getAge() %>"><br>
<strong class="text-light mx-5" ><i class="bi-phone"></i> CONTACT NO</strong><br>
<input type="text" name="contactno" required class="mx-2 h-40 w-75 mb-2" placeholder="Mobileno should contain 10 digits" value="<%=u.getContactno() %>"><br>
<strong class="text-light mx-5" ><i class="bi-geo-alt"></i> CITY</strong><br>
<input type="text" name="city"required  class="mx-2 h-40 w-75 mb-2" placeholder="Enter Your City"  value="<%=u.getCity() %>"><br>
<strong class="text-light mx-5" ><i class="bi-envelope"></i> EMAIL</strong><br>
<input type="text" name="email" required  class="mx-2 h-40 w-75 mb-2" placeholder="For eg :john@gmail.com" value="<%=u.getEmail() %>"><br>
<strong class="text-light mx-5" ><i class="bi-shield"></i> PASSWORD</strong><br>
<input type="password" name="password" required  class="mx-2 h-40 w-75 mb-2" placeholder="Password should contain atleast 5 characters" value="<%=u.getPassword() %>"><br>
   <br>
<input type="submit" value="UPDATE" class="btn btn-light  btn-md mx-2 " style="width:35%;letter-spacing:2px;"><br>
</form> 
</div>
 
 
 
 
 <script>
    document.getElementById('updateButton').addEventListener('click', function() {
        document.getElementById('profileDiv').style.display = 'none';
        document.getElementById('updateDiv').style.display = 'block';
    });
</script>
 
 
 
  <%String k=(String) request.getAttribute("pum");
if(k!=null){
%>
<script> alert('<%=k%>')</script>
<%} %>
 
</body>
</html>