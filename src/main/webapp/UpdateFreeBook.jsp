<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="edu.per.librarymanagement.Entity.FreeBook" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update FreeBook</title>
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
.k{
position:absolute;
top:10%;
left:8%;
background-color:rgba(0,0,0,0.2);
}
strong{
text-shadow:1px 1px red;
font-size:19px;
letter-spacing:1px;
}
input[type="text"],[type="date"],.x{
height:40px;
}
textarea{
height:65px;
}
	</style>	


</head>
<body>


<%FreeBook i=(FreeBook) request.getAttribute("bookDetails");
%>
 
 
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
          <!--    <li class="nav-item">
                <a class="nav-link" href="#about"><i class="bi bi-info-circle"></i> About</a>
            </li>-->
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
 
 <!--  <%=i %>-->
 
 
 
 
<div class="container col-md-4 mx-5 my-3 k p-3" >

<h2 class="text-light mx-2  text-uppercase "><i class="bi bi-plus"></i> <b>UPDATE FREE BOOK</b></h2>
<br>
<form method="post" action="ViewFreeBook">
<input type="hidden" name="bookId" value=<%=i.getBookId() %>>
<strong class="text-light mx-5" ><i class=" bi bi-book"></i> BOOK NAME</strong><br>
<input type="text" name="bookName" required class="mx-2 h-40 w-75 mb-2 " placeholder="Update Book Name" value="<%=i.getBookName() %>"><br>
<strong class="text-light mx-5" ><i class="bi bi-file-earmark-person"></i> AUTHOR NAME</strong><br>
<input type="text" name="authorName" required class="mx-2 h-40 w-75 mb-2" placeholder="Update Author Name" value="<%=i.getAuthorName() %>"><br>
<strong class="text-light mx-5" ><i class="bi bi-calendar2"></i> PUBLISHED DATE</strong><br>
<input type="date" name="pDate" required class="mx-2 h-40 w-75 mb-2" placeholder="Update Published Date" value=<%=i.getpDate() %>><br>
<strong class="text-light mx-5" ><i class="bi bi-list"></i> BOOK GENRE</strong><br>
<input list="bookType" name="bookType" required  class="mx-2 h-40 w-75 mb-2 x" placeholder="Update Book Genre" value="<%=i.getBookType() %>">
<datalist id="bookType">
     <option value="Fiction">
        <option value="Non-Fiction">
        <option value="Fantasy">
        <option value="Mystery">
        <option value="Thriller">
        <option value="Romance">
        <option value="Horror">
        <option value="Biography">
        <option value="Autobiography">
        <option value="Journals">
        <option value="occult">
        <option value="Poetry">
        <option value="Plays">
        <option value="Funny">
        <option value="Travel Guides">
        <option value="IT">
        <option value="Children's Books">

</datalist>

<br>
<strong class="text-light mx-5" ><i class="bi bi-link-45deg"></i> BOOK LINK</strong><br>
<textarea name="bookLink" required  class="mx-2 h-40 w-75 mb-2" placeholder="Paste Book Link"  ><%=i.getBookLink() %></textarea><br>
<br><!--  
<a href="Updatebook" class="btn btn-link text-light">UPDATE</a>-->
<input type="submit" value="UPDATE" class="btn btn-light  btn-md mx-2 " style="width:35%;letter-spacing:2px;"><br>
</form></div>

 
 <%String k=(String) request.getAttribute("errorMessage");
if(k!=null){
%>
<script> alert('<%=k%>')</script>
<%} %>
 

</body>
</html>