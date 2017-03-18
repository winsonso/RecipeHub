<%-- 
    Document   : recipesearch
    Created on : Mar 17, 2017, 11:03:35 AM
    Author     : jl5372
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>RecipeHub - Search Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@ include file="includes/navbar.inc" %>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-4 col-sm-offset-4">Recipe Keyword: <input type="text"></div>
            </div>
            <div class="row">
                <div class="col-sm-4 col-sm-offset-4"><button>Search</button></div>
            </div>
      </div>
        <%@ include file="includes/footer.inc" %>
    </body>
</html>
