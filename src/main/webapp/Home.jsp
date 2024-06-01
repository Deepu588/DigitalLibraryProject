<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="edu.per.librarymanagement.Entity.User" %>
        <%@ page import="edu.per.librarymanagement.Entity.FreeBook" %>
    <%@ page import="java.util.List" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HomePage</title>

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
                <a class="nav-link" href="logout"><i class="bi bi-box-arrow-right"></i> Logout</a>
            </li>
        </ul>
    </div><%

User u=(User)session.getAttribute("userInfo");
if(u!=null){
%>
    <span class="navbar-text text-light text-md" ><i class="bi bi-person"></i>welcome <%=u.getUserName() %> !! <%} %></span>
</nav>



<%String i=(String) request.getAttribute("userDetails");
if(i!=null){
%>
<script> alert('<%=i%>')</script>
<%} %>

<h4 class=" text-light text-center display-6" style="background-color:rgba(0,0,0,0.3);"><u> Books For Free</u></h4>
<div class="container d-flex flex-wrap mx-5">
    <%
        List<FreeBook> listOfFreeBooks = (List<FreeBook>) request.getAttribute("listOfFreeBooks");
        if (listOfFreeBooks == null || listOfFreeBooks.isEmpty()) {
    %>
    <h3 class="display-1 text-center text-light my-5"> FREE BOOKS NOT FOUND!!!</h3>
    <%
        } else {
            for (FreeBook f : listOfFreeBooks) {
    %>
        <div class="col-md-4">
    
    <div class="card mb-3 mx-5 my-5 text-light border border-light" style="width:330px;background-color:rgba(0,0,0,0.6);">
        <div class="card-header border border-secondary lead">
           <i class="bi bi-book "></i> <%= f.getBookName() %>
        </div>
        <div class="card-body">
            <h5 class="card-title text-capitalize"><i class="bi bi-person-fill "></i> <%= f.getAuthorName() %></h5>
            <p class="card-text "><i class="bi bi-calendar "></i> <i>Published Date: <%= f.getpDate() %></i></p>
            <p class="card-text"><i class="bi bi-list "></i>Book Type: <%= f.getBookType() %></p>
            <center><a href="<%= f.getBookLink() %>" class="btn btn-outline-light btn-md w-35" target="_blank"><i class="bi bi-eye "></i> View</a></center>
        </div>
    </div></div>
    <%
            }
        }
    %>
</div>

<br><!--  <a href="logout">Logout</a>-->
</body>
</html>