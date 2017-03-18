<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>RecipeHub - Recipe Details</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@ include file="includes/navbar.inc" %>
        <br />
        <div class="container-fluid">
            <div class="well well-sm col-md-8 col-md-offset-2"><h3 align="center">Recipe Name</h3></div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <h3>Servings: 6</h3>
                    <h3>Cooking Time: 30min</h3>
                    <br />
                    <div class="well well-sm"><h4 align="center">Recipe Ingredients</h4></div>
                    <table class="table table-striped">
                        <tr>
                            <th>Items</th>
                            <th>Ingredients</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Ingredient 1</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Ingredient 2</td>
                        </tr>            
                        <tr>
                            <td>3</td>
                            <td>Ingredient 3</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Ingredient 4</td>
                        </tr>                
                        <tr>
                            <td>5</td>
                            <td>Ingredient 5</td>
                        </tr>       
                    </table>
                </div>
                <div class="col-md-6">
                    <div class="jumbotron">
                    This is where an image of the recipe will show
                    </div>
                    
                </div>
            </div>
            
      </div>
        <%@ include file="includes/footer.inc" %>
    </body>
</html>