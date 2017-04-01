<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>RecipeHub - Shopping List</title>
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
            <div class="well well-sm col-md-8 col-md-offset-2"><h3 align="center">${param.recipename} - Shopping List</h3></div>
            <br />
            <div class="col-md-8 col-md-offset-2">
                <table class="table table-striped">
                    <tr>
                        <th>Items</th>
                        <th>Ingredients</th>
                    </tr>
                    

                    <c:forEach items="${param.ingredients}" var="ingredient" varStatus="loop" >
                        <tr>
                            <td>${loop.index +1}</td>
                            <td>${ingredient}</td>
                        </tr>
                    </c:forEach>
                </table>
                 <a onclick="window.print();" class="btn btn-success btn-lg">
                    <span class="glyphicon glyphicon-print"></span> Print 
                 </a>
            </div>
      </div>
        <%@ include file="includes/footer.inc" %>
    </body>
</html>