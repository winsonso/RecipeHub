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
                        <li id="/main.jsp"><a href="main.jsp">Home</a></li>
                        <li id="/recipesearch.jsp"><a href="recipesearch.jsp">Recipe Search</a></li>
                        <li id="/bookmarked.jsp"><a href="bookmarked.jsp">Bookmarks</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;<c:out value="${sessionScope.username}"/></a></li>
                        <li><a id="logoutbutton" href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
