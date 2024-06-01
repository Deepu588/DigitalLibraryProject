<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About </title>

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
div p{

font-size:19px;
text-shadow:1px 1px black;
word-spacing:2px;
letter-spacing:1px;
font-weight:bold;
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


<div class="col-md-8  text-light p-3"   style="background-image:linear-gradient(to top left,rgba(0,0,0,0.7),rgba(0,0,0,0.6),rgba(0,0,0,0.7),rgba(0,0,0,0.6),rgba(0,0,0,0.5),rgba(0,0,0,0.6));position:absolute;left:15%;top:20%;border-bottom-style:solid;border-right-style:solid;border-color:white;">
<h4 class="display-5  mx-3">About Digital Library</h4>
<p class="mx-3">
Welcome to Digital Library, your ultimate destination for accessing a wide range of digital books and resources. At Digital Library, our mission is simple: to make reading and learning accessible to everyone, no matter where they are. With our user-friendly platform, you can explore a diverse collection of books across various genres, ensuring there's something for every reader.

Our team, led by Deepak, is dedicated to curating and maintaining a high-quality library that caters to the interests and needs of our users. We work closely with authors, publishers, and content creators to ensure that our collection remains relevant and up-to-date. Whether you're a student, a professional, or a passionate reader, you'll find a wealth of knowledge and entertainment at Digital Library.

With just a few clicks, you can browse through our extensive catalog, discover new titles, and dive into the contents of each book. And when you find something you love, downloading it for offline reading is quick and easy. Join us at Digital Library and embark on a literary journey filled with discovery, inspiration, and learning. <br>
</p>


</div>

<br><br>




</body>
</html>