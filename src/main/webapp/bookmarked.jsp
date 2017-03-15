<%-- 
    Document   : bookmarked.jsp
    Created on : Mar 15, 2017, 5:36:49 PM
    Author     : Tish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>RecipeHub - Bookmarked Recipes</title>
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
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="navbar-brand">RecipeHub</li>
                        <li><a href="index.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-search"></span> Recipe Search</a></li>
                        <li class="active"><a href="bookmarked.jsp"><span class="glyphicon glyphicon-bookmark"></span> Bookmarks</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span>Username</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="container">
            <h2>Bookmarked Recipes</h2>         
            <table class="table table-bordered">
              <thead>
                <tr>
                  <th>Bookmark</th>
                  <th>Name</th>
                  <th>Ingredients</th>
                  <th>Image</th>
                  <th>+ Shopping List
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><label><input type="checkbox" value="bookmark" name="bookmark" ></label></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td><button type="button" class="btn btn-primary btn-sm btn-block">Add to Shopping List</button></td>
                </tr>
                <tr>
                </tr>
                <tr>
                </tr>
              </tbody>
            </table>
          </div>
    </body>
</html>
