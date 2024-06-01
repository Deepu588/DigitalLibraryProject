<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="edu.per.librarymanagement.Entity.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In</title>
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

.cc{
position:absolute;
top:1%;
left:5%;
}
strong{
text-shadow:1px 1px red;
font-size:19px;
letter-spacing:1px;
}
li a{
text-color:white;
}

	</style>		
</head>
<body>

<nav class="navbar navbar-expand-lg text-light nav-light  bg-dark">
        <a class="navbar-brand text-light" href="#">
            <img src="/librarymanagementproject/images/liba.png" width="30" height="30" class="d-inline-block align-top" alt="">
            Digital Library
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#about">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#contact">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="signup">Sign Up</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="signin">Sign In</a>
                </li>
            </ul>
        </div>
    </nav>




<%String i=(String) request.getAttribute("info");
if(i!=null){
%>
<script> alert('<%=i%>')</script>
<%} %>


<%String f=(String) request.getAttribute("fm");
if(f!=null){
%>
<script> alert('<%=f%>')</script>
<%} %>


<%String fm=(String) request.getAttribute("password");
if(fm!=null){
%>
<script> alert('Your password is: <%=fm%>')
</script>
<%} %>


<div class="container col-md-4 cc" style="position:absolute;left:7%;top:18%;background-color:rgba(0,0,0,0.2);"><br>

<h2 class="text-light mx-5  text-uppercase  ">&nbsp;&nbsp;<b><i class="bi-person-check"></i>User Login</b></h2>
<br>
<form method="POST" action="checkUser">


<strong class="text-light mx-4" ><i class="bi-envelope"></i> EMAIL</strong><br>
<input type="text" name="email" required  class="mx-2 h-90 w-75 mb-2" placeholder="Enter Your Email"><br><br>
<strong class="text-light mx-4" ><i class="bi-shield"></i> PASSWORD</strong> &nbsp;&nbsp;<a class=" text-light " href="fpwd"><b class="text-sm">ForgotPassword?</b></a><br>
<input type="password" name="password" required id="pw"  class="mx-2 h-70 w-75 mb-2" placeholder="Enter password" value=""><br><br>
<h6 class="text-light mx-4">Don't have an Account?<a href="signup" class="text text-light"> Create Now</a></h6>

<br>

<input type="submit" value="LOGIN" class="btn btn-light text-dark btn-md mx-2 " style="width:35%;letter-spacing:2px;"><br><br>
</form>
</div>


<%
String m=(String)request.getAttribute("msg");
if(m!=null){
%>
<script>alert('<%=m%>')</script><%} %>










<div class="container col-md-4 " style="position:absolute;right:7%;top:20%;background-color:rgba(0,0,0,0.2);"><br>

<h2 class="text-light mx-5  text-uppercase  ">&nbsp;&nbsp;<b><i class="bi-shield"></i>Admin Login</b></h2>
<br>
<form method="POST" action="checkAdmin">


<strong class="text-light mx-4" ><i class="bi-envelope"></i> EMAIL</strong><br>
<input type="text" name="emailid" required  class="mx-2 h-90 w-75 mb-2" placeholder="Enter Your Email"><br><br>
<strong class="text-light mx-4" ><i class="bi-shield"></i> PASSWORD</strong> <br>
<input type="password" name="pass" required id="pw"  class="mx-2 h-70 w-75 mb-2" placeholder="Enter password" value=""><br><br>



<input type="submit" value="LOGIN" class="btn btn-light text-dark btn-md mx-2 " style="width:35%;letter-spacing:2px;"><br><br>
</form>
</div>







</body>
</html>