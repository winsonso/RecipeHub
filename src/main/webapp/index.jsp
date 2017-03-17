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
    </head>
    <body>
        <%@ include file="includes/navbar.inc" %>
        <div id="form-messages"></div>

        <div class="col-sm-1">

        </div>

        <div class="col-sm-11">

            <div id="login" class="tab-pane fade in active">

                <form id="ajax-login" method="post" action="#">
                    <div class="field">
                        <br>
                        <br>
                        <label for="name">Username:</label>
                        <input type="text" id="name" name="name" required>
                    </div>

                    <br>

                    <div class="field">
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password" required>
                    </div>

                    <div class="field">
                        <br>
                        <hr>
                        <button type="submit" class="btn btn-default">Submit</button>
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

                            <form id="modalForm" action="#" method="post" role="form">
                    
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
                                    <label for="password">New Password</label>
                                    <input type="text" class="form-control"
                                           id="password" name="password"/>
                                </div>
                                
                                    <div class="form-group">
                                    <label for="confirmPassword">Confirm Password</label>
                                    <input type="text" class="form-control"
                                           id="confirmPassword" name="confirmPassword"/>
                                </div>
                             
               
                                <button id="submitSignUp" type="button" class="btn btn-default">Submit</button>
                            </form>


                        </div>

                    </div>
                </div>
            </div>
        <%@ include file="includes/footer.inc" %>   
    </body>
</html>
