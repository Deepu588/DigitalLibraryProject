<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="edu.per.librarymanagement.Entity.ContactUs" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback</title>
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


<br>

<%
        List<ContactUs> l = (List) request.getAttribute("feedback");
System.out.println(l);
        if (l == null || l.isEmpty()) {
    %>
        <h3 class="display-1 text-center text-light my-5"> No Complaints or Queries From anyone</h3>
    <%
        } else {
        	int c=0;
    %>
    
       <table class="table table-bordered  border border-light my-5">
            <thead>
            <tr><td colspan="5" class="text-lg text-center text-light display-6">VIEW FEEDBACK </td></tr></thead>
                           <tbody>
                <tr class="text-center text-light text-lg">
                    <th>SNO</th>
                    <th>Email Id</th>
                    <th>Feedback</th>

                    <th colspan="2">Action</th>
                    <!--  <th>Delete</th>-->
                </tr>
            
                <%
                    for (ContactUs f :l) {
                    c++;	
                %>
                    <tr class="text-center text-light text-md">
                        <td><%= c %></td>
                        <td><%= f.getEmailid()%></td>
                        <td><%= f.getDescription() %></td>
                        <td><a href="mailto:<%=f.getEmailid() %>" target="_blank" class="btn btn-success text-light">Reply</a></td>
                        <td><form method="post" action="deleteFeedback"><input type="hidden" name="sno" value=<%=f.getSno() %>><button class="btn btn-danger"  type="submit"><i class="bi bi-trash"></i>Delete</button></form></td>
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


</body>
</html>