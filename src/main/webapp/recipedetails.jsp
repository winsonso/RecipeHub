<%-- 
    Document   : recipedetails
    Created on : Mar 18, 2017, 3:40:53 PM
    Author     : winsonso
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <title>RecipeHub - Recipe Details Page</title>
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
            <div class="well well-sm col-md-8 col-md-offset-2"><h3 align="center">${mappy['recipeName']}</h3></div>
            <br />
            <div class="row">
                <div class="col-md-4 col-md-offset-2">
                    <h3>Rating: 
                        <c:forEach begin="1" end="${mappy['rating']}" var="i">
                            <div class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-thumbs-up"></span></div>
                        </c:forEach>
                    </h3>
                    <h3>Cooking Time: <fmt:formatNumber value="${mappy['totalTimeInSeconds']/60}" minFractionDigits="0" maxFractionDigits="0"/> minutes</h3>
                    <h3>Type: ${mappy['attributes']['course'][0]}</h3>
                    <a class="btn btn-default" href="addbookmark?id=${mappy['id']}&keywords=${keywords}"><label>Add Bookmark</label></a>
                    <a class="btn btn-default" href="${sourcepageurl}" target='new'><label>Full Recipe Directions</label></a>
                </div>
                <div class="col-md-6">
                    <div style="text-align: -webkit-center;">
                    <img src="${fn:replace(mappy['smallImageUrls'][0],'=s90','=s300')}" />
                    </div>
                </div>   
            </div>
            <br /> 
            <div class="row">
                <div class="col-md-6">
                    <div class="well well-sm"><h4 align="center">Recipe Ingredients</h4></div>
                    <table class="table table-striped">  
                        <tr>
                            <th>Items</th>
                            <th>Ingredients</th>
                        </tr>
                    <c:forEach items="${mappy['ingredients']}" var="ingredients" varStatus="loop">  
                        <tr>
                            <td>${loop.index + 1}</td>
                            <td>${ingredients}</td>
                        </tr>
                    </c:forEach>
                    </table>
                </div>
                <div class="col-md-6">
                    <div class="well well-sm">
                    <h4 align="center">Flavors</h4>
                <c:choose>
                    <c:when test="${mappy['flavors'] != null}">
                        <ul>
                        <c:forEach var="flavor" items="${mappy['flavors']}" varStatus="status">
                            <li><span>${flavor.key}</span>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-${_class[status.index]} progress-bar-striped" style="width:${flavor.value *100}%">
                                        <span style="color:black;"> <fmt:formatNumber value="${flavor.value *100}" minFractionDigits="0" maxFractionDigits="1"/>% (${flavor.key})</span>
                                    </div>
                                </div>
                            </li>        
                        </c:forEach>
                        </ul>    
                    </c:when>
                    <c:otherwise>
                        <h4 style='text-align: center; color: red'>No flavors defined for this recipe.</h4>
                    </c:otherwise>
                </c:choose>
                    </div>
                </div>   
            </div>            
      </div>
        <%@ include file="includes/footer.inc" %>
    </body>
</html>
