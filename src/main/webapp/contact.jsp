<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ContactUs</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="icon" href="/librarymanagementproject/images/liba.png">
<style>
input[type="text"],[type="password"]{
height:40px;
}
textarea{
height:130px;
}
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
strong{
text-shadow:1px 1px red;
font-size:19px;
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
<div class="container col-md-4 cc" style="position:absolute;left:7%;top:18%;background-color:rgba(0,0,0,0.3);"><br>

<h2 class="text-light mx-5  text-uppercase  ">&nbsp;&nbsp;<b><i class="bi bi-envelope-fill"></i> Contact Us</b></h2>
<br>
<form method="POST" action="feedback">


<strong class="text-light mx-4" ><i class="bi-envelope"></i> EMAIL</strong><br>
<input type="text" name="email" required  class="mx-2 h-90 w-75 mb-2" placeholder="Enter Your Email" ><br><br>
<strong class="text-light mx-4" ><i class="bi bi-pen"></i> DESCRIPTION</strong> <br>

<textarea name="feedback" required id="pw"  class="mx-2 h-70 w-75 mb-2" placeholder="Type your query here.."></textarea><br><br>


<input type="submit" value="SEND" class="btn btn-light text-dark btn-md mx-2 " style="width:35%;letter-spacing:2px;"><br><br>

</form>
</div>


<%String fdmsg=(String) request.getAttribute("fdmsg");
if(fdmsg!=null){
%>
<script> alert('<%=fdmsg%>')</script>
<%} %>
</body>
</html>