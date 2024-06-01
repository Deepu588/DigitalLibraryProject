<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminDashboard</title>

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

	</style>	

</head>
<body>
<%String i=(String) request.getAttribute("userDetails");
if(i!=null){
%>
<script> alert('<%=i%>')</script>
<%} %>




<nav class="navbar navbar-expand-lg text-light nav-light bg-dark">
    <a class="navbar-brand text-light" href="#">
        <img src="/librarymanagementproject/images/liba.png" width="30" height="30" class="d-inline-block align-top" alt="">
        Digital Library Admin Dashboard
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
              <li class="nav-item">
                <a class="nav-link" href="getfeedback"><i class="bi bi-list"></i> View Feedback</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="viewfbook"><i class="bi bi-eye"></i> View FreeBook</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="viewusers"><i class="bi bi-eye"></i> View Users</a>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="addFreeBookPage"><i class="bi bi-plus"></i> Add FreeBook</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="logout"><i class="bi bi-box-arrow-right"></i> Logout</a>
            </li>
        </ul>
    </div>
</nav>


</body>
</html>