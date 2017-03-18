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
        <br />
        <div class="container-fluid">
            <form class="form-horizontal">
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-4">
                        <label for="keywords">Recipe Search Keywords: </label>
                        <input id="keywords" type="text" class="form-control" placeholder="Enter Keywords">
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-4">
                        <button type="button" class="btn btn-default">Search</button>
                    </div>
                </div>
            </form>
            <hr />
            <h1 align="center">Search Results</h1>
            <br />
            <table class="table table-striped">
                <tr>
                    <th>Add Recipe Card?</th>
                    <th>Recipe Name</th>
                    <th>Ingredients</th>
                    <th>Image of Recipe</th>
                </tr>
                <tr>
                    <td>
                        <div class="checkbox">
                            <label for="recipecard">
                                <input id="recipecard" type="checkbox" title="Recipe Card">  Recipe Card
                            </label>
                        </div>
                    </td>
                    <td>My Recipe Name</td>
                    <td>list of recipe Ingredients</td>
                    <td>Image of the recipe</td>
                </tr>
                                <tr>
                    <td>
                        <div class="checkbox">
                            <label for="recipecard">
                                <input id="recipecard" type="checkbox" title="Recipe Card">  Recipe Card
                            </label>
                        </div>
                    </td>
                    <td>My Recipe Name</td>
                    <td>list of recipe Ingredients</td>
                    <td>Image of the recipe</td>
                </tr>
                                </tr>
                                <tr>
                    <td>
                        <div class="checkbox">
                            <label for="recipecard">
                                <input id="recipecard" type="checkbox" title="Recipe Card">  Recipe Card
                            </label>
                        </div>
                    </td>
                    <td>My Recipe Name</td>
                    <td>list of recipe Ingredients</td>
                    <td>Image of the recipe</td>
                </tr>
            </table>
      </div>
        <%@ include file="includes/footer.inc" %>
    </body>
</html>
