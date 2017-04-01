<%-- 
    Document   : RecipeHub
    Created on : Mar 11, 2017, 5:52:46 PM
    Author     : zaccianflone
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>RecipeHub Login</title>
        <%@ include file="includes/signup.js" %>
        <%@ include file="includes/validatelogin.js" %>
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
 
                     </ul>
                     <ul class="nav navbar-nav navbar-right">
                         <li><a href="#" data-toggle="modal" data-target="#SignUpModal"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
 
                     </ul>
                 </div>
             </div>
         </nav>
        <div id="form-messages"></div>



        <div class="container-fluid">

            <div id="login" class="tab-pane fade in active">

                <form class="form-horizontal" id="ajax-login" method="post" action="ValidateLogin">
                    <br>
                    <br>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-4">
                            <label for="username">Username: </label>
                            <input class='form-control' type="text" id="username" name="username" required>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-3 col-md-offset-4">
                            <label for="password">Password:</label>
                            <input class='form-control' type="password" id="password" name="password" required>
                        </div>
                    </div>    
                    <br>
                    <hr>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-4">
                            <div class="field">
                                <button type="submit" class="btn btn-default">Submit</button>
                            </div>
                        </div
                    </div> 
                </form>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="SignUpModal" tabindex="-1" role="dialog" 
                 aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <button type="button" class="close" 
                                    data-dismiss="modal">
                                <span aria-hidden="true">&times;</span>
                                <span class="sr-only">Close</span>
                            </button>
                            <h4 class="modal-title" id="myModalLabel">
                                Sign Up for RecipeHub
                            </h4>
                        </div>

                        <!-- Modal Body -->
                        <div class="modal-body">

                            <div id="modalAlert"></div>

                            <form id="modalForm" action="Signup" method="post" role="form">
                    
                                <div class="form-group">
                                    <label for="signupFirstName">First Name</label>
                                    <input type="text" class="form-control"
                                           id="signupFirstName" name="signupFirstName"/>
                                </div>
                                    <div class="form-group">
                                    <label for="signupLastName">Last Name</label>
                                    <input type="text" class="form-control"
                                           id="signupLastName" name="signupLastName"/>
                                </div>
                                  <div class="form-group">
                                    <label for="signupEmail">Email Address</label>
                                    <input type="text" class="form-control"
                                           id="signupEmail" name="signupEmail"/>
                                </div>
                                
                                  <div class="form-group">
                                    <label for="signupUsername">Username</label>
                                    <input type="text" class="form-control"
                                           id="signupUsername" name="signupUsername"/>
                                </div>
                                
                                    <div class="form-group">
                                    <label for="newPassword">Password</label>
                                    <input type="password" class="form-control"
                                           id="newPassword" name="newPassword"/>
                                </div>
                                
                                    <div class="form-group">
                                    <label for="confirmPassword">Confirm Password</label>
                                    <input type="password" class="form-control"
                                           id="confirmPassword" name="confirmPassword"/>
                                </div>
                             
               
                                <button id="submitSignUp" type="submit" class="btn btn-default">Submit</button>
                            </form>


                        </div>

                    </div>
                </div>
            </div> 
    </body>
</html>
