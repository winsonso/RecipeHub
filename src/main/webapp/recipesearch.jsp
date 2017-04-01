<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.net.*" %>
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
        <%@ include file="includes/logout.js"%>
        <br />
        <div class="container-fluid">
            <form class="form-horizontal" method="post" action="recipesearch">
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-4">
                        <label for="keywords">Recipe Search Keywords: </label>
                        <input id="keywords" name="keywords" type="text" class="form-control" placeholder="Enter Keywords" value="${lastkeywords}">
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-4">
                        <button type="submit" class="btn btn-default">Search</button>
                    </div>
                </div>
            </form>
            <hr />
            <c:choose>
                <c:when test="${recipelist==null}">
                    <c:set value="display: none;" var="cssStyle"></c:set>
                </c:when>
                <c:otherwise>
                    <c:set value="display: inline;" var="cssStyle"></c:set>
                </c:otherwise>
            </c:choose>
            <div id="search" style="${cssStyle}">
                <h1 align="center">Search Results</h1>
                <br />
                <table class="table table-striped">
                    <tr>
                        <th>Add Bookmark?</th>
                        <th>Recipe Name</th>
                        <th>Ingredients</th>
                        <th>Image of Recipe</th>
                    </tr>
                    <c:forEach items="${recipelist}" var="recipe">
                        <tr>
                            <td>
                                <div>
                                    <a class="btn btn-default" href="addbookmark?id=${recipe.id}"><label>Add</label></a>
                                </div>
                            </td>
                            <td>
                                <div>
                                    <a href="recipedetailpage?id=${recipe.id}"><label>${recipe.recipeName}</label></a>
                                </div>
                            </td>
                            <td>
                                <div>
                                    <ul>
                                    <c:forEach items="${recipe.ingredients}" var="ingredients">
                                        <li>${ingredients}</li>
                                    </c:forEach>
                                    </ul>
                                </div>
                            </td>
                            <td>
                                <div>
                                    <img src="${recipe.smallImageUrls[0]}" />
                                </div>
                            </td>                        
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    

        <%@ include file="includes/footer.inc" %>
    </body>
</html>
