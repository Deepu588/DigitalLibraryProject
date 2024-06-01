
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="icon" href="/librarymanagementproject/images/liba.png">

<style>
input[type="text"],[type="password"]{
height:40px;
}

body
        {
        background-image: url('/librarymanagementproject/images/lbg2.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            background-size:cover;
        }

div{
position:absolute;
top:0%;
left:5%;
background-color:rgba(0,0,0,0.2);
}
strong{
text-shadow:1px 1px red;
font-size:19px;
letter-spacing:1px;
}

	</style>		



</head>
<body>
<%String i=(String) request.getAttribute("inf");
if(i!=null){
%>
<script> alert('<%=i%>')</script>
<%} %>

<%String ne=(String) request.getAttribute("noEmail");
if(ne!=null){
%>
<script> alert('<%=ne%>')</script>
<%} %>
<div class="container col-md-4 mx-5 my-3" >

<h2 class="text-light mx-5  text-uppercase ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>REGISTER</b></h2>

<form method="POST" action="addUser">
<strong class="text-light mx-5" ><i class="bi-person"></i> NAME</strong><br>
<input type="text" name="userName" required class="mx-2 h-40 w-75 mb-2 " placeholder="Enter Your Name"><br>
<strong class="text-light mx-5" ><i class="bi-calendar-minus"></i> AGE</strong><br>
<input type="text" name="age" required class="mx-2 h-40 w-75 mb-2" placeholder="Age should be in numericals"><br>
<strong class="text-light mx-5" ><i class="bi-phone"></i> CONTACT NO</strong><br>
<input type="text" name="contactno" required class="mx-2 h-40 w-75 mb-2" placeholder="Mobileno should contain 10 digits"><br>
<strong class="text-light mx-5" ><i class="bi-geo-alt"></i> CITY</strong><br>
<input type="text" name="city"required  class="mx-2 h-40 w-75 mb-2" placeholder="Enter Your City"><br>
<strong class="text-light mx-5" ><i class="bi-envelope"></i> EMAIL</strong><br>
<input type="text" name="email" required  class="mx-2 h-40 w-75 mb-2" placeholder="For eg :john@gmail.com"><br>
<strong class="text-light mx-5" ><i class="bi-shield"></i> PASSWORD</strong><br>
<input type="password" name="password" required  class="mx-2 h-40 w-75 mb-2" placeholder="Password should contain atleast 5 characters"><br>

<strong class="text-light mx-5" ><i class="bi-shield-exclamation"></i> CONFIRM PASSWORD</strong><br>
<input type="password" name="cpassword" required  class="mx-2 h-40 w-75 mb-2" placeholder="Confirm your password"><br>

<h6 class="text-light mx-5">Already a member?<a href="signin" class="text text-light"> Login here</a></h6>

<input type="submit" value="REGISTER" class="btn btn-light  btn-md mx-2 " style="width:35%;letter-spacing:2px;"><br>
</form>
</div>


</body>
</html>