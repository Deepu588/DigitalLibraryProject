<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <%@ page import="edu.per.librarymanagement.Entity.FreeBook" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Free Books</title>
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
table,h3{
background-color:rgba(0,0,0,0.5);
}

td,td a{
font-weight:bold;
}
th{
font-size:22px;
}
 </style>
</head>
<body>


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
                <a class="nav-link" href="getfeedback"><i class="bi bi-list"></i> Feedback</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="viewfbook"><i class="bi bi-eye"></i> View FreeBook</a>
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



<br><br><br>
 <%
        List<FreeBook> listOfFreeBooks = (List<FreeBook>) request.getAttribute("listOfFreeBooks");
        if (listOfFreeBooks == null || listOfFreeBooks.isEmpty()) {
    %>
        <h3 class="display-1 text-center text-light my-5"> FREE BOOKS NOT FOUND!!!</h3>
    <%
        } else {
        	int c=0;
    %>
    
       <table class="table table-bordered  border border-light ">
            <thead>
            <tr><td colspan="8" class="text-lg text-center text-light display-6">ALL FREE BOOKS <i class="bi bi-book"></i></td></tr></thead>
                           <tbody>
                <tr class="text-center text-light text-lg">
                    <th>SNO</th>
                    <th>Book Name</th>
                    <th>Author Name</th>
                    <th>Publish Date</th>
                    <th>Book Type</th>
                    <th>Book Link</th>
                    <th colspan="2">Action</th>
                    <!--  <th>Delete</th>-->
                </tr>
            
                <%
                    for (FreeBook book : listOfFreeBooks) {
                    c++;	
                %>
                    <tr class="text-center text-light text-md">
                        <td><%= c %></td>
                        <td><%= book.getBookName() %></td>
                        <td><%= book.getAuthorName() %></td>
                        <td><%= book.getpDate() %></td>
                        <td><%= book.getBookType() %></td>
                        <td><a href="<%= book.getBookLink() %>" target="_blank" class="btn btn-info text-light"><i class="bi bi-eye"></i> View</a></td>
                        <td><form method="post" action="updateFbook"><input type="hidden" name="bookid" value=<%=book.getBookId() %>><button class="btn btn-primary" type="submit"><i class="bi bi-pencil"></i> Update</button></form></td>
                        <td><form method="post" action="deleteFbook"><input type="hidden" name="bookid" value=<%=book.getBookId() %>><button class="btn btn-danger"  type="submit"><i class="bi bi-trash"></i> Delete</button></form></td>
                    </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    
    <%
        }
    %>

<%String i=(String) request.getAttribute("dm");
if(i!=null){
%>
<script> alert('<%=i%>')</script>
<%} %>


<%String um=(String) request.getAttribute("um");
if(um!=null){
%>
<script> alert('<%=um%>')</script>
<%} %>
<br>
<center><a href="adminhome" class="btn btn-dark text-center  btn-lg text-light border border-light"><b>Back To Home</b> <i class="bi bi-house"></i></a></center>
<br>
<br>
</body>
</html>