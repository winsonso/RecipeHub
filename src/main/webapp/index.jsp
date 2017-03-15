<%-- 
    Document   : index.jsp
    Created on : Mar 10, 2017, 6:32:17 PM
    Author     : JL5372
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"> <!--Tish's comment to try pushing to repository-->
<head>
 <title>RecipeHub - Recipe Search and Bookmarks</title>
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default">
 <div class="container-fluid">
   <div class="navbar-header">
     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
       <span class="icon-bar"></span>
       <span class="icon-bar"></span>
       <span class="icon-bar"></span>
       <!--test2-->
     </button>
   </div>
   <div class="collapse navbar-collapse" id="myNavbar">
     <ul class="nav navbar-nav">
     <li class="navbar-brand">RecipeHub</li>
       <li class="active"><a href="#">Home</a></li>
       <li><a href="#">Recipe Search</a></li>
       <li><a href="#">Bookmarks</a></li>
     </ul>
     <ul class="nav navbar-nav navbar-right">
       <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
       <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
       <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
     </ul>
   </div>
 </div>
</nav>
</body>
</html>