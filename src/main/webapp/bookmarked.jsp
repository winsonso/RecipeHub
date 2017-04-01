<%-- 
    Document   : bookmarked.jsp
    Created on : Mar 15, 2017, 5:36:49 PM
    Author     : Tish
--%>
<jsp:include page="/getbookmarks" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
    <%@ include file="includes/logout.js"%>
        
        <div class="container">
            <h2>Bookmarked Recipes</h2>         
            <table class="table table-bordered">
                <tr>
                  <th>Bookmark</th>
                  <th>Name</th>
                  <th>Ingredients</th>
                  <th>Image</th>
                  <th>+ Shopping List</th>
                </tr>
                <c:forEach items="${bookmarks}" var="recipe">
                    <tr>
                      <td><a class="btn btn-danger" href="deletebookmark?id=${recipe[0]}"><label>Delete</label></a></td>
                      <td><a href="recipedetailpage?id=${recipe[1]}&keywords=${recipe[6]}"><label>${recipe[2]}</label></a></td>
                      <td>
                            <ul>
                                <c:forEach items="${recipe[3]}" var="ingredients">
                                    <li>${ingredients}</li>
                                </c:forEach>
                            </ul>
                      </td>
                      <td>
                            <c:set var="image_url" value="${recipe[4]}"/>
                            <img src="${fn:replace(image_url,'=s90', '=s180')}" />
                      </td>
                      <td><a class="btn btn-primary" href="shoppinglist.jsp?id=${recipe[0]}&recipename=${recipe[2]}&ingredients=${recipe[3]}"><label>Create Shopping List</label></a></td>
                    </tr>
                </c:forEach>  
                <tr>
                </tr>
                <tr>
                </tr>
            </table>
          </div>
    
    <%@ include file="includes/footer.inc" %>   
    </body>
</html>
