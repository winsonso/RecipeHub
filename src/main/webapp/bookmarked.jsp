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
    <%@ include file="includes/navbar.inc" %>
        
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
    
    <%@ include file="includes/footer.inc" %>   
    </body>
</html>
